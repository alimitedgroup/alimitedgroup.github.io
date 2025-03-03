#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 03, month: 03, year: 2025),
  tipo: [interno],
  versioni: (
    /*(
      vers: "1.0.0",
      date: datetime(day: 26, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.marco,
      descr: "Approvazione del documento.",
    ),*/
    (
      vers: "0.1.0",
      date: datetime(day: 03, month: 03, year: 2025),
      autore: p.matteo,
      //verifica: p.emanuele,
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
  odg: [Quattordicesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*3 Marzo 2025*], [*10.15*], [*12.10*])

+ Aggiornamenti sui lavori in corso
+ Aggiornamenti sui lavori futuri
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 09-03-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso <alc>

I componenti di _ALimitedGroup_ hanno constatato il completamento di tutte le attività previste nel precedente verbale, fatta eccezione per l'aggiunta, alle Norme di Progetto, della sezione dedicata agli strumenti in ogni processo.

Dalla riunione è inoltre risultato che progressi sono stati realizzati anche in merito al *Manuale Utente*, per cui è stata anticipata la stesura della parte introduttiva: nel corso della settimana attuale sarà necessario verificare quanto realizzato nel *Manuale Utente*, nonché verificare la restante parte dei documenti scritti nel corso della settimana trascorsa.

== Aggiornamenti sui lavori futuri

I componenti hanno considerato il tempo a disposizione: hanno per questo motivo fatto il punto sui microservizi da realizzare e stabilito che questi dovranno essere realizzati, testati e descritti nel documento di *Specifica Tecnica* in un numero non inferiore a 3 per settimana.

I microservizi individuati sono i seguenti:
- *API Gateway*, per gestire le richieste HTTP e verificare la validità dei _Token_;
- *Auth*, per gestire il rilascio di _Token_ di autenticazione;
- *Catalog*, per gestire l'inventario globale e le informazioni su ciascuna merce;
- *Order*, per gestire gli ordini;
- *Transfer*, per gestire i trasferimenti;
- *Notificator*, per gestire il sistema di notifiche;
- *Warehouse*, per la gestione di un singolo magazzino.

Sarà inoltre necessario realizzare un *Client* per la gestione del Sistema.

Come citato in @alc, sarà necessario verificare i documenti realizzati la settimana appena trascorsa.

Infine, data la presenza del documento di Specifica Tecnica nel _repository_ dedicato ai documenti, le issue di realizzazione architetturale saranno spostate nel _repository_ appena citato.

== Decisioni relative alle attività del prossimo periodo

Dato quanto discusso, il gruppo si assegna i seguenti compiti:

#align(center)[*Norme di Progetto#super[G]*]
- Integrare la sezione "Sviluppo" (Sezione 2.2 delle *Norme di Progetto#super[G] ver. 1.0.0*) con le informazioni aggiornate a questa riunione in merito alla Codifica entro il giorno *9 Marzo 2025*.

#align(center)[*Specifica Tecnica*]
- Progettare e descrivere il microservizio di *API Gateway* entro il giorno *9 Marzo 2025*
- Progettare e descrivere il microservizio di *Warehouse* entro il giorno *9 Marzo 2025*
- Progettare e descrivere il microservizio di *Catalog* entro il giorno *9 Marzo 2025*

#align(center)[*Programmazione*]
- Codificare il microservizio di *API Gateway* entro il giorno *9 Marzo 2025*
- Codificare il microservizio di *Warehouse* entro il giorno *9 Marzo 2025*
- Codificare il microservizio di *Catalog* entro il giorno *9 Marzo 2025*
- Realizzare i Test di unità e di integrazione per il microservizio di *Api Gateway* entro il giorno *9 Marzo 2025*
- Realizzare i Test di unità e di integrazione per il microservizio di *Warehouse* entro il giorno *9 Marzo 2025*
- Realizzare i Test di unità e di integrazione per il microservizio di *Catalog* entro il giorno *9 Marzo 2025*



== Assegnazione prevista dei ruoli sino al 09-03-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[*#persona(p.marco)* $arrow.r$ *Responsabile*#super[G]]
#align(center)[
  *#persona(p.loris)* $arrow.r$ *Amministratore*#super[G] \
  *#persona(p.samuele)* $arrow.r$ *Amministratore*#super[G] \
  *#persona(p.matteo)* $arrow.r$ *Amministratore*#super[G]
]
#align(center)[
  *#persona(p.sara)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.emanuele)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.lorenzo)* $arrow.r$ *Progettista*#super[G] \
]\

La verifica è affidata reciprocamente a persone appartenenti a gruppi di lavoro distinti.

= Esiti della riunione

La riunione si conclude ricordando la necessità di rispettare le scadenze poste e svolgere con attenzione il lavoro stabilito.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(138),
  " Aggiungere la Sezione \"Strumenti a Supporto\" a tutti i processi presenti nelle Norme di Progetto (entro 9 Marzo 2025)",
  issue(170),
  "Progettazione e aggiunta informazioni microservizio Api Gateway (entro 9 Marzo 2025)",
  issue(171),
  "Progettazione e aggiunta informazioni microservizio Warehouse (entro 9 Marzo 2025)",
  issue(172),
  "Progettazione e aggiunta informazioni microservizio Catalog (entro 9 Marzo 2025)",
  issue(11, repo: repo.mvp),
  "Codifica microservizio Api Gateway (entro 9 Marzo 2025)",
  issue(12, repo: repo.mvp),
  "Codifica microservizio Warehouse (entro 9 Marzo 2025)",
  issue(13, repo: repo.mvp),
  "Codifica microservizio Catalog (entro 9 Marzo 2025)",
)
