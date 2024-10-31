// LC 31-10-2024

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
Egregio Prof. Cardin, \ \
con la presente il gruppo _ALimitedGroup_ desidera comunicarVi formalmente la propria candidatura per la realizzazione del capitolato con titolo: \
#align(center, text(12pt)[*Sistema di Gestione di un Magazzino Distribuito*])
proposto dall'azienda #text(font: "Futura", weight: 500)[M31], capitolato di progetto *C6*. \ \
Come specificato nel documento di #link("https://alimitedgroup.github.io/Dichiarazione%20impegni%200.0.3.pdf")[dichiarazione degli impegni]#footnote[https://alimitedgroup.github.io/Dichiarazione%20impegni%200.0.3.pdf] _ALimitedGroup_ ha preventivato un costo totale per la realizzazione del progetto di *Euro 12˙930* ed ha fissato il termine ultimo di consegna al *31 Marzo 2025*. \ \
Si riassumono inoltre i punti di forza che hanno portato il gruppo alla scelta del capitolato:
- *Interesse immediato* per il capitolato, favorito dalla sua *differenza tematica* rispetto agli altri progetti di Ingegneria del Software proposti nell'anno accademico.
- *Valutazione positiva dell'incontro con l'azienda* #text(font: "Futura", weight: 500)[M31], che ha fornito chiarimenti sui dubbi sorti e ha confermato l’interesse del gruppo.
- Apprezzamento per l'*utilizzo di linguaggi di programmazione moderni*, come _Go_, e di *tecnologie avanzate* e formative come _Kubernetes_ e _Google Cloud Platform_.
- Forte *disponibilità dell'azienda* #text(font: "Futura", weight: 500)[M31] a fornire supporto e a collaborare con il gruppo.
Per ulteriori dettagli consigliamo di visionare il documento dedicato alla #link("https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%200.1.0.pdf")[valutazione dei capitolati] #footnote[https://alimitedgroup.github.io/Valutazione%20dei%20capitolati%200.1.0.pdf]. \

#colbreak()
Tutta la documentazione redatta e prodotta da _ALimitedGroup_ viene pubblicata nel #link("https://alimitedgroup.github.io/")[*sito ufficiale*]#footnote[https://alimitedgroup.github.io/] e prodotta a partire dai documenti nel #link("https://github.com/alimitedgroup/alimitedgroup.github.io")[*repository*]#footnote[https://github.com/alimitedgroup/alimitedgroup.github.io] dedicato alla documentazione.\
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

Cordiali Saluti, \
_ALimitedGroup_