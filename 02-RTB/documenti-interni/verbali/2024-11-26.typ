#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 26, month: 11, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 26, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.loris,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 26, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.sara,
      descr: "Redazione del contenuto.",
    ),
  ),
  stato: [Approvato],
  presenze: (
    p.emanuele,
    p.samuele,
    p.sara,
    p.loris,
    p.marco,
    p.matteo,
    p.lorenzo,
  ),
  odg: [Ottava riunione di _ALimitedGroup_: vengono decisi i ruoli, vengono decisi i tempi limite e la struttura per redigere i prossimi documenti],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*26 Novembre 2024*], [*14.30*], [*16.30*])
+ Aggiornamenti sui lavori in corso
+ Assegnate scadenze per la redazione dei documenti
+ Vengono assegnati i ruoli sino al giorno 02-12-2024

#pagebreak()
= Dettaglio riunione

== Aggiornamenti sui lavori in corso

Il gruppo _ALimitedGroup_, in questa settimana, ha proseguito la redazione e l'analisi dei
seguenti documenti: Norme di Progetto#super[G], Piano di Progetto#super[G], Glossario e Analisi dei Requisiti#super[G]. \
_ALimitedGroup_ decide, inoltre, che segnalerà ogni qualvolta una parola sia contenuta nel Glossario utilizzando la seguente nomenclatura:
#align(center)[parola#super[G]]
così facendo viene segnalato al lettore che la definizione di essa è presente in quest'ultimo.\
Viene deciso, successivamente, di implementare uno _script_ in _Python_ per verificare che tutte le parole presenti nei documenti seguano la regola citata sopra.

== Assegnate scadenze per la redazione dei documenti

I presenti del gruppo decidono che la redazione dei seguenti documenti:
- Analisi dei Requisiti#super[G]
- Norme di Progetto#super[G]
- Glossario
venga terminata non oltre il 06-12-2024, con la successiva pubblicazione nel sito di tali documenti.\
La conclusione, invece, della progettazione viene fissata entro il 31-12-2024 così da rispettare tutte le _milestone_#super[G] create.

Per quanto riguarda la _Requirements and Technology Baseline#super[G]_, il gruppo prevede di avere tutta la documentazione necessaria entro e non oltre il 26-01-2025.


== Vengono assegnati i ruoli sino al giorno 02-12-2024

I presenti del gruppo _ALimitedGroup_ decidono che, sino al giorno 02-12-2024, saranno assegnati ai seguenti componenti questi ruoli:
#align(center)[*#persona(p.loris)* $arrow.r$ *Responsabile*#super[G]] \
#align(center)[*#persona(p.samuele)* $arrow.r$ *Amministratore*#super[G] \ *#persona(p.marco)* $arrow.r$ *Amministratore*#super[G]] \
#align(center)[*#persona(p.sara)* $arrow.r$ *Verificatore*#super[G] \ *#persona(p.lorenzo)* $arrow.r$ *Verificatore*#super[G]] \
#align(center)[*#persona(p.emanuele)* $arrow.r$ *Analista*#super[G] \ *#persona(p.matteo)* $arrow.r$ *Analista*#super[G]] \

Sarà assegnato a *#persona(p.marco)* il compito di redigere questo verbale, agli *analisti* viene assegnata la continuazione di analisi per il documento di _Analisi dei Requisiti#super[G]_, agli *amministratori* viene assegnata la continuazione del documento di _Norme di Progetto#super[G]_ e del _Piano di Progetto#super[G]_.

#pagebreak()
= Esiti della riunione
Il gruppo conclude la riunione con i compiti assegnati, le decisioni intraprese e le scadenze assegnate per ogni singolo documento continuando, dunque, la realizzazione del progetto.
#pagebreak()

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  "DI26",
  "Stabiliti i nuovi ruoli per componente sino al 02-12-2024",
  "DI27",
  "Stabilita la nuova nomenclatura per il Glossario",
  issue(47),
  "Redazione verbale interno 26-11-2024",
)
