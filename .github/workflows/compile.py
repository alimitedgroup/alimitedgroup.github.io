TEMPLATE = '<li><a href="{{link}}" target="_blank">{{name}}</a></li>'

import sys
import json
import logging
import subprocess
from os import getenv
from glob import glob
from pathlib import Path
from shutil import rmtree, copytree, copyfile
from collections import defaultdict

source_files = glob('*/**/*.typ', recursive=True)
options = ['--root', '.', '--ignore-system-fonts', '--font-path', 'assets']

# Functions for handling "typst query" output

def handle(outp):
    match outp['func']:
        case 'metadata': return handle_metadata(outp)
        case 'sequence': return handle_sequence(outp)
        case 'text': return handle_text(outp)
        case 'space': return handle_space(outp)
        case _: print(f'unhandled function {outp["func"]}')

def handle_sequence(outp):
    res = ''
    for v in outp['children']:
        res += handle(v)
    return res

def handle_text(outp):
    return outp['text']

def handle_space(outp):
    return ' '

def handle_metadata(outp):
    return handle(outp['value'])

# Functions for running typst

def query(filename, tag):
    command = ["typst", "query", "--one", filename, tag] + options
    logging.debug('Running: ' + ' '.join(command))
    try:
        meta = subprocess.run(command, check=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.strip()
    except subprocess.CalledProcessError as e:
        logging.error(f'Command {" ".join(command)} failed with output: {e.stderr.strip()}')
        exit(1)
    return handle(json.loads(meta))

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

def process_template(titolo: str) -> str:
    titolo = titolo.strip()
    return TEMPLATE.replace('{{link}}', titolo + '.pdf').replace('{{name}}', titolo)

def main():
    logging.basicConfig(level=getenv('LOGLEVEL', 'INFO'))

    # Setup `dist` directory
    rmtree('dist', ignore_errors=True)
    copytree('website', 'dist', symlinks=False)

    success = True
    documenti = defaultdict(list)

    for filename in sorted(source_files):
        if '.pdf' in filename:
            continue

        filename = filename.strip()
        if filename == "" or len(filename.split('/')) == 1:
            continue
        logging.info(f"Compiling {filename}…")
        filename_pdf = filename.removesuffix('.typ') + '.pdf'

        categorie = '/'.join(filename.split('/')[:-1])

        titolo = query(filename.replace('.pdf', '.typ'), '<titolo>')
        output = f'dist/{titolo}'.strip() + '.pdf'

        if '.typ' in filename and Path(filename_pdf).exists():
            copyfile(filename_pdf, output)
            status = True
        else:
            status = compile(filename, [output])

        documenti[categorie].append(titolo)

        if not status:
            success = False

    if not success:
        sys.exit(1)

    html = Path('dist/index.html').read_text()
    for pattern, docs in documenti.items():
        html = html.replace('{{' + pattern + '}}', '\n'.join(
            process_template(file) for file in sorted(docs)
        ))
    Path('dist/index.html').write_text(html)

if __name__ == "__main__":
    main()