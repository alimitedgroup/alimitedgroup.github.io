import yaml
import os

ALPHABET="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
ROOT="./"
EXT=".typ"
LINK="https://alimitedgroup.github.io/glossario%200.1.0.pdf"

def loadGlossary():
    with open('./glossario.yml','r') as f:
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

    stopCheckingWords=["#table(","#tabella-decisioni("]
    stop=False
    newText=""
    startText=" "

    file=open(filePath,"r")
    bodyFound=False
    parFound=False
    line=" "

    while line:
        line=file.readline()
        if(bodyFound==False or parFound==False):
            startText+=line
            if "body" in line and "=>" not in line:
                bodyFound=True
            if bodyFound==True and ")" in line:
                parFound=True
        else:
            for word in line.split():
                if word in stopCheckingWords:
                    stop=True
                elif word==")":
                    stop=False
                if stop==False and word in glossary:
                    print("found: "+word)
                    if word[0]=="_" or word[0]=="*":
                        newText+="#link(\""+LINK+"#"+word[1:-1]+"\")["+word+"] "
                    else:
                        newText+="#link(\""+LINK+"#"+word+"\")["+word+"] "
                else:
                    newText+=word+" "
            newText+="\n"

    file.close()

    with open(filePath,"w") as file:
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
        if file!="./glossario.typ":
            print("sub: "+file)
            substitue(file,loadGlossary())

if __name__ == "__main__":
    main()