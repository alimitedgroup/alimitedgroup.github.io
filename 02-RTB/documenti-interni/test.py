import yaml
import os

ALPHABET="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
ROOT="./"
EXT=".typ"
LINK="https://alimitedgroup.github.io/glossario%200.1.0.pdf"

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

    stopCheckingWords=["#table(","#tabella-decisioni("]
    stop=False
    newText=""
    startText=" "

    file=open(filePath,"r", encoding ="utf-8")
    bodyFound=False
    parFound=False
    line=" "

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
            for word in line.split():
                print("read: "+word)
                if word in stopCheckingWords:
                    print(f"settingStop {word}, {stopCheckingWords}")
                    stop=True
                elif word==")":
                    stop=False
                #if stop==False and word in glossary:
                if stop==False and (word in glossary or word[:-2] in glossary or word[:-1] in glossary):
                    print("found: "+word)
                    if word[:-2] == "" or word[:-1] == "":
                        print("first if")
                        newText+= word + " "
                        continue
                    elif word[:-1] in glossary:
                        newText+= word[:-1] + "#super[g] " + word[-1:]
                    elif word[:-2] in glossary:
                        newText+= word[:-2] + "#super[g] " + word[-2:]
                    elif word[0]=="_" or word[0]=="*":
                        #newText+="#link(\""+LINK+"#"+word[1:-1]+"\")["+word+"] "
                        newText+= word + "#super[g] "
                    else:
                        #newText+="#link(\""+LINK+"#"+word+"\")["+word+"] "
                        newText+= word + "#super[g] "
                #elif stop == False and word[:-2] in glossary and word not in "":
                #    print("found n.2: " +word[:-2])
                #    newText+= word + "#super[g] "
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
        if "glossario.typ" in file or "/lib/" in file or "/lib\\" in file or "/02-RTB/diari" in file or "/02-RTB\\diari" in file or "/01-candidatura/diari" in file or "/01-candidatura\\diari" in file:
            continue
        print("sub: "+file)
        substitue(file,loadGlossary())

if __name__ == "__main__":
    main()