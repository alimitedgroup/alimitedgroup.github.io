#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 31, month: 03, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 31, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.marco,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 31, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.marco,
      descr: "Redazione del contenuto.",
    ),
  ),
  stato: [Approvato],
  presenze: (
    p.emanuele,
    p.loris,
    p.marco,
    p.matteo,
    p.sara,
  ),
  odg: [Diciottesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*31 Marzo 2025*], [*14.30*], [*16.00*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 06-04-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso

_ALimitedGroup_ ha verificato che durante la settimana trascorsa sono state completate la maggior parte delle attività previste.

Di seguito un'analisi approfondita del lavoro da completare.

== Decisioni relative alle attività del prossimo periodo

#align(center)[*Manuale Utente#super[G]*]
- Aggiunta informazioni per utilizzo dello _script_ con comandi _curl_ per realizzare i test#super[G] entro il giorno *3 Aprile 2025*;
- Aggiungere informazioni sull'uso di Grafana#super[G] entro il giorno *4 Aprile 2025*.

#align(center)[*Specifica Tecnica#super[G]*]

- Completare la progettazione e descrizione per il microservizio di _API#super[G] Gateway_ entro il giorno *2 Aprile 2025*;
- Completare la progettazione e descrizione per il microservizio _Notification_ entro il giorno *2 Aprile 2025*;
- Aggiungere informazioni sulla telemetria entro il giorno *4 Aprile 2025*.

#align(center)[*Piano di Progetto#super[G]*]

- Aggiornare il Piano di Progetto#super[G] con le informazioni per il nono Sprint#super[G] entro il giorno *7 Aprile 2025*;
- Aggiornare la pianificazione a lungo termine entro il giorno *3 Aprile 2025*.

#align(center)[*Piano di Qualifica#super[G]*]

- Aggiungere le nuove misurazioni nel Piano di Qualifica#super[G] entro il giorno *4 Aprile 2025*;
- Aggiungere informazioni sui test#super[G] del microservizio _Notification_ entro il giorno *4 Aprile 2025*;
- Aggiungere informazioni sulla modalità di esecuzione dei test#super[G] con _curl_ entro il giorno *3 Aprile 2025*.

#align(center)[*Norme di Progetto#super[G]*]
- Aggiornare misurazioni entro il giorno *4 Aprile 2025*.

#align(center)[*Programmazione*]

- Completare la codifica dei test#super[G] del microservizio *_Notification_* entro il giorno *4 Aprile 2025*;
- Realizzare test#super[G] automatici con curl per futuri test#super[G] di accettazione entro il giorno *3 Aprile 2025*



== Assegnazione prevista dei ruoli sino al 06-04-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[
  *#persona(p.matteo)* $arrow.r$ *Responsabile*#super[G]
]
#align(center)[
  *#persona(p.marco)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.sara)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.emanuele)* $arrow.r$ *Progettista*#super[G] \
]
#align(center)[
  *#persona(p.lorenzo)* $arrow.r$ *Programmatore*#super[G] \
  *#persona(p.samuele)* $arrow.r$ *Programmatore*#super[G] \
  *#persona(p.loris)* $arrow.r$ *Programmatore*#super[G] \
]\

La verifica#super[G] è affidata reciprocamente a persone appartenenti a gruppi di lavoro distinti.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(182),
  "Completare codifica i test per il microservizio Notification (entro 4 Aprile 2025)",
  issue(170),
  "Completare la progettazione e descrizione per il microservizio di API Gateway (entro 2 Aprile 2025)",
  issue(171),
  "Completare la progettazione e descrizione per il microservizio Notification (entro 2 Aprile 2025)",
  issue(230),
  "Aggiornare il Piano di Progetto con le informazioni per il nono Sprint (entro 7 Aprile 2025)",
  issue(200),
  "Trascrizione dei test eseguiti nel Piano di Qualifica (entro 4 Aprile 2025)",
  issue(228),
  "Redazione del presente Verbale Interno (entro 1 Aprile 2025)",
  issue(213),
  "Aggiunta informazioni per utilizzo dello script con comandi curl per realizzare i test nel Manuale Utente (entro 3 Aprile 2025)",
  issue(211),
  "Aggiungere informazioni sull'uso di Grafana nel Manuale Utente (entro 4 Aprile 2025)",
  issue(212),
  "Aggiunta delle nuove misurazioni nel Piano di Qualifica con aggiornamento eventuale delle Norme di Progetto (entro 4 Aprile 2025)",
  issue(215),
  "Aggiornare la pianificazione a lungo termine nel Piano di Progetto (entro 3 Aprile 2025)",
  issue(223),
  "Aggiungere informazioni sulla telemetria nel documento di Specifica Tecnica (entro 4 Aprile 2025)",
  issue(2, repo: repo.mvp),
  "Testare microservizio Notification (entro 3 Marzo 2025)",
  issue(36, repo: repo.mvp),
  "Realizzare test automatici con curl per futuri test di accettazione (entro 3 Aprile 2025)",
)
