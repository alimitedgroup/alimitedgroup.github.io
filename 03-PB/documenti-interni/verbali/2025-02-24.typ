#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 24, month: 02, year: 2025),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 26, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.marco,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 24, month: 02, year: 2025),
      autore: p.matteo,
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
  odg: [Tredicesima riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*24 Febbraio 2025*], [*10.30*], [*12.30*])

+ Aggiornamenti sui lavori in corso
+ Decisioni in merito alle riunioni future
+ Decisioni in merito alla codifica del codice
+ Decisioni relative alle attività del prossimo periodo
+ Assegnazione prevista dei ruoli sino al 02-03-2025

= Dettaglio riunione

== Aggiornamenti sui lavori in corso <alc>

I membri di _ALimitedGroup_ si sono aggiornati sul progresso del progetto in seguito al superamento della _Requirements and Technology Baseline (RTB)_.

_ALimitedGroup_ ha appreso la necessità di correggere gli errori rilevati dal #profBreve(p.cardin) nell'Analisi dei Requisiti#super[G] e dal #profBreve(p.tullio) negli altri documenti.

Si è determinato, per lo svolgimento della _Product Baseline (PB)_, che sarà necessario produrre un documento atto a spiegare come avviare ed utilizzare l'applicativo/gli applicativi sviluppati (denominato *Manuale Utente*) e un ulteriore documento atto a descrivere le caratteristiche degli stessi (denominato *Specifica Tecnica*).

È stato deciso, in seguito a consiglio di #persona(p.samuele) e #persona(p.marco) che risulta esser possibile, senza particolari sforzi aggiuntivi, la realizzazione di un *Manuale Utente* disponibile anche in versione _web_.

È stato deciso che è necessario approfondire lo studio del _framework_ *fx*, utilizzato per la _Dependency Injection_.

Il gruppo ha evidenziato la necessità di organizzare un maggior numero di riunioni, sia interne che esterne.

== Decisioni in merito alle riunioni future <f>

I membri di _ALimitedGroup_ hanno compreso che, per rispettare la data prevista di consegna del progetto (31 Marzo 2025), sarà necessario svolgere più spesso riunioni interne per aggiornarsi a vicenda sui progressi fatti e pianificare di conseguenza il periodo futuro: per questo motivo, _ALimitedGroup_ ha deciso che terrà più frequentemente riunioni interne, all'incirca una a settimana, per aggiornare i membri sullo stato di lavoro complessivo e programmare il periodo successivo.

Dall'analisi del periodo trascorso è stato rilevato che sono state realizzate poche riunioni esterne con #M31: _ALimitedGroup_ prevede di organizzare più riunioni con #M31, cercando di svolgerne almeno una ad ogni _sprint_#super[G] .

== Decisioni in merito alla codifica del codice

I membri di _ALimitedGroup_ hanno stabilito che per la codifica del codice saranno seguite le seguenti regole:

- il _package_ di ogni file contenente codice sorgente deve essere diverso per ogni cartella;
- le interfacce devono avere un nome che inizia con la lettera *I* (ad esempio _*I*\UseCase_);
- le interfacce devono essere poste su un file separato dagli altri file contenenti codice sorgente;
- le strutture che implementano le interfacce devono essere su un file separato dagli altri file contenenti codice sorgente;
- le strutture rappresentanti attributi delle strutture che implementano le interfacce devono essere poste su un file separato dagli altri file contenenti codice sorgente;
- i file contenenti strutture che sono utilizzati dai _Controller_ dei microservizi devono essere inseriti all'interno di una cartella comune.

== Decisioni relative alle attività del prossimo periodo

I membri di _ALimitedGroup_ hanno stabilito che nel corso del settimo sprint saranno svolte le seguenti attività, tenendo conto che le stesse potrebbero subire modifiche e/o aggiunte ed integrazioni nel corso della prossima riunione, che si svolgerà verso l'inizio della seconda settimana del settimo sprint#super[G] , come stabilito alla @f:

#align(center)[*Amministrazione*]

- Configurare il _repository_#super[G] dedicato al _Minimum Viable Product (MVP)_ per permettere la _Continuous Integration (CI)_ con quanto necessario all'esecuzione dei Test#super[G] , al calcolo del _Code Covergae_ e della Complessità Ciclomatica e alla realizzazione delle _build_ entro il giorno *2 Marzo 2025*.

#align(center)[*Manuale Utente*]
- Configurare il #link("https://github.com/alimitedgroup/alimitedgroup.github.io")[_repository_ dei documenti] per la realizzazione del manuale utente in versione _pdf_ e _web_ (entro il giorno *2 Marzo 2025*).

#align(center)[*Norme di Progetto#super[G]*]

