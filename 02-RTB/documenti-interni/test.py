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
    stopCheckingWords=["#table(","#tabella-decisioni(", "#use-case(", "#let"]
    stop=False
    newText=""
    startText=" "

    file=open(filePath,"r", encoding ="utf-8")
    chapter = False
    bodyFound=False
    parFound=False
    line=" "

    while line:
        line=file.readline()
        chapter = False
        #print(f"read:{line}")
        if(bodyFound==False or parFound==False):
            startText+=line
            if "body" in line and "=>" not in line:
                bodyFound=True
            if bodyFound==True and ")" in line:
                parFound=True
        else:
            for word in line.split():
                #print("read: "+word)
                if word in stopCheckingWords:
                    #print(f"settingStop {word}, {stopCheckingWords}")
                    stop=True
                elif word[0] == "=":
                    #print(f"settingStop {word}")
                    chapter = True
                elif word==")":
                    stop=False
                #if stop==False and word in glossary:
                if stop==False and chapter == False and (word in glossary or word[:-1] in glossary):
                    if word[0]=="_" or word[0]=="*":
                        newText+= word + "#super[g] "
                        print("found: "+word)
                    else:
                        newText+= word + " "
                else:
                    newText+=word+" "
                    stop = False
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