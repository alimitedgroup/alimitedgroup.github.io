TEMPLATE = '<li><a href="{{link}}" target="_blank">{{name}}</a></li>'
LETTER_TEMPLATE = '</dl><h2 id="{{letter}}">{{letter}}</h2><dl>'
WORD_TEMPLATE = '<dt>{{word}}</dt><dd>{{definition}}</dd>'

import os
import re
import sys
import yaml
import json
import logging
import subprocess
from os import getenv
from glob import glob
from pathlib import Path
from shutil import rmtree, copytree, copyfile
from collections import defaultdict

os.rename("03-PB/documenti-interni/glossario.typ","03-PB/documenti-interni/glossаrio.typ")
source_files = glob("*/**/*.typ", recursive=True) + ["docs.typ"]
options = ["--root", ".", "--ignore-system-fonts", "--font-path", "assets"]

# Functions for handling "typst query" output


def handle(outp):
    if type(outp) == str: return outp
    match outp["func"]:
        case "metadata":
            return handle_metadata(outp)
        case "sequence":
            return handle_sequence(outp)
        case "text":
            return handle_text(outp)
        case "space":
            return handle_space(outp)
        case _:
            print(f'unhandled function {outp["func"]}')


def handle_sequence(outp):
    res = ""
    for v in outp["children"]:
        res += handle(v)
    return res


def handle_text(outp):
    return outp["text"]


def handle_space(outp):
    return " "


def handle_metadata(outp):
    return handle(outp["value"])


# Functions for running typst


def query(filename, tag):
    command = ["typst", "query", "--one", filename, tag] + options
    logging.debug("Running: " + " ".join(command))
    try:
        meta = subprocess.run(
            command,
            check=True,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        ).stdout.strip()
    except subprocess.CalledProcessError as e:
        logging.error(
            f'Command {" ".join(command)} failed with output: {e.stderr.strip()}'
        )
        exit(1)
    return handle(json.loads(meta))


def compile(filename: str, compile_options: list[str]) -> bool:
    command = ["typst", "compile"] + options + [filename] + compile_options
    logging.debug("Running: " + " ".join(command))

    result = subprocess.run(command, capture_output=True, text=True)
    try:
        result.check_returncode()
    except subprocess.CalledProcessError as e:
        if b"error: expected exactly one element, found 0" in e.stderr:
            logging.error(
                f"Compiling {filename} failed because no title was found\nTry using #documento for your document, or manually adding a `#metadata[title] <titolo>`"
            )
        else:
            logging.error(f"Compiling {filename} failed with stderr: \n{result.stderr}")
        return False

    return True


# Functions for writing the html


def loadGlossary() -> dict:
    with open('03-PB/documenti-interni/glossario.yml','r') as f:
        output = yaml.safe_load(f)
    return output


def process_template(titolo: str) -> str:
    titolo = titolo.strip()
    nomefile = titolo + ".pdf"
    if 'Glossаrio' in nomefile: 
        titolo = titolo.replace('Glossаrio','Glossario')
        nomefile = 'Glossаrio.pdf'
    elif 'Glossario' in nomefile: nomefile = 'Glossario.pdf'

    if "PQ " in titolo:
        titolo = titolo.replace('PQ ', 'Piano di Qualifica ')
    elif "PP " in titolo:
        titolo = titolo.replace('PP ', 'Piano di Progetto ')
    elif "AR " in titolo:
        titolo = titolo.replace('AR ', 'Analisi dei Requisiti ')
    elif "NP " in titolo:
        titolo = titolo.replace('NP ', 'Norme di Progetto ')
    elif "MU " in titolo:
        titolo = titolo.replace('MU ', 'Manuale Utente ')
    elif "ST " in titolo:
        titolo = titolo.replace('ST ', 'Specifica Tecnica ')

    return TEMPLATE.replace("{{link}}", nomefile).replace("{{name}}", titolo)


def main():
    logging.basicConfig(level=getenv("LOGLEVEL", "INFO"))
    # Setup `dist` directory
    rmtree("dist", ignore_errors=True)
    copytree("website", "dist", symlinks=False)

    # Handle glossary

    html = Path("dist/glossario.html").read_text()
    for start_letter, entries in sorted(loadGlossary().items()):
        if len(entries) == 1 and '' in entries: continue
        html = html.replace('{{content}}', LETTER_TEMPLATE.replace('{{letter}}', start_letter) + '{{content}}')
        for word, definition in entries.items():
            html = html.replace('{{content}}', WORD_TEMPLATE.replace('{{word}}', word).replace('{{definition}}', definition) + '{{content}}')
    html = html.replace('{{content}}', '')
    Path("dist/glossario.html").write_text(html)

    # Handle index page

    success = True
    documenti = defaultdict(list)

    for filename in sorted(source_files, reverse=True):
        if ".pdf" in filename or "lib/" in filename or filename.strip() == "":
            logging.info(f"Skipping {filename}…")
            continue

        filename = filename.strip()
        logging.info(f"Compiling {filename}…")
        filename_pdf = filename.removesuffix(".typ") + ".pdf"

        categorie = "/".join(filename.split("/")[:-1])

        titolo = query(filename.replace(".pdf", ".typ"), "<titolo>")
        # TODO: rimuovere la riga seguente
        if 'Glossаrio' in titolo:
            output ="dist/Glossаrio.pdf"
        elif 'Glossario' not in titolo:
            output = f"dist/{titolo}".strip() + ".pdf"
        # TODO: rimuovere le due righe seguenti   
        else:
            output = "dist/Glossario.pdf"
        
        if ".typ" in filename and Path(filename_pdf).exists():
            copyfile(filename_pdf, output)
            status = True
        else:
            status = compile(filename, [output])

        documenti[categorie].append(titolo)

        if not status:
            success = False

    if not success:
        sys.exit(1)

    html = Path("dist/index.html").read_text()
    for pattern, docs in documenti.items():
        html = re.sub(
            "{{" + pattern + "}}",
            "\n".join(process_template(file) for file in docs),
            html,
            flags=re.IGNORECASE,
        )
    Path("dist/index.html").write_text(html)


if __name__ == "__main__":
    main()
