TEMPLATE = '<li><a href="{{link}}">{{name}}</a></li>'

import sys
import json
import logging
import subprocess
from os import getenv
from glob import glob
from pathlib import Path
from shutil import rmtree, copytree
from collections import defaultdict

source_files = glob('*/**/*.typ', recursive=True)
options = ['--root', '.', '--ignore-system-fonts', '--font-path', 'assets']

def query(filename, tag):
    command = ["typst", "query", "--one", filename, tag] + options
    logging.debug('Running: ' + ' '.join(command))
    cmd = subprocess.run(command, check=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL).stdout.strip()
    try:
        cmd = json.loads(cmd)['value']
    except:
        logging.error('Failed to deserialize the following `typst query` output: ' + cmd)
        exit(1)

    try:
        if type(cmd) == str:
            return cmd
        elif cmd['func'] == 'sequence' and cmd['children'] == []:
            return ''
        elif cmd['func'] == 'text':
            return cmd['text']
        else:
            logging.error('Failed to deserialize the following `typst query` output: ' + cmd)
            exit(1)
    except:
        logging.error('Failed to deserialize the following `typst query` output: ' + cmd)
        exit(1)

def compile(filename: str, compile_options: list[str]) -> bool:
    command = ["typst", "compile"] + options + [filename] + compile_options
    logging.debug("Running: " + " ".join(command))

    result = subprocess.run(command, capture_output=True, text=True)
    try:
        result.check_returncode()
    except subprocess.CalledProcessError:
        logging.error(f"Compiling {filename} failed with stderr: \n{result.stderr}")
        return False

    return True

def process_template(prefisso: str, data: str, versione: str, disambiguatore: str) -> str:
    title = f'{prefisso} {data} {versione}{disambiguatore}'.strip()
    return TEMPLATE.replace('{{link}}', title + '.pdf').replace('{{name}}', title)

def main():
    logging.basicConfig(level=getenv('LOGLEVEL', 'INFO'))

    # Setup `dist` directory
    rmtree('dist', ignore_errors=True)
    copytree('website', 'dist', symlinks=False)

    success = True
    documenti = defaultdict(list)

    for filename in sorted(source_files):
        filename = filename.strip()
        if filename == "" or len(filename.split('/')) == 1:
            continue
        logging.info(f"Compiling {filename}…")

        categorie = '/'.join(filename.split('/')[:-1])

        prefisso = query(filename, '<prefisso>')
        data = query(filename, '<data>')
        versione = query(filename, '<versione>')
        disambiguatore = ' ' + query(filename, '<disambiguatore>')
        output = f'dist/{prefisso} {data} {versione}{disambiguatore}'.strip() + '.pdf'
        status = compile(filename, [output])

        documenti[categorie].append((prefisso, data, versione, disambiguatore))

        if not status:
            success = False

    if not success:
        sys.exit(1)

    html = Path('dist/index.html').read_text()
    for pattern, docs in documenti.items():
        html = html.replace('{{' + pattern + '}}', '\n'.join(
            process_template(*file) for file in sorted(docs)
        ))
    Path('dist/index.html').write_text(html)

if __name__ == "__main__":
    main()