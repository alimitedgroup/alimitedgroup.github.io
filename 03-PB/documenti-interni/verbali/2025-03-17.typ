#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 17, month: 03, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 17, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.marco,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 17, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.marco,
      descr: "Redazione del contenuto.",
    ),
  ),
  stato: [Approvato],
  presenze: (
    p.emanuele,
    p.samuele,
    p.loris,
    p.marco,
    p.matteo,
    p.sara,
  ),
  odg: [Sedicesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*17 Marzo 2025*], [*14.15*], [*15.15*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 25-03-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso

_ALimitedGroup_ ha verificato che la settimana trascorsa non è stato possibile terminare la realizzazione del microservizio _Api Gateway_ e _Notification_.\
Tutte le altre attività previste sono state completate.

Di seguito un'analisi approfondita del lavoro da completare.

== Decisioni relative alle attività del prossimo periodo
#align(center)[*Norme di Progetto#super[G]*]
- Integrare la sezione "Sviluppo" (Sezione 2.2 delle *Norme di Progetto#super[G] ver. 1.1.0*) con le informazioni aggiornate in merito alla Codifica entro il giorno *23 Marzo 2025*.

#align(center)[*Manuale Utente#super[G]*]
- Continuare redazione del Manuale Utente#super[G], sezione "Introduzione", "Requisiti", "Tipi di Utenti", "Ordini", "Trasferimenti" e "Riassortimenti" entro il giorno *25 Marzo 2025*.

#align(center)[*Specifica Tecnica#super[G]*]

- Continuare la progettazione e descrizione per il microservizio _Order/Transfer_ entro il giorno *25 Marzo 2025*


#align(center)[*Piano di Progetto#super[G]*]

- Proseguire redazione Piano di Progetto#super[G] con le informazioni per l'ottavo Sprint#super[G] entro il giorno *31 Marzo 2025*

#align(center)[*Piano di Qualifica#super[G]*]

- Iniziare a trascrivere i test#super[G] eseguiti nel Piano di Qualifica#super[G] entro il giorno *25 Marzo 2025*.

#align(center)[*Programmazione*]

- Continuare la codifica del microservizio *_Notification_* entro il giorno *25 Marzo 2025*;
- Aggiornare il microservizio *_Api Gateway_* per supportare i nuovi microservizi entro il giorno *25 Marzo 2025*;
- Iniziare a implementare un _client_ per le richieste http entro il giorno *25 Marzo 2025*.


== Assegnazione prevista dei ruoli sino al 25-03-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[
  *#persona(p.sara)* $arrow.r$ *Responsabile*#super[G]
]
#align(center)[
  *#persona(p.marco)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.lorenzo)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.emanuele)* $arrow.r$ *Progettista*#super[G] \
]
#align(center)[
  *#persona(p.matteo)* $arrow.r$ *Programmatore*#super[G] \
  *#persona(p.samuele)* $arrow.r$ *Programmatore*#super[G] \
  *#persona(p.loris)* $arrow.r$ *Programmatore*#super[G] \
]\

La verifica#super[G] è affidata reciprocamente a persone appartenenti a gruppi di lavoro distinti.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(186),
  "Sistemare Norme di Progetto (entro 23 Marzo 2025)",
  issue(197),
  "Proseguire redazione del Manuale Utente (entro 25 Marzo 2025)",
  issue(198),
  "Continuare la progettazione e descrizione per il microservizio Transfer (entro 25 Marzo 2025)",
  issue(198),
  "Continuare la progettazione e descrizione per il microservizio Order (entro 25 Marzo 2025)",
  issue(184),
  "Aggiornare il Piano di Progetto con le informazioni per l'ottavo Sprint (entro 31 Marzo 2025)",
  issue(200),
  "Trascrizione dei test eseguiti nel Piano di Qualifica (entro 25 Marzo 2025)",
  issue(204),
  "Redazione del presente Verbale Interno (entro 25 Marzo 2025)",
  issue(2, repo: repo.mvp),
  "Continuare codifica e test microservizio Notification (entro 25 Marzo 2025)",
  issue(11, repo: repo.mvp),
  "Continuare aggiornamento microservizio di Api Gateway per supportare i nuovi microservizi (entro 25 Marzo 2025)",
  issue(47, repo: repo.mvp),
  "Iniziare codifica client (entro 25 Marzo 2025)",
)
