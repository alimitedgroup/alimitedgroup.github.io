# Documentazione del gruppo ALimitedGroup

Questa repository contiene la documentazione dell'ottavo gruppo del primo lotto
dell'A.A. 2024/2025, per il corso di Ingegneria del Software dell'Università di Padova.

## Setup

Si consiglia di utilizzare Visual Studio Code come editor,
installando l'estensione **Tinymist Typst**. 
È presente un tasto "preview" grazie a questa estensione,
ma qualora si volesse compilare un file da terminale,
il comando da eseguire (dalla cartella radice della repository) è:

```
typst compile --root . path/to/document.typ
```

## Sito

Questa repository include un sito web. Per avviarlo da locale, eseguire:

- `python3 .github/workflows/compile.py` per compilare i PDF
- `python3 .github/workflows/website.py` per generare il sito dentro alla cartella `dist/`
- `cd dist && python3 -m http.server` per avviare un server HTTP

Dopo questi comandi, il sito sarà disponibile su http://localhost:8000