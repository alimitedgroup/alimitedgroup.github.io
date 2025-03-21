#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 11, month: 03, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 11, month: 03, year: 2025),
      autore: p.loris,
      verifica: p.emanuele,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 11, month: 03, year: 2025),
      autore: p.loris,
      verifica: p.matteo,
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
    p.lorenzo,
  ),
  odg: [Quindicesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*11 Marzo 2025*], [*10.15*], [*11.15*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 16-03-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso

I componenti di _ALimitedGroup_ hanno constatato il completamento parziale delle attività previste nel precedente verbale, fatta eccezione per l'aggiunta, alle Norme di Progetto#super[G], della sezione dedicata agli strumenti in ogni processo.

Le attività di progettazione e codifica del periodo precedente sono state per lo più completate, ad eccezione della stesura di alcune parti della Specifica Tecnica#super[G] e alcuni ultimi Test#super[G] .

== Decisioni relative alle attività del prossimo periodo

Dato quanto discusso, il gruppo si assegna i seguenti compiti:

#align(center)[*Norme di Progetto#super[G]*]
- Integrare la sezione "Sviluppo" (Sezione 2.2 delle *Norme di Progetto#super[G] ver. 1.1.0*) con le informazioni aggiornate a questa riunione in merito alla Codifica entro il giorno *23 Marzo 2025*.

#align(center)[*Specifica Tecnica#super[G]*]
- Completare la progettazione e descrizione per il microservizio di *API#super[G] Gateway* entro il giorno *12 Marzo 2025*
- Completare la progettazione e descrizione per il microservizio di *Warehouse*#super[G] entro il giorno *12 Marzo 2025*
- Progettare e descrivere il microservizio di *Auth* entro il giorno *16 Marzo 2025*
- Progettare e descrivere il microservizio di *Notification* entro il giorno *16 Marzo 2025*
- Iniziare la progettazione del microservizio di *Order* entro il giorno *23 Marzo 2025*
- Aggiungere le informazioni generali a tutti i microservizi entro il giorno *23 Marzo 2025*

#align(center)[*Programmazione*]
- Completare i Test#super[G] di unità e di integrazione per il microservizio di *Api Gateway* entro il giorno *12 Marzo 2025*
- Completare i Test#super[G] di unità e di integrazione per il microservizio di *Warehouse*#super[G] entro il giorno *12 Marzo 2025*
- Codificare il microservizio di *Notification* entro il giorno *16 Marzo 2025*
- Codificare il microservizio di *Auth* entro il giorno *16 Marzo 2025*
- Iniziare la codifica del microservizio *Order* entro il giorno *23 Marzo 2025*

== Assegnazione prevista dei ruoli sino al 16-03-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[
  *#persona(p.emanuele)* $arrow.r$ *Responsabile*#super[G]
]
#align(center)[
  *#persona(p.marco)* $arrow.r$ *Amministratore*#super[G]
]
#align(center)[
  *#persona(p.loris)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.samuele)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.sara)* $arrow.r$ *Progettista*#super[G] \
]
#align(center)[
  *#persona(p.matteo)* $arrow.r$ *Programmatore*#super[G] \
  *#persona(p.lorenzo)* $arrow.r$ *Programmatore*#super[G] \
]\

La verifica#super[G] è affidata reciprocamente a persone appartenenti a gruppi di lavoro distinti.

= Esiti della riunione

La riunione si conclude ricordando la necessità di rispettare le scadenze poste e svolgere con attenzione il lavoro stabilito.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(186),
  "Aggiungere la Sezione \"Strumenti a Supporto\" a tutti i processi presenti nelle Norme di Progetto (entro 23 Marzo 2025)",
  issue(185),
  "Aggiungere informazioni generali alla Specifica Tecnica (entro 23 Marzo 2025)",
  issue(183),
  "Progettazione e aggiunta informazioni microservizio Auth (entro 16 Marzo 2025)",
  issue(182),
  "Progettazione e aggiunta informazioni microservizio Notification (entro 16 Marzo 2025)",
  issue(184),
  "Redigere Piano di progetto del 8 Sprint (entro 23 Marzo 2025)",
  issue(181),
  "Redigere il verbale per questa riunione interna (entro 16 Marzo 2025)",
  issue(170),
  "Completare la progettazione e descrizione per il microservizio di API Gateway (entro 12 Marzo 2025)",
  issue(171),
  "Completare la progettazione e descrizione per il microservizio di Warehouse (entro 12 Marzo 2025)",
  issue(11, repo: repo.mvp),
  "Completare i Test di unità e di integrazione per il microservizio di *Api Gateway* (entro 12 Marzo 2025)",
  issue(23, repo: repo.mvp),
  "Completare i Test di unità e di integrazione per il microservizio di *Warehouse* (entro 12 Marzo 2025)",
  issue(19, repo: repo.mvp),
  "Inizio codifica microservizio Order (entro 23 Marzo 2025)",
  issue(7, repo: repo.mvp),
  "Codifica microservizio Auth (entro 16 Marzo 2025)",
  issue(2, repo: repo.mvp),
  "Codifica microservizio Notification (entro 16 Marzo 2025)",
)
