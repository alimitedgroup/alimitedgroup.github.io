import os
import sys
import yaml
import logging

ALPHABET="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
ROOT="./"
EXT=".typ"
#LINK="https://alimitedgroup.github.io/glossario%200.1.0.pdf"

def loadGlossary():
    with open('02-RTB/documenti-interni/glossario.yml','r') as f:
        output = yaml.safe_load(f)
    return output

def substitute_line(filename, linenum, line, filtered_glossary):
    for sub in filtered_glossary:
        origLine = line
        line = line.replace(sub, f"{sub}#super[G]")
        line = line.replace('#super[G]#super[G]', f'#super[G]')
        if line != origLine:
            logging.error(f'Found un-tagged word at {filename}:{linenum}')

    return line

def substitute(filePath,glossaryYml):
    glossary = []
    doNotLowerWords=["DI"]

    for char in ALPHABET:
        for k in glossaryYml[char].keys():
            glossary.append(k)
            glossary.append("_"+k+"_")
            glossary.append("*"+k+"*")
            if k not in doNotLowerWords:
                glossary.append(k.lower())
                glossary.append("_"+k.lower()+"_")
                glossary.append("*"+k.lower()+"*")

    #print(glossary)
    stopCheckingWords=["#table(","#tabella-decisioni(", "#use-case(", "#let", "#figure(", "table("]
    specialChar = [chr(92), "(", ")", "[", "]", ".", ",", ";", ":"]
    stop=False
    newText=""
    startText=""

    file=open(filePath,"r", encoding ="utf-8")
    bodyFound=False
    parFound=False
    line=file.readline()
    linenum = 0

    filtered_glossary = list(filter(lambda el: " " in el, glossary))
    #print(filtered_glossary)

    while line:
        linenum += 1
        #print(f"read:{line}")
        if(bodyFound==False or parFound==False):
            startText+=line
            if "body" in line and "=>" not in line:
                bodyFound=True
            if bodyFound==True and ")" in line:
                parFound=True
        else:
            if(stop == False):
                line = substitute_line(filePath, linenum, line, filtered_glossary)

            if len(line.strip()) > 0 and line.strip()[0] == '=':
                newText += line
                line=file.readline()
                continue
            if len(line.lstrip()) != 0: newText += line[:len(line) - len(line.lstrip())]
            for i, word in enumerate(line.split()):
                #print("read: "+word)
                if word in stopCheckingWords:
                    #print(f"settingStop {word}, {stopCheckingWords}")
                    stop=True
                elif word==")":
                    stop=False
                if stop==False and (word in glossary or word[:-1] in glossary or (word[:-2] in glossary and len(word[:-2]) > 0) or (word[1:-1] in glossary and len(word[1:-1]) > 0)) and len(word)>1:
                    if word[:-1] in glossary and word[len(word)-1] in specialChar:
                        newText += word[:-1] + "#super[G] " + word[-1:]
                        logging.error(f'Found un-tagged word at {filePath}:{linenum}')
                    elif word[:-2] in glossary and word[len(word)-1] in specialChar and word[len(word)-2] in specialChar:
                        newText += word[:-2] + "#super[G] " + word[-2:]
                        logging.error(f'Found un-tagged word at {filePath}:{linenum}')
                    elif word[0]=="_" or word[0]=="*":
                        newText += word + "#super[G] "
                        logging.error(f'Found un-tagged word at {filePath}:{linenum}')
                    elif word[0] == "(" and word[len(word)-1] == ")":
                        newText += word[:-1] + "#super[G] " + word[-1:]
                        logging.error(f'Found un-tagged word at {filePath}:{linenum}')
                    else:
                        newText += word
                        if i != len(line.split()) - 1: newText += ' '
                else:
                    newText += word
                    if i != len(line.split()) - 1: newText += ' '

            newText+="\n"
        line=file.readline()

    file.close()

    with open(filePath,"w", encoding ="utf-8") as file:
        file.write(startText)
        file.write(newText)

def find_files(fileList,path=ROOT):
    for entry in os.listdir(path):
        full_path = os.path.join(path, entry)
        if os.path.isdir(full_path):
            find_files(fileList,full_path)
        else:
            if full_path.endswith(EXT):
                fileList.append(full_path)

def main():
    fileList = []

    # If any filename was passed on the command line, only proces those files
    if len(sys.argv) > 1:
        for file in sys.argv[1:]:
            substitute(file, loadGlossary())

    else:
        find_files(fileList)
        for file in fileList:
            if "docs.typ" in file or "glossario.typ" in file or "/lib/" in file or "/lib\\" in file or "/02-RTB/diari" in file or "/02-RTB\\diari" in file or "/01-candidatura/diari" in file or "/01-candidatura\\diari" in file:
                continue
            substitute(file,loadGlossary())

if __name__ == "__main__":
    main()