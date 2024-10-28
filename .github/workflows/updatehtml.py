# Script for updating website with new documents

TEMPLATE = '<li><a href="{{link}}">{{name}}</a></li>'

from glob import glob
from pathlib import Path
from shutil import rmtree, copyfile, copytree

# Setup `dist` directory
rmtree('dist', ignore_errors=True)
copytree('website', 'dist', symlinks=False)

verbali_interni = []
verbali_esterni = []
diari_di_bordo = []
documenti_candidatura = []
# Iterate over all PDF files, copy them into `dist`,
# and save the paths, to later insert them into the html
for file in glob('**/*.pdf', recursive=True):
    if 'verbali/interni' in file:
        verbali_interni.append(file)
        Path('dist/verbali/interni').mkdir(parents=True, exist_ok=True)
        copyfile(file, 'dist/' + file)
    elif 'verbali/esterni' in file:
        verbali_esterni.append(file)
        Path('dist/verbali/esterni').mkdir(parents=True, exist_ok=True)
        copyfile(file, 'dist/' + file)
    elif 'diaridibordo' in file:
        diari_di_bordo.append(file)
        Path('dist/diaridibordo').mkdir(parents=True, exist_ok=True)
        copyfile(file, 'dist/' + file)
    elif 'candidatura' in file:
        documenti_candidatura.append(file)
        Path('dist/candidatura').mkdir(parents=True, exist_ok=True)
        copyfile(file, 'dist/' + file)
    else:
        print('ERROR: unhandled file ' + file)
        exit(1)

# update the html file

def process_template(path: str) -> str:
    typ = path.removesuffix('.pdf') + '.typ'
    title = Path(typ).read_text().splitlines()[0].strip('/').strip()
    return TEMPLATE.replace('{{link}}', path).replace('{{name}}', title)

html = Path('dist/index.html').read_text()
html = html.replace('{{documenti_candidatura}}', '\n'.join(
    process_template(file) for file in sorted(documenti_candidatura)
))
html = html.replace('{{verbali_interni}}', '\n'.join(
    process_template(file) for file in sorted(verbali_interni)
))
html = html.replace('{{verbali_esterni}}', '\n'.join(
    process_template(file) for file in sorted(verbali_esterni)
))
html = html.replace('{{diari_di_bordo}}', '\n'.join(
    process_template(file) for file in sorted(diari_di_bordo)
))
Path('dist/index.html').write_text(html)
