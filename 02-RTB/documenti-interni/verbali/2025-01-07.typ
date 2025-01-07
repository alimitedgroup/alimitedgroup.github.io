#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 07, month: 01, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 07, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.loris,
      descr: "Redazione del contenuto",
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
  odg: [Undicesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*07 Gennaio 2025*], [*11.00*], [*12.15*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 19-01-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso

_ALimitedGroup_ ha analizzato le attività svolte nell'ultimo periodo. Dall'analisi è risultato che:

- *Analisi dei Requisiti*: Sono stati riesaminati tutti i casi d'uso redatti ed è stata completata la redazione di tutti i Casi d'Uso relativi a requisiti obbligatori;
- *Piano di Qualifica*: è stata completata la ricerca delle misurazioni da effettuare;
- *Tecnologie e PoC*: è proseguita la realizzazione del PoC che si trova ora ad un buon punto di sviluppo per poter attestare la fattibilità del progetto con le tecnologie da utilizzare;

In merito all'*Analisi dei Requisiti*, non è stata rispettata la scadenza relativa alla redazione dei requisiti non obbligatori per il sopraggiungere di alcune complicazioni.

In merito alle *Norme di Progetto*, non è stata rispettata la scadenza relativa alla redazione delle informazioni sulla codifica del codice, ma è sostanzialmente completa la redazione delle Sezioni mancanti.

Per maggiori informazioni è consigliata la lettura del *Piano di Progetto* relativamente al quarto Sprint, la cui stesura dovrà avvenire entro la fine del quinto Sprint.

== Decisioni relative alle attività del prossimo periodo

I membri di _ALimitedGroup_ hanno stabilito che nel corso del quinto Sprint sarà necessario:

#align(center)[*Analisi dei Requisiti*]
- Effettuare la redazione dei Casi d'Uso relativi ai requisiti non obbligatori entro il giorno *12 Gennaio 2025*
- Effettuare la redazione dei Casi d'Uso relativi alle attività svolte dal Backend entro il giorno *19 Gennaio 2025*

#align(center)[*Norme di Progetto*]
- Effettuare la verifica di quanto redatto entro il giorno *19 Gennaio 2025*

#align(center)[*Piano di Progetto*]
- Effettuare la redazione delle informazioni relative al quarto sprint entro il giorno *19 Gennaio 2025*

#align(center)[*Piano di Qualifica*]
- Effettuare la redazione del documento con le informazioni aggiuntive rispetto alle misurazioni entro il giorno *12 Gennaio 2025*, integrando eventualmente con le Norme di Progetto ove necessario;
- Effettuare le prime misurazioni entro il giorno *19 Gennaio 2025*
\
#align(center)[*Tecnologie e PoC*]
- Terminare la realizzazione del PoC completando l'analisi di quanto necessario a realizzare l'aggiornamento delle informazioni tra i vari elementi del Sistema entro il giorno *19 Gennaio 2025*

== Assegnazione prevista dei ruoli sino al 19-01-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[*#persona(p.matteo)* $arrow.r$ *Responsabile*#super[g]]
#align(center)[*#persona(p.sara)* $arrow.r$ *Amministratore*#super[g] \
  *#persona(p.emanuele)* $arrow.r$ *Amministratore*#super[g]
]
#align(center)[*#persona(p.samuele)* $arrow.r$ *Programmatore*#super[g] \ *#persona(p.loris)* $arrow.r$ *Programmatore*#super[g]]
#align(center)[
  *#persona(p.marco)* $arrow.r$ *Analista*#super[g] \
  *#persona(p.lorenzo)* $arrow.r$ *Analista*#super[g]
]\

Eventuali compiti di *Verifica* sono affidati a *#persona(p.loris)* e *#persona(p.samuele)* quando questi non sono impegnati nella attività di programmazione, il *Responsabile* avrà modo di svolgere attività di *analisi* nei momenti in cui le attività del suo ruolo non sono richieste: tali vincoli sono per evitare che le persone svolgano due ruoli contemporaneamente.

= Esiti della riunione

La riunione si conclude con l'affermare la necessità di rispettare le scadenze poste e svolgere con attenzione il lavoro stabilito.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(62),
  "Redazione delle informazioni aggiuntive alle misurazioni nel Piano di Qualifica (entro 12 Gennaio 2025)",
  issue(62),
  "Effettuare prime misurazioni nel Piano di Qualifica (entro 19 Gennaio 2025)",
  issue(88),
  "Redazione delle informazioni relative al quarto Sprint nel Piano di Progetto (entro 19 Gennaio 2025)",
  issue(92),
  "Redazione verbale interno del 7 Gennaio 2025 (entro 19 Gennaio 2025)",
  issue(93),
  "Redazione Casi d'Uso relativi a requisiti non obbligatori nell'Analisi dei Requisiti (entro 12 Gennaio 2025)",
  issue(94),
  "Redazione Casi d'Uso relativi ad attività di Backend nell'Analisi dei Requisiti (entro 19 Gennaio 2025)",
  issue(1, repo: repo.poc),
  "Terminare la realizzazione del PoC completando l'analisi di quanto necessario a realizzare l'aggiornamento delle informazioni tra i vari elementi del Sistema (entro 19 Gennaio 2025)",
)
