#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 28, month: 01, year: 2025),
  tipo: [esterno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 28, month: 01, year: 2025),
      autore: p.sara,
      descr: "Prima redazione del documento",
    ),
  ),
  stato: [Approvato],
  presenze: (p.sara, p.samuele, p.loris, p.matteo, p.marco),
  odg: [Quarta riunione con #M31: viene presentata l'Analisi dei Requisiti e si discute il PoC],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*virtuale*], [*28 Gennaio 2025*], [*15.00*], [*16.30*], [#M31])
+ Esposizione Analisi dei Requisiti#super[g]
+ Discussione PoC

In questa riunione hanno partecipato, per conto, di #M31:
- #persona(p.luca);
- #persona(p.moones);
- #persona(p.cristian).

#pagebreak()

= Dettagli riunione
== Esposizione Analisi dei Requisiti#super[g]
Nel corso della riunione _ALimitedGroup_ ha richiesto ad #M31 dei feedback sull'*Analisi dei Requisiti#super[g]*, inviata precedentemente via mail.

#M31 ha espresso apprezzamento per la qualità del documento, sottolineando la completezza e la chiarezza dei requisiti esposti.

Il CTO #persona(p.luca) ha posto l'accento sull'importanza di specificare requisiti chiari e ben definiti, che permettano ai tecnici di comprendere la complessità dell'implementazione e identificare le soluzioni più adatte.

Il Dottore #persona(p.cristian) ha ricordato la necessità di redarre documenti ben organizzati e facilmente consultabili.

#M31 ha sottolineato l'importanza di specificare requisiti di qualità per garantire un prodotto finale di alto livello e conforme alle aspettative.

Nelle prossime riunioni verrano discusse le soglie di qualità da rispettare.


== Presentazione Poc
Durante l'incontro il gruppo _ALimitedGroup_ ha effettuato una dimostrazione completa che ha incluso:

- *Proof of Concept*: presentazione del programma in esecuzione, dimostrando concretamente la fattibilità delle soluzioni proposte;
- *Bozza architettura*: illustrazione approfondita della bozza architetturale con:
  - Spiegazione dettagliata del ruolo di ogni tecnologia scelta;
  - Giustificazione delle decisioni tecniche adottate;

- *Analisi delle problematiche*: presentazione di soluzioni per potenziali criticità, comprendendo i rischi e le loro mitigazioni.

#pagebreak()

= Esiti della riunione
L'*Analisi dei Requisiti#super[g]* è stata approvata da #M31.
Il *PoC*#super[g] presentato è stato valutato positivamente.
_ALimitedGroup_ si riserva di pianificare il prossimo incontro e di implementare i suggerimenti ricevuti.


_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.

#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])
