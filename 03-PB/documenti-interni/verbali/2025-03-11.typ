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
  stato: [Redazione],
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
+ Aggiornamenti sui lavori futuri
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 16-03-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso

I componenti di _ALimitedGroup_ hanno constatato il completamento parziale di tutte le attività previste nel precedente verbale, fatta eccezione per l'aggiunta, alle Norme di Progetto#super[G], della sezione dedicata agli strumenti in ogni processo.

Le attività di progettazione e codifica del periodo precedente sono state svolte con successo, ma necessitano di alcuni giorni per completarle definitivamente.

== Aggiornamenti sui lavori futuri

Il gruppo ha deciso di completare la codifica dei test#super[G], la progettazione e la descrizione dei microservizi *Warehouse* e *Api Gateway* entro il giorno *12 Marzo 2025*.

Inoltre, si è deciso di completare la progettazione, descrizione e codifica dei microservizi di *Auth* e *Notification* entro il giorno *16 Marzo 2025*, e di iniziare la progettazione e codifica del microservizio di *Order* entro il giorno *16 Marzo 2025*.


== Decisioni relative alle attività del prossimo periodo

Dato quanto discusso, il gruppo si assegna i seguenti compiti:

#align(center)[*Norme di Progetto#super[G]*]
- Integrare la sezione "Sviluppo" (Sezione 2.2 delle *Norme di Progetto#super[G] ver. 1.0.0*) con le informazioni aggiornate a questa riunione in merito alla Codifica entro il giorno *23 Marzo 2025*.

#align(center)[*Specifica Tecnica#super[G]*]
- Completare la progettazione e descrizione per il microservizio di *API#super[G] Gateway* entro il giorno *12 Marzo 2025*
- Completare la progettazione e descrizione per il microservizio di *Warehouse* entro il giorno *12 Marzo 2025*
- Progettare e descrivere il microservizio di *Auth* entro il giorno *16 Marzo 2025*
- Progettare e descrivere il microservizio di *Notification* entro il giorno *16 Marzo 2025*
- Progettare e descrivere il microservizio di *Order* entro il giorno *23 Marzo 2025*
- Aggiungere le informazioni generali a tutti i microservizi entro il giorno *23 Marzo 2025*

#align(center)[*Programmazione*]
- Completare i Test#super[G] di unità e di integrazione per il microservizio di *Api Gateway* entro il giorno *12 Marzo 2025*
- Completare i Test#super[G] di unità e di integrazione per il microservizio di *Warehouse* entro il giorno *12 Marzo 2025*
- Codificare il microservizio di *Notification* entro il giorno *16 Marzo 2025*
- Codificare il microservizio di *Auth* entro il giorno *16 Marzo 2025*
- Codificare il microservizio di *Order* entro il giorno *23 Marzo 2025*

== Assegnazione prevista dei ruoli sino al 16-03-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[*#persona(p.emanuele)* $arrow.r$ *Responsabile*#super[G] e *Amministratore*#super[G]]
#align(center)[
  *#persona(p.loris)* $arrow.r$ *Programmatore*#super[G] e *Progettista*#super[G] \
  *#persona(p.samuele)* $arrow.r$ *Programmatore*#super[G] e *Progettista*#super[G] \
  *#persona(p.matteo)* $arrow.r$ *Programmatore*#super[G] e *Progettista*#super[G] \
]
#align(center)[
  *#persona(p.sara)* $arrow.r$ *Amministratore*#super[G] \
  *#persona(p.lorenzo)* $arrow.r$ *Amministratore*#super[G] \
]\

La verifica#super[G] è affidata reciprocamente a persone appartenenti a gruppi di lavoro distinti.

= Esiti della riunione

La riunione si conclude ricordando la necessità di rispettare le scadenze poste e svolgere con attenzione il lavoro stabilito.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(138),
  "Aggiungere la Sezione \"Strumenti a Supporto\" a tutti i processi presenti nelle Norme di Progetto (entro 23 Marzo 2025)",
  issue(185),
  "Aggiungere informazioni generali alla Specifica Tecnica (entro 23 Marzo 2025)",
  issue(183),
  "Progettazione e aggiunta informazioni microservizio Auth (entro 16 Marzo 2025)",
  issue(182),
  "Progettazione e aggiunta informazioni microservizio Notification (entro 16 Marzo 2025)",
  issue(184),
  "Redarre Piano di progetto del 8 Sprint (entro 23 Marzo 2025)",
  issue(181),
  "Redarre il verbale per questa riunione interna (entro 16 Marzo 2025)",
  issue(19, repo: repo.mvp),
  "Codifica microservizio Order (entro 23 Marzo 2025)",
  issue(7, repo: repo.mvp),
  "Codifica microservizio Auth (entro 16 Marzo 2025)",
  issue(2, repo: repo.mvp),
  "Codifica microservizio Notification (entro 16 Marzo 2025)",
)
