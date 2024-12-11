import yaml
import os

ALPHABET="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
ROOT="./"
EXT=".typ"
#LINK="https://alimitedgroup.github.io/glossario%200.1.0.pdf"

def loadGlossary():
    with open('02-RTB/documenti-interni/glossario.yml','r') as f:
        output = yaml.safe_load(f)
    return output

def substitue(filePath,glossaryYml):
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
    startText=" "

    file=open(filePath,"r", encoding ="utf-8")
    bodyFound=False
    parFound=False
    line=" "

    filtered_glossary = list(filter(lambda el: " " in el, glossary))
    #print(filtered_glossary)

    while line:
        line=file.readline()
        
        #print(f"read:{line}")
        if(bodyFound==False or parFound==False):
            startText+=line
            if "body" in line and "=>" not in line:
                bodyFound=True
            if bodyFound==True and ")" in line:
                parFound=True
        else:
            if(stop == False):
                for sub in filtered_glossary:
                    line = line.replace(sub, f"{sub}#super[g]")
                    if(sub in line):
                        print("found sub in : " +sub)

            if len(line.strip()) > 0 and line.strip()[0] == '=':
                newText+= line
                continue
            for word in line.split():
                #print("read: "+word)
                if word in stopCheckingWords:
                    #print(f"settingStop {word}, {stopCheckingWords}")
                    stop=True
                elif word==")":
                    stop=False
                if stop==False and (word in glossary or word[:-1] in glossary or (word[:-2] in glossary and len(word[:-2]) > 0)) and len(word)>1:
                    if word[:-1] in glossary and word[len(word)-1] in specialChar:
                        newText+= word[:-1] + "#super[g] " + word[-1:]
                        print("found - 1: " +word)
                    elif word[:-2] in glossary and word[len(word)-1] in specialChar and word[len(word)-2] in specialChar:
                        newText+= word[:-2] + "#super[g] " + word[-2:]
                        print("found - 2: " +word)
                    elif word[0]=="_" or word[0]=="*":
                        newText+= word + "#super[g] "
                        print("found - 3: "+word)
                    else:
                        newText+= word + " "
                else:
                    newText+=word+" "
            newText+="\n"

    file.close()

    with open(filePath,"w", encoding ="utf-8") as file:
        file.write(startText+"\n")
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
    find_files(fileList)
    for file in fileList:
        #if "glossario.typ" in file or "/lib/" in file or "/lib\\" in file or "/02-RTB/diari" in file or "/02-RTB\\diari" in file or "/01-candidatura/diari" in file or "/01-candidatura\\diari" in file:
        #    continue
        if  "/02-RTB/documenti-interni" in file or "/02-RTB\\documenti-interni" in file:
            print("sub: "+file)
            substitue(file,loadGlossary())

if __name__ == "__main__":
    main()