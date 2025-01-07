#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 19, month: 11, year: 2024),
  tipo: [esterno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 05, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.loris,
      descr: "Approvazione interna ed esterna del documento",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 21, month: 11, year: 2024),
      autore: p.emanuele,
      verifica: p.lorenzo,
      descr: "Redazione del contenuto",
    ),
  ),
  stato: [Approvato],
  presenze: (p.emanuele, p.samuele, p.sara, p.loris, p.marco, p.matteo, p.lorenzo),
  odg: [Prima riunione con _M31_ dopo l'aggiudicazione del progetto: formalizzazione dei requisiti e dell'organizzazione futura],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*mista*], [*19 Novembre 2024*], [*15.20*], [*16.45*])

+ Presentazione ufficiale dei team
+ Concordare way of working#super[g]
+ Discutere i requisiti del capitolato
+ Organizzare la comunicazione ed i prossimi incontri

#pagebreak()
= Dettaglio riunione
== Presentazione ufficiale dei team
Conosciamo i nostri riferimenti all'interno dell'azienda _M31_:
- *#persona(p.luca)*, #p.luca.ruolo
- *#persona(p.moones)*, #p.moones.ruolo
- *#persona(p.cristian)*, #p.cristian.ruolo

Il gruppo _ALimitedGroup_ ha partecipato in modalità mista all'incontro, secondo la disponibilità offerta da _M31_. In particolare:
- *in sede*: #persona(p.emanuele), #persona(p.samuele), #persona(p.loris)
- *da remoto*: #persona(p.sara), #persona(p.marco), #persona(p.matteo), #persona(p.lorenzo)
I membri si sono tutti presentati qualificandosi con il proprio ruolo attuale, ricordando comunque che verranno ruotati periodicamente.

#pagebreak()

== Concordare way of working#super[g]
Abbiamo discusso principalmente con #persona(p.luca) i dettagli del way of working#super[g]. L'azienda sottolinea l'importanza di *redarre un'ottima documentazione*, sia quella di progetto che quella nel codice. Sono invece disposti ad essere meno stringenti sull'implementazione software e sulla creazione di interfacce utente per rispettare la scadenza preventivata.

Abbiamo concordato l'utilizzo del *metodo agile* con sprint di *due settimane*, presentando però anche una panoramica generale del lavoro.

#pagebreak()

== Discutere i requisiti del capitolato
La riunione si è concentrata nel fissare i requisiti minimi ed opzionali con #persona(p.cristian) e #persona(p.moones).

=== Requisiti funzionali#super[g]
Il *riassortimento predittivo basato su machine learning* diventa requisito *desiderabile* visto che _M31_ non è interessata ad un progetto di ML ed è un processo che richiede molto tempo. Rimane però *obbligatorio il riassortimento automatico* (non predittivo). \
Per quanto riguarda la *risoluzione dei conflitti negli aggiornamenti concorrenti* verranno discussi più nel dettaglio i comportamenti da seguire in alcuni casi limite come ad esempio lo stato offline di un magazzino interessato da ordini o richieste di rifornimento. *Rimane requisito obbligatorio, come i #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=8")[rimanenti requisiti funzionali#super[g] obbligatori]*#footnote("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=8"). \
Verrà discusso nel dettaglio anche la frequenza del *backup dei dati*, che *rimane requisito opzionale, come i #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=9")[rimanenti requisiti funzionali#super[g] opzionali]*#footnote("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=9").

=== Requisiti di sicurezza
Il requisito *monitoraggio del sistema* diventa *opzionale* e si traduce in: implementare un monitoraggio della telemetria e riconoscere il traffico anomalo (per esempio sfruttando Grafana). \
I *#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=9")[requisiti di sicurezza rimanenti]#footnote("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=9") mantengono la proprietà* obbligatorio od opzionale.

=== Requisiti non funzionali#super[g]
La *scalabilità dei microservizi* è *l'unico #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=10")[requisito non funzionale]#footnote("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=10") opzionale*, purché venga fornita almeno una progettazione del sistema. \
Verranno fissate linee guida per la creazione pratica del *test book*, oltre che per l'organizzazione delle *repository*#super[g] (la proposta, al momento, è quella di utilizzare GitLab come mirror e GitHub per l'automazione). \

Accolgono inoltre la *proposta di modifica al livello centrale dell'architettura* #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=6")[ipotizzata nel capitolato]#footnote("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf#page=6") (utilizzando NATS), concordando però che necessiterà di ulteriore confronto per chiarificare l'idea e renderla definitiva. \
Sottolineano di essere aperti all'utilizzo di *qualsiasi tecnologia*. \
Per quanto riguarda la *creazione di una GUI* si tratta di un *requisito desiderabile*, tuttavia è *requisito obbligatorio* l'implementazione di una API per permettere una qualche forma di accesso al software.

#pagebreak()

= Organizzare la comunicazione ed i prossimi incontri
Tutti i membri di _M31_ che abbiamo conosciuto si dimostrano disponibili per rispondere a qualsiasi dubbio o necessità,. Rimarrà però *#persona(p.moones)* il nostro riferimento principale che contatteremo ancora *via email*, almeno per il momento. \
Il *prossimo incontro* tra _M31_ ed _ALimitedGroup_ è attualmente fissato a *martedì 3 dicembre*.

#pagebreak()

= Esiti della riunione
Sono stati categorizzati definitivamente requisiti obbligatori ed opzionali; alcuni dettagli implementativi rimangono aperti a future discussioni per i prossimi incontri. \
_ALimitedGroup_ ringrazia _M31_ per averci accolto nella loro sede e per la disponibilità e professionalità ancora una volta dimostrate.

#pagebreak()

= Tabella delle decisioni e delle azioni

#tabella-decisioni(
  "DI22",
  "L'utilizzo di ML diventa requisito desiderabile",
  "DI23",
  "Il monitoraggio del sistema diventa requisito opzionale",
  "DI24",
  "La creazione di GUI periferiche è requisito desiderabile",
  "DI25",
  "L'implementazione di API per l'accesso al software è requisito obbligatorio",
)

#pagebreak()
= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [*M31*])
#figure(image("../../../assets/firma_ve0312.png", width: auto))
