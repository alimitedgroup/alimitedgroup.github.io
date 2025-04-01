#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 25, month: 03, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 26, month: 03, year: 2025),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 25, month: 03, year: 2025),
      autore: p.matteo,
      verifica: p.sara,
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
  odg: [Diciassettesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*25 Marzo 2025*], [*14.15*], [*15.15*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 06-04-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso

_ALimitedGroup_ ha verificato che la settimana trascorsa non è stato possibile completare la realizzazione delle informazioni relative ad Api Gateway, ma tutte le altre attività previste sono state, per la maggior parte di ciascuna, completate.

È stato constatato il poco tempo rimanente per il completamento del progetto: è stata dunque fatta un'analisi approfondita del lavoro da completare.

== Decisioni relative alle attività del prossimo periodo

#align(center)[*Analisi dei Requisiti#super[G]*]

- Modifica dell'Analisi dei Requisiti#super[G] in seguito all'ultima riunione con M31 entro il giorno *30 Marzo 2025*

#align(center)[*Manuale Utente#super[G]*]
- Aggiungere informazioni sulla configurazione e l'avvio dei microservizi entro il giorno *30 Marzo 2025*
- Aggiunta informazioni sui nuovi endpoint entro il giorno *31 Marzo 2025*
- Aggiunta informazioni per utilizzo dello script con comandi curl per realizzare i test#super[G] entro il giorno *3 Aprile 2025*
- Aggiungere informazioni sull'uso di Grafana#super[G] entro il giorno *4 Aprile 2025*

#align(center)[*Specifica Tecnica#super[G]*]

- Completare la progettazione e descrizione per il microservizio Order/Transfer e Warehouse#super[G] entro il giorno *26 Marzo 2025*
- Completare la progettazione e descrizione per il microservizio di API#super[G] Gateway entro il giorno *31 Marzo 2025*
- Completare la progettazione e descrizione per il microservizio Notification entro il giorno *31 Marzo 2025*
- Completare la trascrizione dei test#super[G] eseguiti nel Piano di Qualifica#super[G] aggiungendo i test#super[G] che verranno effettuati in questa settimana entro il giorno *31 Marzo 2025*
- Aggiungere informazioni sul funzionamento di Order/Transfer e Warehouse#super[G] entro il giorno *31 Marzo 2025*
- Aggiungere informazioni sul funzionamento dei router e del main dei vari microservizi entro il giorno *31 Marzo 2025*

#align(center)[*Piano di Progetto#super[G]*]

- Aggiornare il Piano di Progetto#super[G] con le informazioni per l'ottavo Sprint#super[G] entro il giorno *31 Marzo 2025*
- Aggiornare la pianificazione a lungo termine entro il giorno *3 Aprile 2025*

#align(center)[*Piano di Qualifica#super[G]*]

- Aggiungere le nuove misurazioni nel Piano di Qualifica#super[G] entro il giorno *4 Aprile 2025*

#align(center)[*Programmazione*]

- Completare la codifica del microservizio *Notification* entro il giorno *28 Marzo 2025*
- Aggiornare il microservizio *Api Gateway* per supportare i nuovi microservizi entro il giorno *28 Marzo 2025*
- Inserire i test#super[G] di integrazione per il microservizio Order/Transfer entro il giorno *28 Marzo 2025*
- Integrare Grafana#super[G] nei vari microservizi entro il giorno *28 Marzo 2025*
- Realizzare test#super[G] automatici con curl per futuri test#super[G] di accettazione entro il giorno *3 Aprile 2025*
- Risolvere il problema di sicurezza *CVE-2025-30204* entro il giorno *3 Aprile 2025*


== Assegnazione prevista dei ruoli sino al 31-03-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[
  *#persona(p.lorenzo)* $arrow.r$ *Responsabile*#super[G]
]
#align(center)[
  *#persona(p.marco)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.sara)* $arrow.r$ *Progettista*#super[G] \
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
  issue(170),
  "Completare la progettazione e descrizione per il microservizio di API Gateway (entro 31 Marzo 2025)",
  issue(182),
  "Completare la progettazione e descrizione per il microservizio Notification (entro 31 Marzo 2025)",
  issue(184),
  "Aggiornare il Piano di Progetto con le informazioni per l'ottavo Sprint (entro 31 Marzo 2025)",
  issue(200),
  "Trascrizione dei test eseguiti nel Piano di Qualifica (entro 31 Marzo 2025)",
  issue(206),
  "Redazione del presente Verbale Interno (entro 26 Marzo 2025)",
  issue(207),
  "Aggiungere informazioni sul funzionamento di Order/Transfer e Warehouse nella Specifica Tecnica (entro 31 Marzo 2025)",
  issue(208),
  "Aggiungere informazioni sul funzionamento dei router e del main dei vari microservizi nella Specifica Tecnica (entro 31 Marzo 2025)",
  issue(209),
  "Aggiungere informazioni sulla configurazione e l'avvio dei microservizi nel Manuale Utente (entro 30 Marzo 2025)",
  issue(210),
  "Aggiunta informazioni sui nuovi endpoint nel Manuale Utente (entro 31 Marzo 2025)",
  issue(213),
  "Aggiunta informazioni per utilizzo dello script con comandi curl per realizzare i test nel Manuale Utente (entro 3 Aprile 2025)",
  issue(211),
  "Aggiungere informazioni sull'uso di Grafana nel Manuale Utente (entro 4 Aprile 2025)",
  issue(212),
  "Aggiunta delle nuove misurazioni nel Piano di Qualifica con aggiornamento eventuale delle Norme di Progetto (entro 4 Aprile 2025)",
  issue(214),
  "Modifica dell'Analisi dei Requisiti in seguito all'ultima riunione con M31 (entro 30 Marzo 2025)",
  issue(215),
  "Aggiornare la pianificazione a lungo termine nel Piano di Progetto (entro 3 Aprile 2025)",
  issue(2, repo: repo.mvp),
  "Codificare e testare microservizio Notification (entro 28 Marzo 2025)",
  issue(34, repo: repo.mvp),
  "Aggiornare microservizio di Api Gateway per supportare i nuovi microservizi (entro 28 Marzo 2025)",
  issue(35, repo: repo.mvp),
  "Inserire i test di integrazione per il microservizio Order/Transfer (entro 28 Marzo 2025)",
  issue(36, repo: repo.mvp),
  "Realizzare test automatici con curl per futuri test di accettazione (entro 3 Aprile 2025)",
  issue(37, repo: repo.mvp),
  "Integrare Grafana nei vari microservizi (entro 28 Marzo 2025)",
  issue(38, repo: repo.mvp),
  "Risolvere CVE-2025-30204 (entro 3 Aprile 2025)",
)
