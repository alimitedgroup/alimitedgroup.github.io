#import "@preview/fireside:1.0.0": *
#import "../lib/common.typ": *

#metadata[Lettera di presentazione PB] <titolo>

#show: fireside.with(
  title: [Presentazione \ PB],
  from-details: [
    ALimitedGroup, \
    Gruppo 8 \
    #link("mailto:alimitedgroup@gmail.com") \
    #link("https://alimitedgroup.github.io/")[#image("../assets/altd.png", height: 50pt)]
  ],
  to-details: [
    #v(-15pt)
    Alla cortese attenzione di \
    #prof(p.tullio), \
    #prof(p.cardin), \
    Dipartimento di Matematica, \
    Via Trieste, 63 \
    35121, Padova
  ],
)
#show link: underline

#v(-20pt)

Egregio Prof. Vardanega,\
Egregio Prof. Cardin,

#v(10pt)

con la presente il gruppo _ALimitedGroup_ desidera comunicarVi formalmente la
propria intenzione di sottoporsi alla revisione della _Product Baseline_ in data *[DEFINIRE]*, riguardo il lavoro svolto nell'ambito del progetto proposto dall'azienda #M31 nel capitolato *C6*, con titolo:

#align(center, text(12pt)[*Sistema di Gestione di un Magazzino Distribuito*])

Nel periodo trascorso è stato sviluppato il _Minimum Viable Product_ accettato formalmente dall'azienda come descritto nella *Sezione 2.2* del #link("https://alimitedgroup.github.io/VE%2004-04-2025%20v1.0.0.pdf")[*Verbale Esterno del 4 Aprile 2025*]. È possibile visionare il codice sorgente nel _repo_ dedicato, raggiungibile al seguente indirizzo: \
https://github.com/alimitedgroup/MVP

Con l'occasione, Vi segnaliamo che la documentazione prodotta può sempre essere trovata alla sezione _PB_ della nostra _repo_ al seguente link:
https://alimitedgroup.github.io

All'interno si possono trovare i seguenti documenti:

#table(
  columns: (50%, 50%),
  stroke: none,
  [
    - Lettera di presentazione (questo documento);
    - #link("https://alimitedgroup.github.io/ST%20v1.0.0.pdf")[Specifica Tecnica v1.0.0];
    - #link("https://alimitedgroup.github.io/PQ%20v2.0.0.pdf")[Piano di Qualifica v2.0.0];
    - #link("https://alimitedgroup.github.io/PP%20v2.0.0.pdf")[Piano di Progetto v2.0.0];
    - #link("https://alimitedgroup.github.io/MU%20v1.0.0.pdf")[Manuale Utente v1.0.0] (disponibile anche in versione digitale nel #link("https://alimitedgroup.github.io/docs/")[sito del gruppo]);
    - #link("https://alimitedgroup.github.io/AR%20v2.0.0.pdf")[Analisi dei Requisiti v2.0.0];
    - #link("https://alimitedgroup.github.io/NP%20v2.0.0.pdf")[Norme di Progetto v2.0.0];
    - #link("https://alimitedgroup.github.io/Gloss%D0%B0rio.pdf")[Glossario v1.0.0] disponibile anche in versione digitale nel #link("https://alimitedgroup.github.io/glossario.html")[sito del gruppo]);
  ],
  [
    - #link("https://alimitedgroup.github.io/VE%2004-04-2025%20v1.0.0.pdf")[Verbale esterno del 04/04/2025 v1.0.0]
    - #link("https://alimitedgroup.github.io/VE%2025-03-2025%20v1.0.0.pdf")[Verbale esterno del 25/03/2025 v1.0.0];
    - #link("https://alimitedgroup.github.io/VE%2028-02-2025%20v1.0.0.pdf")[Verbale esterno del 28/02/2025 v1.0.0];
    - #link("https://alimitedgroup.github.io/VI%2031-03-2025%20v1.0.0.pdf")[Verbale interno del 31/03/2025 v1.0.0];
    - #link("https://alimitedgroup.github.io/VI%2025-03-2025%20v1.0.0.pdf")[Verbale interno del 25/03/2025 v1.0.0];
    - #link("https://alimitedgroup.github.io/VI%2017-03-2025%20v1.0.0.pdf")[Verbale interno del 17/03/2025 v1.0.0];
    - #link("https://alimitedgroup.github.io/VI%2011-03-2025%20v1.0.0.pdf")[Verbale interno del 11/03/2025 v1.0.0];
    - #link("https://alimitedgroup.github.io/VI%2003-03-2025%20v1.0.0.pdf")[Verbale interno del 03/03/2025 v1.0.0];
    - #link("https://alimitedgroup.github.io/VI%2024-02-2025%20v1.0.0.pdf")[Verbale interno del 24/02/2025 v1.0.0].
  ],
)

La spesa totale affrontata per la realizzazione del progetto risulta essere di *12.490€* a fronte dei *12.930€* preventivati in candidatura.

Cordiali Saluti, \
_ALimitedGroup_
