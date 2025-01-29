#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 28, month: 01, year: 2025),
  tipo: [esterno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 29, month: 01, year: 2025),
      autore: p.sara,
      verifica: p.marco,
      descr: "Approvazione interna documento",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 28, month: 01, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Prima redazione del documento",
    ),
  ),
  stato: [Approvato],
  presenze: (p.sara, p.samuele, p.lorenzo, p.loris, p.matteo, p.marco),
  odg: [Quarta riunione con #M31: viene presentata l'Analisi dei Requisiti e si discute il _PoC_],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*virtuale*], [*28 Gennaio 2025*], [*15.00*], [*16.30*], [#M31])

+ Esposizione Analisi dei Requisiti#super[g]
+ Discussione _Proof of Concept (PoC)_

In questa riunione hanno partecipato, per conto di #M31:
- #persona(p.luca) ;
- #persona(p.moones) ;
- #persona(p.cristian).

#pagebreak()

= Dettagli riunione
== Esposizione Analisi dei Requisiti#super[g]

Nel corso della riunione _ALimitedGroup_ ha richiesto ad #M31 dei feedback sull'Analisi dei Requisiti#super[g], inviata precedentemente via email.
#M31 ha espresso parere positivo per la qualità del documento, sottolineando la completezza dei requisiti esposti.


== Discussione _Proof of Concept (PoC)_
Durante l'incontro il gruppo _ALimitedGroup_ ha effettuato una dimostrazione completa che ha incluso:

- _Proof of Concept (PoC)_: presentazione del programma in esecuzione, dimostrando concretamente la fattibilità delle soluzioni proposte;
- Bozza architettura: illustrazione approfondita della bozza architetturale con:
  - Spiegazione dettagliata del ruolo di ogni tecnologia scelta;
  - Giustificazione delle decisioni tecniche adottate;

- Analisi delle Problematiche: Presentazione di soluzioni per potenziali criticità, comprendendo i rischi e le loro mitigazioni.

#M31 ha espresso parere positivo su quanto realizzato.

#pagebreak()

= Esiti della riunione

La riunione si conclude con parere positivo su quanto svolto. Si è inoltre deciso, durante lo svolgimento delle attività per la _Product Baseline (PB)_ di discutere più approfonditamente delle soglie accettabili per alcune tipologie di Test#super[g] .

_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.

Il gruppo teneva, inoltre, ringraziare per i consigli forniti e gli esempi derivanti dall'esperienza lavorativa dei rappresentanti di #M31.

#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [#M31])
