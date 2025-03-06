#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 22, month: 01, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 24, month: 01, year: 2025),
      autore: p.loris,
      verifica: p.marco,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 22, month: 01, year: 2025),
      autore: p.loris,
      verifica: p.emanuele,
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
  odg: [Dodicesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*22 Gennaio 2025*], [*10.00*], [*11.00*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 02-02-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso

_ALimitedGroup_ ha analizzato le attività svolte nell'ultimo periodo. Dall'analisi è risultato che:

- *Analisi dei Requisiti#super[G]*: sono stati completati tutti i casi d'uso non obbligatori e anche quelli relativi alle attività svolte dal Backend#super[G];
- *Piano di Qualifica#super[G]*: è stato completato il documento, mancano solo le misurazioni di alcune metriche;
- *Tecnologie e PoC*: è proseguita la realizzazione del PoC#super[G] che si trova ora ad un buon punto di sviluppo per poter attestare la fattibilità del progetto con le tecnologie da utilizzare;
- *Norme di Progetto#super[G]*: è stato completata la redazione del documento.

Per maggiori informazioni è consigliata la lettura del *Piano di Progetto#super[G]* relativamente al quinto Sprint#super[G], la cui stesura dovrà avvenire entro la fine del sesto Sprint#super[G].

== Decisioni relative alle attività del prossimo periodo

I membri di _ALimitedGroup_ hanno stabilito che nel corso del sesto Sprint#super[G] sarà necessario:

#align(center)[*Norme di Progetto#super[G]*:]
- Iniziare la verifica#super[G] di quanto redatto entro il giorno *27 Gennaio 2025*;
- Finalizzare la verifica#super[G] di quanto redatto entro il giorno *2 Febbraio 2025*.

#align(center)[*Piano di Progetto#super[G]*:]
- Effettuare la redazione delle informazioni relative al quinto sprint#super[G] entro il giorno *27 Gennaio 2025*.

#align(center)[*Piano di Qualifica#super[G]*:]
- Verificare il documento entro il giorno *27 Gennaio 2025*;
- Completare le misurazioni entro il giorno *2 Febbraio 2025*.

#align(center)[*Glossario*:]
- Aggiornare il glossario ed i relativi documenti entro il giorno *2 Febbraio 2025*.

#align(center)[*Tecnologie e PoC*:]
- Terminare la funzionalità#super[G] di esecuzione degli ordini entro il giorno *2 Febbraio 2025*.

== Assegnazione prevista dei ruoli sino al 02-02-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[*#persona(p.marco)* $arrow.r$ *Responsabile*#super[G]]
#align(center)[
  *#persona(p.loris)* $arrow.r$ *Amministratore*#super[G] \
  *#persona(p.lorenzo)* $arrow.r$ *Amministratore*#super[G]
]
#align(center)[*#persona(p.samuele)* $arrow.r$ *Programmatore*#super[G]]
#align(center)[
  *#persona(p.matteo)* $arrow.r$ *Verificatore*#super[G] \
  *#persona(p.sara)* $arrow.r$ *Verificatore*#super[G] \
  *#persona(p.emanuele)* $arrow.r$ *Verificatore*#super[G] \
]\

Eventuali compiti di *Programmatore*#super[G] sono affidati anche a *#persona(p.loris)* dopo aver completato le attività di *Amministratore*#super[G].

= Esiti della riunione

La riunione si conclude ricordando la necessità di rispettare le scadenze poste e svolgere con attenzione il lavoro stabilito.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(103),
  "Redazione verbale interno del 22 Gennaio 2025 (entro 27 Gennaio 2025)",
  issue(97),
  "Redazione delle informazioni relative al quinto Sprint nel Piano di Progetto (entro 27 Gennaio 2025)",
  issue(79),
  "Aggiornare il glossario e i relativi documenti (entro 2 Febbraio 2025)",
  issue(104),
  "Effettuare le ultime misurazioni nel Piano di Qualifica (entro 2 Febbraio 2025)",
  issue(106),
  "Verifica Norme di Progetto (entro 2 Febbraio 2025)",
  issue(107),
  "Verifica Piano di Qualifica (entro 2 Febbraio 2025)",
  issue(7, repo: repo.poc),
  "Terminare la funzionalità di esecuzione degli ordini nel PoC (entro 2 Febbraio 2025)",
)
