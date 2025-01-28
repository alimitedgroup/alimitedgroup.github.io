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
+ Esposizione Analisi dei Requisiti
+ Discussione PoC

In questa riunione hanno partecipato, per conto, di #M31:
- #persona(p.luca) ;
- #persona(p.moones) ;
- #persona(p.cristian).

#pagebreak()

= Dettagli riunione
== Esposizione Analisi dei Requisiti
Nel corso della riunione _ALimitedGroup_ ha richiesto ad #M31 dei feedback sull'Analisi dei Requisiti, inviata precedentemente via mail.
#M31 ha espresso apprezzamento per la qualità del documento, sottolineando la completezza e la chiarezza dei requisiti esposti.




== Presentazione Poc
Durante l'incontro il gruppo _ALimitedGroup_ ha effettuato una dimostrazione completa che ha incluso:

- Proof of Concept: presentazione del programma in esecuzione, dimostrando concretamente la fattibilità delle soluzioni proposte;
- Bozza architettura: illustrazione approfondita della bozza architetturale con:
  - Spiegazione dettagliata del ruolo di ogni tecnologia scelta;
  - Giustificazione delle decisioni tecniche adottate;

- Analisi delle Problematiche: Presentazione di soluzioni per potenziali criticità, comprendendo i rischi e le loro mitigazioni.

#pagebreak()

= Esiti della riunione

_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.

#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])
