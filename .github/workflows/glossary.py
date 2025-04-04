import os
import sys
import yaml
import logging

ALPHABET="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
ROOT="./"
EXT=".typ"
EXT2=".md"
#LINK="https://alimitedgroup.github.io/glossario%200.1.0.pdf"

def loadGlossary():
    with open('03-PB/documenti-interni/glossario.yml','r') as f:
        output = yaml.safe_load(f)
    return output

def substitute_line(filename, linenum, line, filtered_glossary):
    for sub in filtered_glossary:
        origLine = line
        line = line.replace(sub, f"{sub}#super[G]")
        line = line.replace('#super[G]#super[G]', f'#super[G]')
        if line != origLine:
            logging.error(f'Found un-tagged word at {filename}:{linenum} with substitute line')

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
    stopCheckingWords=["#table(","#tabella-decisioni(", "#use-case(", "#use-case-diagram(" "#let", "#figure(", "table(", "=", "#metric(", "#show", "#impegni(", "<!--typst-begin-exclude-->", "<!--raw-typst"]
    specialChar = [chr(92), "(", ")", "[", "]", ".", ",", ";", ":", "_", "*", "`"]
    stop=False
    newText=""
    startText=""

    file=open(filePath,"r", encoding ="utf-8")
    bodyFound=False
    parFound=False
    line=file.readline()
    linenum = 0
    #logging.getLogger().setLevel(logging.INFO)
    filtered_glossary = list(filter(lambda el: " " in el, glossary))
    #print(filtered_glossary)

    while line:
        linenum += 1
        if(bodyFound==False or parFound==False) and (".md" not in filePath):
            startText+=line
            if "body" in line and "=>" not in line:
                bodyFound=True
            if bodyFound==True and ")" in line:
                parFound=True
        elif (len(line.strip()) > 0 and line.lstrip()[0] == '#') and ("03-PB/manuale-utente" in filePath):
            newText += line 
            line=file.readline()
            #logging.info(f'Found # as the start of the line at {filePath}:{linenum}')
            #print("Sono nell'IF del #")
            continue
        else:
            #print("Sono nell'IF del for di ricerca delle parole")
            if(stop == False and line[0] not in stopCheckingWords):
                line = substitute_line(filePath, linenum, line, filtered_glossary)

            if len(line.strip()) > 0 and line.strip()[0] == '=':
                newText += line
                line=file.readline()
                continue
            if len(line.lstrip()) != 0: 
                newText += line[:len(line) - len(line.lstrip())]
            for i, word in enumerate(line.split()):
                #print("read: "+word+ "  and stop: "+str(stop))
                if word in stopCheckingWords:
                    #print(f"settingStop {word}")
                    stop=True
                elif ("03-PB/manuale-utente" in filePath or "03-PB/manuale-utente" in filePath) and (word == "<!--typst-end-exclude-->" or word == "-->"):
                    stop=False
                    #print(word)
                elif (word == ")") and ("03-PB/manuale-utente" not in filePath or "03-PB/manuale-utente" not in filePath):
                    stop=False
                    #print(word)
                if stop==False and ((word in glossary) or (word[:-1] in glossary) or (word[:-2] in glossary and len(word[:-2]) > 0) 
                                    or (word[1:-1] in glossary and len(word[1:-1]) > 1) or (word[2:-2] in glossary and len(word[2:-2]) > 2) or (word[2:-3] in glossary and len(word[2:-3]) > 2)) and len(word)>1:
                    #print("SONO DENTRO L'IF per: "+word+ "  del file " + str(file))
                    #print("Lo stop vale: " +str(stop))
                    if word[len(word)-1] == "," or word[len(word)-1] == ";":
                        if(word[:-1] == "sopra"):
                            newText += word
                        elif(word[:-1] in glossary):
                            newText += word[:-1] + "#super[G]" + word[-1:] + " "
                            logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 1')
                        elif(word[len(word)-2] == ")"):
                            if(word[0] == "(" and word[1:-2] in glossary):
                                newText += word[:-1] + "#super[G]" + word[-2:] + " "
                                logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 2')
                            elif(word[0] == "(" and word[len(word)-3] in specialChar):
                                if(word[1] in specialChar):
                                    newText += word[:-3] + "#super[G]" + word[-3:] + " "
                                    logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 3')
                        elif(word[len(word)-2] in specialChar):
                            if(word[0] in specialChar):
                                newText += word[:-2] + "#super[G]" + word[-2:] + " "
                                logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 4')
                            elif word[:-2] in glossary:
                                newText += word[:-2] + "#super[G]" + word[-2:] + " "
                                logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 5')
                    elif word[len(word)-1] == ")":
                        if(word[0] == "(" and word[1:-1] in glossary):
                            newText += word[:-1] + "#super[G]" + word[-1:] + " "
                            logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 6')
                        elif(word[len(word)-2] in specialChar and word[1] in specialChar and word[0] == "("):
                            newText += word[:-2] + "#super[G]" + word[-2:] + " "
                            logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 7')
                    elif word[len(word)-1] in specialChar:
                        if(word[len(word)-1] == "sopra"):
                            newText += word
                        if(word[len(word)-2] in specialChar):
                            if(word[len(word)-3] in specialChar):
                                newText += word[:-3] + "#super[G]" + word[-3:] + " "
                                logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 8')
                            else:
                                newText += word[:-2] + "#super[G]" + word[-2:] + " "
                                logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 9')
                        elif(word[0] in specialChar and word[1:-1] in glossary):
                            newText += word[:-1] + "#super[G]" + word[-1:] + " "
                            logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 10')
                        else:
                            newText += word + "#super[G] "
                            logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 11')
                    elif word in glossary:
                        newText += word + "#super[G] "
                        logging.error(f'Found un-tagged word at {filePath}:{linenum} with if 12')
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
            if (full_path.endswith(EXT) or (full_path.endswith(EXT2) and 'manuale-utente' in full_path)) and 'slide' not in full_path:
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
            if "docs.typ" in file or "README.md" in file or "glossario.typ" in file or "/lib/" in file or "/lib\\" in file or "/03-PB/diari" in file or "/03-PB\\diari" in file or "/02-RTB/diari" in file or "/02-RTB\\diari" in file or "/01-candidatura/diari" in file or "/01-candidatura\\diari" in file:
                continue
            substitute(file, loadGlossary())

if __name__ == "__main__":
    main()