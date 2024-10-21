# Script for updating website with new documents

TEMPLATE = '<li><a href="{{link}}">{{name}}</a></li>'

from glob import glob
from pathlib import Path
from shutil import rmtree, copyfile, copytree

# Setup `dist` directory
rmtree('dist', ignore_errors=True)
copytree('website', 'dist', symlinks=False)

verbali_interni = []

# Iterate over all PDF files, copy them into `dist`,
# and save the paths, to later insert them into the html
for file in glob('**/*.pdf', recursive=True):
    if 'verbali/interni' in file:
        verbali_interni.append(file)
        Path('dist/verbali/interni').mkdir(parents=True, exist_ok=True)
        copyfile(file, 'dist/' + file)
    else:
        print('ERROR: unhandled file ' + file)
        exit(1)

# update the html file
html = Path('dist/documents.html').read_text()
html = html.replace('{{verbali_interni}}', '\n'.join(
    TEMPLATE.replace('{{link}}', file).replace('{{name}}', file.split('.')[-2].split('/')[-1])
    for file in verbali_interni
))
Path('dist/documents.html').write_text(html)