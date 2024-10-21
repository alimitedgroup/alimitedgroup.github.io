#Script for updating website with new documents


from os import listdir
from pathlib import Path
import logging

logging.basicConfig(level=logging.DEBUG)

def writeFileWithLinks(filesdirectory,htmldirectory):
    #starting search for internal report and writing link
    internaldir=filesdirectory+"verbali/interni/"
    linkbasestruct='''<a href="'''+internaldir
    outputfile=open(htmldirectory+"documents.html","a")

    if(Path(internaldir).is_dir()==True):
        for f in listdir(internaldir):
            logging.info("writing"+internaldir+f)
            outputfile.write("\t\t\t\t"+linkbasestruct+'''https://alimitedgroup.github.io/documentazione/verbali/interni/output/'''+f+'''">'''+f+'''</a>''')
    
    
    outputfile.write('''\n\t\t</div>
    <div class="documentDiv">
        <h2>Documenti Candidatura</h2>''')
    
    #starting search for application files and writing link
    internaldir=filesdirectory+"candidatura/"
    if(Path(internaldir).is_dir()==True):
        for f in listdir(internaldir):
            logging.info("writing"+internaldir+f)
            outputfile.write("\t\t\t\t"+linkbasestruct+'''https://alimitedgroup.github.io/documentazione/candidatura/output/'''+f+'''">'''+f+'''</a>''')
    
    outputfile.write('''\n\t\t</div>
        <div class="documentDiv">
            <h2>Documenti Esterni</h2>''')
    
    #starting search for external report and writing link
    internaldir=filesdirectory+"verbali/esterni/"
    if(Path(internaldir).is_dir()==True):
        for f in listdir(internaldir):
            logging.info("writing"+internaldir+f)
            outputfile.write("\t\t\t\t"+linkbasestruct+'''https://alimitedgroup.github.io/documentazione/verbali/esterni/output/'''+f+'''">'''+f+'''</a>''')

    outputfile.write('''\n\t\t</div>\n''')
    outputfile.close()




def main():
    #output to file the start of document.html
    outputfile=open("./pages/documents.html","w")
    logging.info("Writing base html structure")

    startSequence='''<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ALimitedGroup</title>
        <meta name="author" content="ALimitedGroup">
        <meta name="description" content="Pagina dei documenti del gruppo ALimitedGroup">
        <meta name="keywords" content="ALimitedGroup,progetto,ingegneria del software,swe,documenti,progetto">
        <link type="text/css" rel="stylesheet" href="https://alimitedgroup.github.io/documentazione/website/screen.css" media="screen">
        <link rel="shortcut icon" href="https://alimitedgroup.github.io/documentazione/website/images/logo.ico">
    </head>
    <body>
    <header>
        <img src="https://alimitedgroup.github.io/documentazione/website/images/logo.png" alt="Immagine del gruppo ALimitedGroup. Il logo è formato da un cerchio con all'interno due scritte: il nome del gruppo e il motto">
    </header>
    <nav>
        <ul>
            <li><a href="https://alimitedgroup.github.io/documentazione/index.html""><span lang="en">Home</span></a></li>
            <li><a href="https://alimitedgroup.github.io/documentazione/website/pages/repository.html"><span lang="en">GitHub</span></a></li>
            <li id="currentPage">Documenti</li>
        </ul>
    </nav>
    <main>
        <div class="documentDiv">
            <h2>Documenti Interni</h2>\n'''

    outputfile.write(startSequence)
    outputfile.close()

    logging.info("Writing files")

    writeFileWithLinks("./PDFs/","./pages/")
    outputfile=open("./pages/documents.html","a")
    logging.info("Writing end of html structure")
    outputfile.write('''\t</main>
    <footer>
        <p><span lang="en">Copyright</span>&copy; <time datetime="2024">2024</time> <span lang="en">ALimitedGroup</span>. Tutti i diritti riservati.</p>
    </footer>
    </body>
</html>''')
    outputfile.close()

if __name__ == "__main__":
    main()