#import "@preview/fireside:1.0.0": *
#import "../lib/common.typ": *

#metadata[Lettera di presentazione RTB] <titolo>

#show: fireside.with(
  title: [Presentazione RTB],
  from-details: [
    ALimitedGroup, \
    Gruppo 8 \
    #link("mailto:alimitedgroup@gmail.com") \
    #link("https://alimitedgroup.github.io/")[#image("../assets/altd.png", height: 50pt)]
  ],
  to-details: [
    Alla cortese attenzione di \
    #prof(p.tullio), \
    #prof(p.cardin), \
    Dipartimento di Matematica, \
    Via Trieste, 63 \
    35121, Padova
  ],
)
#show link: underline

Egregio Prof. Vardanega,\
Egregio Prof. Cardin,

con la presente il gruppo _ALimitedGroup_ desidera comunicarVi formalmente la
propria intenzione di sottoporsi alla revisione della _Requirements and
Technology Baseline_ in data 2025-02-05, riguardo il lavoro svolto nell'ambito del progetto
proposto dall'azienda #M31 nel capitolato *C6*, con titolo:

#align(center, text(12pt)[*Sistema di Gestione di un Magazzino Distribuito*])

Nel periodo passato, _ALimitedGroup_ ha implementato un _Proof of Concept_, che abbiamo reso disponibile al seguente link:
https://github.com/alimitedgroup/PoC

Con l'occasione, Vi segnaliamo che la documentazione prodotta può sempre essere trovata alla sezione _RTB_ della nostra _repo_ al seguente link:
https://alimitedgroup.github.io

All'interno si possono trovare i seguenti documenti:

#table(
  columns: (50%, 50%),
  stroke: none,
  [
    - Lettera di presentazione (questo documento);
    - Piano di Qualifica v1.0.0;
    - Piano di Progetto v1.0.0;
    - Analisi dei Requisiti v1.1.0;
    - Norme di Progetto v1.0.0;
    - Verbale interno del 24/01/2025 v1.0.0;
    - Verbale interno del 07/01/2025 v1.0.0;
    - Verbale interno del 18/12/2025 v1.0.0;
  ],
  [
    - Verbale interno del 04/12/2025 v1.0.0;
    - Verbale interno del 26/11/2025 v1.0.0;
    - Verbale interno del 18/11/2025 v1.0.0;
    - Verbale interno del 11/11/2025 v1.0.0;
    - Verbale interno del 04/11/2025 v1.0.0;
    - Verbale esterno del 28/01/2025 v1.0.0;
    - Verbale esterno del 17/12/2025 v1.0.0;
    - Verbale esterno del 03/12/2025 v1.0.0;
    - Verbale esterno del 19/11/2025 v1.0.0.
  ],
)

Infine, riconfermiamo la data ultima di consegna del progetto al *31 marzo 2025*, con costo stimato di *€12˙930*.

Cordiali Saluti, \
_ALimitedGroup_
