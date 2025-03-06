#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 04, month: 12, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 06, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.loris,
      descr: "Approvazione del verbale.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 04, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
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
  odg: [Nona riunione di _ALimitedGroup_: viene fatto il punto della situazione e stabilito quanto da fare per il periodo successivo],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*04 Dicembre 2024*], [*15.00*], [*16.15*])

+ Aggiornamenti sui lavori in corso
+ Decisioni relative alle attività del prossimo periodo
+ Modifiche al sistema di assegnazione dei ruoli e rendicontazione ore produttive
+ Assegnazione prevista dei ruoli sino al 23-12-2024

#pagebreak()
= Dettaglio riunione

== Aggiornamenti sui lavori in corso

I componenti di _ALimitedGroup_ si sono impegnati nel proseguo della redazione dell'*Analisi dei Requisiti#super[G]* e del *Piano di Progetto#super[G]*, nonché al miglioramento dell'organizzazione delle *Norme di Progetto#super[G]*.

In merito all'*Analisi dei Requisiti#super[G]* sono stati fatti importanti avanzamenti in merito all'individuazione degli _Use Case_ del capitolato#super[G], mentre è stata definitivamente completata la redazione del *Piano di Progetto#super[G]* (sino alla retrospettiva del primo periodo), che adesso dovrà essere verificato.

Le *Norme di Progetto#super[G]* sono state rese molto più fruibili.

Sono stati apportati miglioramenti anche al sistema di _ticketing_ realizzato mediante *GitHub*#super[G] inserendo una miglior cruscotto#super[G] sulle attività nel _backlog_ e quelle in corso e attivando le funzionalità#super[G] di _branch protection_.

== Decisioni relative alle attività del prossimo periodo

Il gruppo, anche a seguito di quanto verificato con la riunione del 03 Dicembre 2024 con #M31, comprende la necessità di proseguire con l'*Analisi dei Requisiti#super[G]*, espandendo più nel dettaglio gli _Use Case_ rilevati e aggiungendo quelli relativi ai requisiti considerati desiderabili o opzionali.

Sarà necessario verificare il *Piano di Progetto#super[G]* e le *Norme di Progetto#super[G]* sino ad ora redatte e proseguire la loro redazione.

I componenti di _ALimitedGroup_ hanno inoltre deciso di iniziare ad approfondire meglio le tecnologie da utilizzare nel _Proof of Concept#super[G] (PoC)_, specie riguardo il linguaggio *Go*#super[G] e la tecnologia *NATS*#super[G].
Infine, il gruppo stabilisce la necessità di redigere il verbale della riunione esterna del 03 Dicembre 2024 con #M31, del verbale interno relativo alla presente riunione e di iniziare la stesura del *Piano di Qualifica#super[G]*.

== Modifiche al sistema di assegnazione dei ruoli e rendicontazione ore produttive <nuove_regole>

Per un lavoro asincrono più efficace, _ALimitedGroup_ userà d'ora in avanti un *Foglio Google* condiviso in cui annotare le ore impiegate in ciascun ruolo in ogni periodo al posto di comunicarle separatamente durante la retrospettiva.

Inoltre è stato stabilito che l'assegnazione dei ruoli sarà più flessibile: d'ora in avanti stabilito il _backlog_ settimanale i ruoli potranno cambiare ad ogni settimana, previo accordo tra le parti qualora questo si renda necessario, e con l'unico vincolo di non coprire due ruoli simultaneamente.

#pagebreak()

== Assegnazione prevista dei ruoli sino al 23-12-2024

In base ai compiti assegnati a ciascuno verrà stabilita la seguente suddivisione dei ruoli:

#align(center)[*#persona(p.loris)* $arrow.r$ *Responsabile*#super[G]]
#align(center)[*#persona(p.sara)* $arrow.r$ *Amministratore*#super[G] \
  *#persona(p.matteo)* $arrow.r$ *Amministratore*#super[G]]
#align(center)[*#persona(p.samuele)* $arrow.r$ *Verificatore*#super[G] \
  *#persona(p.lorenzo)* $arrow.r$ *Verificatore*#super[G]]
#align(center)[*#persona(p.emanuele)* $arrow.r$ *Analista*#super[G] \
  *#persona(p.marco)* $arrow.r$ *Analista*#super[G]
]\

Anche in base a quanto stabilito nella @nuove_regole, tali ruoli sono da considerarsi flessibili.

#pagebreak()
= Esiti della riunione
Il gruppo conclude la riunione con i compiti assegnati e le decisioni intraprese proseguendo con la realizzazione del progetto e impegnandosi a rientare nelle scadenze previste.

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  "DI24",
  "Assegnazione dei ruoli più flessibile",
  "DI25",
  "Iniziare lo studio delle tecnologie",
  issue(30),
  "Redazione Analisi dei Requisiti",
  issue(49),
  "Redazione Piano di Progetto (secondo sprint)",
  issue(57),
  "Redazione verbale esterno 03-12-2024",
  issue(60),
  "Redazione verbale interno 04-12-2024",
  issue(61),
  "Proseguo redazione Norme di Progetto",
  issue(62),
  "Redazione Piano di Qualifica",
)