- Aggiungere la Sezione "Strumenti a Supporto" a tutti i processi presenti nelle *Norme di Progetto#super[G]* entro il giorno *2 Marzo 2025*.
- Integrare la sezione "Sviluppo" (Sezione 2.2 delle *Norme di Progetto#super[G] ver. 1.0.0*) con le informazioni aggiornate a questa riunione in merito alla Codifica.

#align(center)[*Piano di Progetto*]
- Effettuare la redazione delle informazioni relative al settimo sprint entro il giorno *9 Marzo 2025*.

#align(center)[*Progettazione*]

- Effettuare la progettazione del microservizio dedicato alle notifiche di rifornimento entro il giorno *2 Marzo 2025*.
- Effettuare la progettazione del microservizio dedicato all'autenticazione di un _client_, limitando tale servizio alla verifica della tipologia di utente entro il giorno *2 Marzo 2025*.

#align(center)[*Programmazione*]

- Completare lo studio del framework *fx* per la _Dependency Injection_ entro il giorno *2 Marzo 2025*.

#pagebreak()

#align(center)[*Specifica Tecnica*]
- Effettuare la redazione della struttura base del documento e delle Sezioni relative alle tecnologie utilizzate, all'Architettura logica e quella di Deployment entro il giorno *2 Marzo 2025*.

== Assegnazione prevista dei ruoli sino al 02-03-2025

Date le attività da svolgere, i componenti di _ALimitedGroup_ si suddividono così i ruoli:

#align(center)[*#persona(p.marco)* $arrow.r$ *Responsabile*#super[G]]
#align(center)[
  *#persona(p.loris)* $arrow.r$ *Amministratore*#super[G] \
  *#persona(p.samuele)* $arrow.r$ *Amministratore*#super[G]
]
#align(center)[
  *#persona(p.sara)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.matteo)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.lorenzo)* $arrow.r$ *Progettista*#super[G] \
  *#persona(p.emanuele)* $arrow.r$ *Progettista*#super[G] \
]\

Eventuali compiti di verifica sono affidati a #persona(p.emanuele) e a #persona(p.marco) quando questi non svolgono i ruoli assegnati.

Tutti i componenti devono svolgere formazione personale per comprendere il _framework_ *fx*.

= Esiti della riunione

La riunione si conclude ricordando la necessità di rispettare le scadenze poste e svolgere con attenzione il lavoro stabilito.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  "DI27",
  "Sarà necessario produrre un Manuale Utente",
  "DI28",
  "Il Manuale Utente sarà disponibile anche per la consultazione web",
  "DI29",
  "Sarà necessario produrre un documento di Specifica Tecnica",
  "DI30",
  "Sarà necessario utilizzare il _framework_ fx ove necessario",
  "DI31",
  "Sarà necessario svolgere una riunione interna a settimana",
  "DI32",
  "Sarà necessario svolgere almeno una riunione esterna ad ogni sprint",
  "DI33",
  "Il package di ogni file contenente codice sorgente deve essere diverso per ogni cartella",
  "DI34",
  "Le interfacce devono avere un nome che inizia con la lettera I",
  "DI35",
  "Le interfacce devono essere su un file separato dagli altri file contenenti codice sorgente",
  "DI36",
  "Le strutture che implementano le interfacce devono essere su un file separato dagli altri file contenenti codice sorgente",
  "DI37",
  "Le strutture rappresentanti attributi delle strutture che implementano le interfacce devono essere su un file separato dagli altri file contenenti codice sorgente",
  "DI38",
  "I file contenenti strutture che sono utilizzati dai _Controller_ dei microservizi devono essere inseriti all'interno di una cartella comune",
  [#issue(3, repo: repo.mvp), #issue(4, repo: repo.mvp)],
  "Effettuare la progettazione del microservizio dedicato alle notifiche di rifornimento (entro 2 Marzo 2025)",
  [#issue(5, repo: repo.mvp), #issue(6, repo: repo.mvp)],
  "Effettuare la progettazione del microservizio dedicato all'autenticazione di un client, limitando tale servizio alla verifica della tipologia di utente (entro 2 Marzo 2025)",
  issue(8, repo: repo.mvp),
  "Configurare il repository dedicato al Minimum Viable Product (MVP) per permettere la Continuous Integration (CI) (entro 2 Marzo 2025)",
  issue(9, repo: repo.mvp),
  "Completare lo studio del framework fx per la Dependency Injection",
  issue(129),
  "Effettuare la redazione delle informazioni relative al settimo sprint (entro 9 Marzo 2025)",
  issue(130),
  "Configurare il repository dei documenti per la realizzazione del manuale utente in versione pdf e web (entro 2 Marzo 2025)",
  issue(138),
  " Aggiungere la Sezione \"Strumenti a Supporto\" a tutti i processi presenti nelle Norme di Progetto (entro 2 Marzo 2025)",
  issue(139),
  "Integrare la sezione \"Sviluppo\" (Sezione 2.2 delle Norme di Progetto ver. 1.0.0) con le informazioni prese in questa riunione in merito alla Codifica (entro 2 Marzo 2025)",
  issue(140),
  "Redigere il verbale della presente riunione (entro 9 Marzo 2025)",
  issue(141),
  "Effettuare la redazione della struttura base del documento e delle Sezioni relative alle tecnologie utilizzate, all'Architettura logica e quella di Deployment (entro 2 Marzo 2025)",
)
