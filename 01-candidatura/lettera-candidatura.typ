// LC 29-10-2024

#import "@preview/fireside:1.0.0": *

#metadata[Lettera di candidatura] <titolo>

#set page(
  numbering: "1",
  footer: [
    #set align(center)
    #line(length: 100%)
    #context [
      Pagina #counter(page).display(page.numbering) di #counter(page).final().first()
    ]
  ],
)

#show: fireside.with(
  title: [Candidatura \ capitolato C6],
  from-details: [
    ALimitedGroup, \
    Gruppo 8 \
    #link("mailto:alimitedgroup@gmail.com") \
    #link("https://alimitedgroup.github.io/")[#image("../assets/altd.png", height: 50pt)]
  ],
  to-details: [
    Alla cortese attenzione di \
    Prof. Vardanega Tullio, \
    Prof. Cardin Riccardo, \
    #link("https://www.unipd.it/")[Università degli Studi di Padova], \
    Dipartimento di Matematica, \
    Via Trieste, 63 \
    35121, Padova
  ],
)
#show link: underline
Egregio Prof. Vardanega,\
Egregio Prof. Cardin, \
con la presente il gruppo _ALimitedGroup_ desidera comunicarVi formalmente la propria candidatura per la realizzazione del prodotto commissionato, intitolato: \
#align(center, text(12pt)[*Sistema di Gestione di un Magazzino Distribuito*])
proposto dall'azienda #text(font: "Futura", weight: 500)[M31], capitolato di progetto *C6*. \
Come specificato nel documento di #link("https://alimitedgroup.github.io/Dichiarazione%20impegni%200.0.2.pdf")[dichiarazione degli impegni], _ALimitedGroup_ ha preventivato un costo totale per la realizzazione del progetto di *Euro 12˙930* ed ha fissato la data ultima di consegna al *31 Marzo 2025*. \
Si riassumono inoltre i punti di forza che hanno portato il gruppo alla scelta del capitolato:
- #lorem(4)
- #lorem(3)
- #lorem(5)
Per ulteriori dettagli consigliamo di visionare il documento dedicato alla #link("https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%200.0.5.pdf")[valutazione dei capitolati]. \

Tutta la documentazione redatta e prodotta da _ALimitedGroup_ viene pubblicata nel #link("https://alimitedgroup.github.io/")[*sito ufficiale*] .\
#colbreak()
L'intero gruppo è a disposizione per qualsiasi chiarimento; si riportano i nominativi di tutti i membri di _ALimitedGroup_: \

#table(
  columns: (1fr, 1fr, 1fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Cognome*],
    [*Nome*],
    [*Matricola*],
  ),

  [Artusi], [Emanuele], [2068223],
  [Esposito], [Samuele], [2068233],
  [Ferraro], [Sara], [2076442],
  [Libralato], [Loris], [2068237],
  [Piccoli], [Marco], [2045039],
  [Schievano], [Matteo], [2075537],
  [Stefani], [Lorenzo], [2079249],
)

Tutto il gruppo _ALimitedGroup_ desidera augurarVi un buon prosieguo di giornata.\
Cordiali Saluti, \
_ALimitedGroup_