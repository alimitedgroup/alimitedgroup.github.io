#import "../../lib/importantdocs.typ": *


#let ver = [0.8.0]

#show: body => importantdocs(
  data: datetime(day: 27, month: 03, year: 2025),
  tipo: [esterno],
  versione: ver,
  versioni: (
    (
      vers: "0.8.0",
      date: datetime(day: 27, month: 03, year: 2025),
      autore: p.loris,
      verifica: p.marco,
      descr: "Descrizione del microservizio order" + [ (@micro_order)] + ".",
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 17, month: 03, year: 2025),
      autore: p.matteo,
      verifica: p.sara,
      descr: "Descrizione del microservizio authenticator" + [ (@auth)] + ".",
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 16, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Descrizione pattern Adapter" + [ (@adapter)] + ".",
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 12, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Descrizione Pattern Dependency Injection" + [ (@di)] + ".",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 13, month: 03, year: 2025),
      autore: p.loris,
      verifica: p.marco,
      descr: "Descrizione del microservizio Warehouse" + [ (@micro_warehouse)] + ".",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 09, month: 03, year: 2025),
      autore: p.matteo,
      verifica: p.marco,
      descr: "Descrizione del microservizio Catalog" + [ (@catalog)] + ".",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 27, month: 02, year: 2025),
      autore: p.sara,
      verifica: p.marco,
      descr: "Continuazione sezione architettura" + [ (@architettura)] + ".",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 25, month: 02, year: 2025),
      autore: p.sara,
      verifica: p.emanuele,
      descr: "Prima redazione documento. Sezione introduzione. Sezione tecnologie. Sezione architettura"
        + [ (@introduzione e @architettura)]
        + ".",
    ),
  ),
  stato: [In redazione],
  responsabile: ((p.marco),),
  verificatore: ((p.emanuele), (p.marco), (p.matteo), (p.sara)),
  redattori: (
    (p.loris),
    (p.matteo),
    (p.sara),
  ),
  descrizione: [Questo documento contiene la _Specifica Tecnica_ descritto dal gruppo _ALimitedGroup_ per il Capitolato numero 6 proposto da #M31],
  titolo: "Specifica Tecnica",
  body,
)

= Introduzione <introduzione>
== Scopo del documento
Il presente documento ha l'obiettivo di descrivere in dettaglio l'_architettura_ del prodotto software, fornendo una visione chiara e strutturata delle sue componenti, della loro interazione e della loro distribuzione nel sistema.\

Il documento di *Specifica Tecnica#super[G]* funge da riferimento per la _progettazione_ e _realizzazione del prodotto_, garantendo coerenza con il _Proof of Concept#super[G]_ (PoC#super[G]) iniziale e introducendo miglioramenti volti a consolidarne la maturità architetturale.

Nello specifico, questo documento si propone di:

- Definire l'*architettura logica* del prodotto, illustrando le componenti principali, i loro ruoli e le interconnessioni tra di esse;

- Esporre l'*architettura di deployment#super[G]*, delineando la distribuzione delle componenti nel sistema in esecuzione;

- Documentare i *design pattern architetturali* adottati, evidenziando le scelte progettuali derivate dalle tecnologie selezionate;

- Identificare eventuali *idiomi* (pattern di livello inferiore) utilizzati per ottimizzare la qualità del codice;

- Fornire ulteriori *dettagli progettuali* che valorizzino le scelte architetturali e facilitino la comprensione e manutenzione#super[G] del prodotto.


== Glossario
Per tutte le _definizioni_, _acronimi_ e _abbreviazioni_ utilizzati in questo documento, si faccia riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti rilevanti per il progetto.\
Le parole che possiedono un riferimento nel Glossario saranno indicate nel modo che segue: #align(center)[#text(size: 1.2em)[*`parola`#super("G")*]]

== Riferimenti
=== Riferimenti normativi

- *Capitolato d'appalto C6: Sistema di Gestione di un Magazzino Distribuito - #M31*
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf] \
  *Ultimo Accesso 25 Febbraio 2025*
- *Norme di Progetto#super[G] ver. 1.0.0* \
  #link("https://alimitedgroup.github.io/NP%20v1.0.0.pdf") \
  *Ultimo Accesso 25 Febbraio 2025*

=== Riferimenti informativi
- *Lezione rovesciata - Documentazione* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/FC1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/FC1.pdf] \
  *Ultimo Accesso 25 Febbraio 2025*
- *Regolamento del Progetto didattico* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf] \
  *Ultimo Accesso 25 Febbraio 2025*

- *Glossario* \
  #link("https://alimitedgroup.github.io/Glossаrio.pdf")[#text("https://alimitedgroup.github.io/Glossario.pdf")] \
  *Ultimo Accesso 25 Febbraio 2025*

#pagebreak()

= Tecnologie

Il progetto si basa su un insieme di tecnologie moderne e robuste, selezionate per le loro capacità di supportare efficacemente un'architettura a microservizi e garantire scalabilità, affidabilità e manutenibilità del sistema.

La scelta tecnologica è stata guidata dalla necessità di creare un sistema di gestione del magazzino distribuito che possa operare in modo efficiente anche in condizioni di carico variabile, mantenendo elevati standard di prestazioni e resilienza.

Le tecnologie adottate sono state organizzate in categorie, in base al loro ruolo all'interno dell'architettura: linguaggi di programmazione per lo sviluppo del codice, strumenti per la comunicazione tra microservizi, soluzioni per la virtualizzazione e il _deployment_, e piattaforme per il monitoraggio del sistema.

Di seguito sono elencate e descritte le tecnologie utilizzate, evidenziando le loro caratteristiche principali.
== Linguaggi di programmazione e _framework_

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr),

    fill: (col, row) => if row == 0 {
      rgb(128, 0, 128)
    } else if calc.even(row) {
      rgb(191, 127, 191)
    } else {
      rgb(216, 178, 216)
    },
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Tecnologia*], text(white)[*Versione*], text(white)[*Descrizione*],

    //table row
    [*GO*], [], [Go è un linguaggio di programmazione open-source sviluppato da Google, progettato per essere efficiente, semplice e scalabile. È particolarmente adatto per lo sviluppo di sistemi distribuiti, microservizi e applicazioni cloud-native, grazie alla sua compilazione rapida, alla gestione automatica della memoria e alla facilità di deployment con binari standalone.],
  ),
  caption: [Tecnologie per la programmazione e lo sviluppo software],
)


== Tecnologie per la comunicazione e messaggistica

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr),

    fill: (col, row) => if row == 0 {
      rgb(128, 0, 128)
    } else if calc.even(row) {
      rgb(191, 127, 191)
    } else {
      rgb(216, 178, 216)
    },
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Tecnologia*], text(white)[*Versione*], text(white)[*Descrizione*],

    //table row
    [*NATS*], [], [NATS è un sistema di messaggistica open-source progettato per la comunicazione scalabile, affidabile e a bassa latenza tra servizi distribuiti. Supporta il pub/sub, request/reply e message queueing, rendendolo adatto a microservizi. Grazie alla sua leggerezza e semplicità, NATS permette un'elevata efficienza nella gestione della comunicazione tra componenti, garantendo resilienza e facilità di scalabilità senza necessità di configurazioni complesse.],
  ),
  caption: [Tecnologie per la comunicazione e messaggistica],
)


== Tecnologie per la virtualizzazione e _deployment_

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr),

    fill: (col, row) => if row == 0 {
      rgb(128, 0, 128)
    } else if calc.even(row) {
      rgb(191, 127, 191)
    } else {
      rgb(216, 178, 216)
    },
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Tecnologia*], text(white)[*Versione*], text(white)[*Descrizione*],

    //table row
    [*Docker*], [], [Docker è una piattaforma di virtualizzazione che consente di impacchettare applicazioni e le loro dipendenze in container leggeri e portabili. Grazie alla sua architettura basata su immagini e container, Docker permette di garantire consistenza tra ambienti di sviluppo, test e produzione, semplificando il deployment e la scalabilità delle applicazioni. È particolarmente utile per microservizi e sistemi distribuiti, migliorando l'efficienza nell'uso delle risorse e la velocità di distribuzione del software.],
  ),
  caption: [Tecnologie per la virtualizzazione e _deployment_],
)


== Tecnologie per il monitoraggio dei microservizi

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr),

    fill: (col, row) => if row == 0 {
      rgb(128, 0, 128)
    } else if calc.even(row) {
      rgb(191, 127, 191)
    } else {
      rgb(216, 178, 216)
    },
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Tecnologia*], text(white)[*Versione*], text(white)[*Descrizione*],
    [*Grafana*],
    [],
    [Grafana è una piattaforma open-source per la visualizzazione e l'analisi di dati di monitoraggio. Supporta diverse fonti di dati (come Prometheus, Loki e Mimir) e consente la creazione di dashboard interattive per il monitoraggio in tempo reale.],
    [*Prometheus*],
    [],
    [Prometheus è un sistema di monitoraggio e allerta open-source focalizzato sulla raccolta di metriche attraverso un modello pull.],
    [*Loki*],
    [],
    [Loki è un sistema di log aggregation sviluppato da Grafana Labs, ottimizzato per la gestione dei log in modo scalabile ed efficiente. Si integra con Grafana per la visualizzazione e utilizza un'architettura simile a Prometheus, semplificando la correlazione tra metriche e log.],
    [*Mimir*],
    [],
    [Mimir è un'estensione di Prometheus sviluppata da Grafana Labs per la gestione di metriche su larga scala. Consente lo storage e la gestione distribuita di serie temporali, migliorando la scalabilità e la resilienza rispetto a un'istanza standalone di Prometheus.],
  ),
  caption: [Tecnologie per il monitoraggio dei microservizi],
)

#pagebreak()
= Architettura <architettura>
== Architettura logica
Il sistema è progettato seguendo l'*architettura esagonale*, un modello che promuove una netta separazione tra la logica di _business_ e le interazioni con servizi esterni, fonti di dati e interfacce utente.\
Questo approccio organizza il sistema attorno a un nucleo centrale, circondato da porte che fungono da interfacce con il mondo esterno, garantendo modularità e testabilità.

Il *nucleo* dell'applicazione contiene la logica di dominio e le regole di _business_, progettato per essere indipendente dai dettagli tecnologici esterni, in modo da favorire la manutenibilità e l'estendibilità del sistema.

Le *porte* costituiscono il punto di connessione tra il nucleo e il mondo esterno, consentendo una comunicazione strutturata:

- _Inbound Ports_ (o _Use Cases_): consentono l'invocazione della logica del nucleo da parte di componenti esterni, definendo i punti di accesso all'applicazione e isolando la logica di dominio da implementazioni tecnologiche specifiche.

- _Outbound Ports_: permettono al nucleo di interagire con servizi esterni, mantenendo un'astrazione che preserva l'indipendenza della logica di business dai dettagli di implementazione.

I *_services_* implementano le inbound ports e fanno parte della business logic, concentrandosi esclusivamente sulla logica di dominio senza dipendenze tecnologiche specifiche.

Gli *_adapters_* rappresentano lo strato esterno del sistema e si suddividono in:

- _Input Adapters_ (o _Controllers_): ricevono input dall'esterno e invocano le operazioni sulle porte in ingresso, traducendo le richieste esterne in operazioni comprensibili per il nucleo.

- _Output Adapters_: gestiscono la comunicazione con l'esterno attraverso le porte in uscita, traducendo le risposte del nucleo in formati comprensibili per i servizi esterni.

== Architettura di _deployment_
=== Sistema a microservizi

L'architettura di deployment#super[G] adottata per il sistema è basata su *microservizi*, come richiesto dal capitolato#super[G].\
Questa scelta consente una maggiore scalabilità, resilienza e indipendenza nello sviluppo e nel _deployment_ dei componenti software.

Ogni microservizio è indipendente e responsabile#super[G] di un insieme specifico di funzionalità#super[G].

I microservizi comunicano tra loro tramite NATS#super[G], un sistema di messaggistica publish-subscribe ad alte prestazioni. Questa soluzione permette:

- Comunicazione asincrona, sincrona ed _event-driven_, riducendo l'accoppiamento tra i servizi;

- Maggiore scalabilità, in quanto i messaggi possono essere gestiti in parallelo;

- Affidabilità nella trasmissione dei dati grazie alla capacità di gestire il _buffering_ e il re-invio dei messaggi in caso di errore.


Oltre a NATS#super[G], i microservizi possono esporre API#super[G] REST per le comunicazioni con il _client_.


Il _deployment_ dei microservizi avviene in ambienti virtualizzati tramite Docker#super[G].
Questo garantisce:

- Scalabilità dinamica, adattando le risorse ai carichi di lavoro;

- Isolamento dei servizi, evitando impatti negativi tra componenti;

- Gestione semplificata del ciclo di vita dei servizi.

Questa architettura#super[G] consente di ottenere un sistema altamente scalabile, resiliente e facilmente manutenibile, ottimizzato per ambienti distribuiti e carichi di lavoro variabili.

=== _Client_ monolitico

Il _client_ è progettato come un'applicazione monolitica che funge da interfaccia unificata verso i diversi microservizi del _backend_#super[G]. Questa scelta architetturale offre diversi vantaggi:

- Esperienza utente coerente: un'interfaccia unificata garantisce consistenza nell'interazione con le diverse funzionalità#super[G] del sistema;

- Semplificazione della gestione dello stato: la gestione delle sessioni utente e della sincronizzazione dei dati sono facilitate;

- Ottimizzazione delle comunicazioni: il _client_ gestisce in modo efficiente le chiamate verso i diversi microservizi, mascherando la complessità dell'architettura distribuita all'utente finale.

== Design pattern

=== Dependency injection <di>

==== Descrizione del pattern
Il pattern _Dependency Injection#super[G]_ è un design pattern strutturale che consente di rendere esplicite le dipendenze di un oggetto.\
Invece di creare direttamente le dipendenze all'interno delle classi o dei componenti, queste possono essere fornite dall'esterno: in questo modo, un componente dichiara le sue dipendenze senza doversi preoccupare di istanziarle, permettendo dunque una maggiore modularità tra i diversi componenti del Sistema.
Esistono principalmente due tipi di _dependency injection#super[G]_:

- _Constructor Injection_: le dipendenze vengono passate attraverso il costruttore;
- _Setter Injection_: le dipendenze vengono impostate tramite metodi setter.

Nel progetto viene utilizzata la *Constructor Injection*.

==== Motivazioni dell'utilizzo del pattern
L'utilizzo del pattern _Dependency Injection#super[G]_ nel progetto porta numerosi vantaggi:

- *disaccoppiamento*: i componenti sono meno legati tra loro, facilitando la manutenzione#super[G] e l'estensione del codice;
- *flessibilità*: è più semplice sostituire un'implementazione con un'altra senza modificare il codice client;
- *testabilità*: è possibile sostituire le istanze reali degli oggetti richiesti con _mock_ durante i test#super[G];
- *modularità*: i componenti possono essere sviluppati, testati e utilizzati in modo indipendente;
- *gestione centralizzata*:la _dependency injection#super[G]_ rende possibile l'utilizzo di _framework_ specifici per la fornitura automatica delle istanze necessarie per soddisfare le dipendenze (nel nostro caso, attraverso *Fx*, vedi @fwfx).

==== Framework Fx di _Uber_ <fwfx>
*Fx* è un framework per la _dependency injection#super[G]_ utilizzabile con il linguaggio *Go*#super[G] sviluppato da _Uber_.\
Per maggiori informazioni si consiglia la consultazione del #link("https://uber-go.github.io/fx/index.html")[sito web] del progetto.

===== Costrutti principali
I costrutti principali di Fx utilizzati nel progetto sono:

- *fx.Provide*: registra una funzione costruttore, ovvero una funzione che crea e restituisce un'istanza di un oggetto. Tale istanza verrà poi riutilizzata ovunque sarà richiesta come dipendenza;

- *fx.Supply*: fornisce valori istanziati per _Dependency Injection#super[G]_ come se fossero stati restituiti da un costruttore.
Viene utilizzato il tipo più specifico di ogni valore;

- *fx.Invoke*: esegue una funzione dopo la costruzione di tutte le dipendenze;

- *fx.Options*: raggruppa più opzioni Fx, quindi dipendenze già dichiarate, garantendo una configurazione modulare, rapida e flessibile.

- *fx.Lifecycle*: gestisce il ciclo di vita dell'applicazione con hook OnStart e OnStop;

- *fx.In*: sono espressioni da inserire all'interno di strutture con un insieme di dipendenze da fornire ad un oggetto. Molto utile per ridurre il numero di parametri richiesti da un costruttore.

Un aspetto importante del progetto è l'uso di file \*.module.go in cui vengono definiti moduli *Fx* per organizzare le dipendenze in modo gerarchico.\
Ogni modulo espone una variabile _Module_ che aggrega tutte le opzioni Fx relative a quel componente mediante fx.Options.

//includere anche il fatto che esistono file *.module.go

==== Utilizzo del pattern nel progetto
Nel progetto, il pattern _Dependency Injection#super[G]_ viene applicato in modo estensivo, utilizzandolo praticamente in ogni componente dell'architettura.
Ogni microservizio utilizza *Fx* per gestire le proprie dipendenze, dalla configurazione fino ai componenti applicativi.
I servizi vengono costruiti dinamicamente all'avvio dell'applicazione, con tutte le dipendenze iniettate automaticamente mediante *Fx*.

=== Object adapter<adapter>
==== Descrizione del pattern
Il pattern _Object Adapter_ è un design pattern di tipo strutturale che permette ad oggetti con interfacce incompatibili di collaborare tra loro.\
In particolare, il _client_ comunica con un'interfaccia _target_ implementata dall'_adapter_, il quale, tramite composizione, contiene l'oggetto _adaptee_.\
L'adapter agisce come un intermediario, convertendo le richieste del client in chiamate compatibili con l'oggetto adattato.
A differenza del _Class Adapter_ (che utilizza l'ereditarietà), l'_Object Adapter_ mantiene un riferimento all'oggetto da adattare (_adaptee_), delegando a quest'ultimo l'esecuzione della richiesta appena convertita.
La struttura tipica dell'Object Adapter include:
- una _Target Interface_ che definisce l'interfaccia che il client si aspetta di utilizzare;
- un _Adaptee_ che è l'oggetto con l'interfaccia incompatibile;
- un _Adapter_ che implementa l'interfaccia Target e mantiene un riferimento all'_Adaptee_.


==== Motivazioni dell'utilizzo del pattern
L'utilizzo del pattern _Object adapter_ nel progetto porta diversi vantaggi:

- *flessibilità maggiore*: l'_adapter_ può lavorare con qualsiasi sottoclasse dell'oggetto adattato;

- *riutilizzabilità*: l'_adapter_ può adattare diverse interfacce;

- *manutenibilità*: separando l'_adapter_ dall'oggetto concreto, eventuali modifiche all'oggetto non impattano direttamente sull'_adapter_.


==== Utilizzo del pattern nel progetto
Nel contesto dell'architettura esagonale adottata, gli _Object Adapter_ sono utilizzati principalmente tra gli oggetti che assolvono i compiti della _business logic_ e della _persistence logic_, ma anche per le comunicazioni dalla _business logic_ all'esterno del microservizio.

- _Input Adapter_ (o _Controller_): implementati come _adapter_ che traducono le richieste esterne (come richieste HTTP o messaggi NATS#super[G] )in chiamate alle _inbound ports_ (o _Use Cases_) del nucleo applicativo. Questi _adapter_ convertono i formati di richiesta esterni in oggetti di dominio comprensibili per il nucleo;
- _Output Adapter_: implementano le _outbound ports_ e adattano le chiamate del nucleo verso servizi esterni come sistemi di messaggistica o API#super[G] di terze parti. Questi _adapter_ convertono gli oggetti di dominio in formati compatibili con i sistemi esterni. Un esempio è *AuthAdapter*, le cui informazioni sono disponibili alla @authadapter.

=== Strategy

==== Descrizione del pattern

Il pattern _Strategy_ consiste nell'incapsulare una parte di codice all'interno di una classe specifica. Tale classe deve soddisfare un'interfaccia che viene poi utilizzata dal Sistema per invocarne i metodi esposti: questo pattern permette di cambiare in maniera semplice e veloce parti di codice soggette a modifiche.

==== Motivazioni dell'utilizzo del pattern

Il pattern _Strategy_ viene utilizzato quando una componente di natura algoritmica del Sistema sviluppato non è definitiva ma soggetta a cambiamenti futuri: eseguirne la codifica forzata all'interno della funzione che la utilizza potrebbe risultare controproducente, in quanto, un suo cambiamento, potrebbe determinare uno stravolgimento del codice: per questo motivo, la parte algoritmica viene incapsulata all'interno di un oggetto che può essere facilmente sostituito.

==== Utilizzo del pattern nel progetto
Nel nostro progetto, il pattern _Strategy_ è stato utilizzato nel microservizio _Authenticator_ (@auth): #M31 infatti necessita sicuramente in futuro di rendere più complesso l'algoritmo utilizzato per verificare le credenziali di un Utente, aggiungendo anzitutto il controllo di _username_ e _password_ e altri meccanismi in un secondo momento. Ogni algoritmo, per via della maggiore complessità, potrebbe avere sensibili differenze e nessun tratto in comune con le versioni precedenti, motivo per cui si è deciso di utilizzare questo pattern e non il pattern _Template Method_.

== Microservizi sviluppati

Saranno ora esposti i microservizi sviluppati.

Sebbene *Go*#super[G] non abbia il concetto di "classe", comunque è possibile realizzare *strutture* e *funzioni* invocabili solo da quelle specifiche strutture, potendo così imitare, nel senso largo del termine, il funzionamento delle classi in un linguaggio di programmazione ad oggetti.

Si noti come dunque, in questo documento, i termini struttura e classe saranno utilizzati come sinonimi per il motivo sopra citato.

Per via del linguaggio utilizzato, talvolta potrebbe non essere stato possibile utilizzare il concetto di _Information Hiding_, specie in caso l'oggetto in questione abbia necessità di essere serializzato in formato _Json_. Inoltre, nel linguaggio Go#super[G], la privatezza di un attributo resta comunque limitata al di fuori del _package_.

Se la descrizione di un oggetto è assente questo implica che tale oggetto è una *struttura vuota*, ovvero senza alcun attributo e funzione da lei solamente invocabile.

Infine, si ricorda che, nel linguaggio Go#super[G], un nome di funzione o attributo che inizia con lettera minuscola simboleggia che lo stesso è visibile solo all'interno dello stesso _package_.

=== Oggetti comuni tra microservizi //COMMONOBJ

==== ResponseDTO <ResponseDTO>
#figure(
  image("../../assets/warehouse/ResponseDTO.png", width: 25%),
  caption: "Common - ResponseDTO",
)
Rappresenta un DTO generico per le risposte, utilizzabile per incapsulare un messaggio di tipo generico `T` e un eventuale messaggio di errore.

*Descrizione degli attributi della struttura:*

- *`Message T`*: rappresenta il messaggio generico di tipo `T` incluso nella risposta;
- *`Error string`*: rappresenta un messaggio di errore, se presente.

// ==== ErrorResponseDTO <ErrorResponseDTO>

// Rappresenta un DTO specifico per le risposte di errore, derivato da `ResponseDTO` con un tipo generico `any`.

// *Descrizione degli attributi della struttura:*

// - *`Message any`*: rappresenta un messaggio generico incluso nella risposta di errore;
// - *`Error string`*: rappresenta un messaggio di errore, se presente.

// WAREHOUSE

==== StockUpdate <WarehouseStockUpdate>
#figure(
  image("../../assets/warehouse/StreamStockUpdate.png", width: 35%),
  caption: "Warehouse - StockUpdate",
)

Rappresenta un aggiornamento dello stock#super[G] nel sistema, utilizzato per comunicare variazioni di quantità di merci tra i microservizi.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'aggiornamento dello stock#super[G];
- *`WarehouseID string`*: rappresenta l'identificativo del magazzino coinvolto nell'aggiornamento dello stock#super[G];
- *`Type StockUpdateType`*: rappresenta il tipo di aggiornamento dello stock#super[G]. Può assumere i seguenti valori:
  - *`add`*: per aggiungere stock#super[G];
  - *`remove`*: per rimuovere stock#super[G];
  - *`order`*: per aggiornamenti legati a ordini;
  - *`transfer`*: per aggiornamenti legati a trasferimenti;
- *`Goods []StockUpdateGood`*: rappresenta una lista di oggetti `StockUpdateGood` che contengono le informazioni sulle merci aggiornate;
- *`OrderID string`*: rappresenta l'identificativo dell'ordine associato all'aggiornamento dello stock#super[G];
- *`TransferID string`*: rappresenta l'identificativo del trasferimento#super[G] associato all'aggiornamento dello stock#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata all'aggiornamento dello stock#super[G];
- *`Timestamp int64`*: rappresenta il _timestamp_ dell'aggiornamento dello stock#super[G].

==== StockUpdateType <WarehouseStockUpdateType>

Rappresenta il tipo di aggiornamento dello stock#super[G]. È un tipo stringa con i seguenti valori possibili:

- *`add`*: per aggiungere stock#super[G];
- *`remove`*: per rimuovere stock#super[G];
- *`order`*: per aggiornamenti legati a ordini;
- *`transfer`*: per aggiornamenti legati a trasferimenti.

==== StockUpdateGood <WarehouseStockUpdateGood>

#figure(
  image("../../assets/warehouse/StreamStockUpdateGood.png", width: 27%),
  caption: "Warehouse - StockUpdateGood",
)

Rappresenta una merce aggiornata nel comando di aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce aggiornata;
- *`Quantity int64`*: rappresenta la nuova quantità della merce aggiornata;
- *`Delta int64`*: rappresenta la differenza di quantità della merce rispetto all'ultimo stato.

==== AddStockRequestDTO <WarehouseAddStockRequestDTO>
#figure(
  image("../../assets/warehouse/AddStockRequestDTO.png", width: 25%),
  caption: "Warehouse - AddStockRequestDTO",
)

Questo DTO viene utilizzato per rappresentare la richiesta di aggiunta di stock#super[G], e viene utilizzato dal controller @WarehouseStockController

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce a cui aggiungere stock#super[G];
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da aggiungere alla merce.

==== RemoveStockRequestDTO <WarehouseRemoveStockRequestDTO>
#figure(
  image("../../assets/warehouse/RemoveStockRequestDTO.png", width: 25%),
  caption: "Warehouse - RemoveStockRequestDTO",
)

Questo DTO viene utilizzato per rappresentare la richiesta di rimozione di stock#super[G], e viene utilizzato dal controller @WarehouseStockController

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce da cui rimuovere stock#super[G];
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da rimuovere dalla merce.

==== ReserveStockRequestDTO <WarehouseReserveStockRequestDTO>
#figure(
  image("../../assets/warehouse/ReserveStockRequestDTO.png", width: 30%),
  caption: "Warehouse - ReserveStockRequestDTO",
)

Questo DTO viene utilizzato per rappresentare la richiesta di prenotazione di stock#super[G] nel magazzino.

*Descrizione degli attributi della struttura:*

- *`Goods []ReserveStockItem`*: rappresenta una lista di oggetti `ReserveStockItem` che contengono le informazioni sulle merci da prenotare.

==== ReserveStockItem <WarehouseReserveStockItem>
#figure(
  image("../../assets/warehouse/ReserveStockItem.png", width: 25%),
  caption: "Warehouse - ReserveStockItem",
)

Rappresenta una merce coinvolta nella richiesta di prenotazione di stock#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce da prenotare;
- *`Quantity int64`*: rappresenta la quantità della merce da prenotare.

==== HealthCheckResponseDTO <WarehouseHealthCheckResponseDTO>
#figure(
  image("../../assets/warehouse/HealthCheckResponseDTO.png", width: 25%),
  caption: "Warehouse - HealthCheckResponseDTO",
)
Rappresenta un DTO specifico per le risposte di controllo dello stato di salute del microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message string`*: rappresenta il messaggio di stato del microservizio *Warehouse*#super[G];
- *`Error string`*: rappresenta un messaggio di errore, se presente.

==== ReserveStockResponseDTO <WarehouseReserveStockResponseDTO>
#figure(
  image("../../assets/warehouse/ReserveStockResponseDTO.png", width: 25%),
  caption: "Warehouse - ReserveStockResponseDTO",
)
Rappresenta un DTO specifico per le risposte relative alla prenotazione di stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message ReserveStockInfo`*: rappresenta le informazioni sulla prenotazione dello stock#super[G] nel microservizio *Warehouse*#super[G];
- *`Error string`*: rappresenta un messaggio di errore, se presente.

==== ReserveStockInfo <WarehouseReserveStockInfo>
#figure(
  image("../../assets/warehouse/ReserveStockInfo.png", width: 25%),
  caption: "Warehouse - ReserveStockInfo",
)
Rappresenta le informazioni relative a una prenotazione di stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`ReservationID string`*: rappresenta l'identificativo univoco della prenotazione nel microservizio *Warehouse*#super[G].

// ORDER

==== OrderUpdate <StreamOrderUpdate>
#figure(
  image("../../assets/order/OrderUpdate.png", width: 50%),
  caption: "OrderUpdate",
)

Rappresenta un aggiornamento di un ordine#super[G] nel sistema.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'ordine aggiornato;
- *`Status string`*: rappresenta lo stato dell'ordine aggiornato (es. "Created", "Filled");
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`Goods []OrderUpdateGood`*: rappresenta una lista di oggetti `OrderUpdateGood` che contengono le informazioni sulle merci coinvolte nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione dell'ordine;
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento dell'ordine.

==== OrderUpdateGood <StreamOrderUpdateGood>
#figure(
  image("../../assets/order/OrderUpdateGood.png", width: 35%),
  caption: "OrderUpdateGood",
)

Rappresenta una merce coinvolta in un aggiornamento di un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce coinvolta nell'ordine;
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nell'ordine.

==== TransferUpdate <StreamTransferUpdate>
#figure(
  image("../../assets/order/TransferUpdate.png", width: 50%),
  caption: "TransferUpdate",
)

Rappresenta un aggiornamento di un trasferimento#super[G] nel sistema.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del trasferimento#super[G] aggiornato;
- *`Status string`*: rappresenta lo stato del trasferimento#super[G] aggiornato (es. "Created", "Filled");
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Goods []TransferUpdateGood`*: rappresenta una lista di oggetti `TransferUpdateGood` che contengono le informazioni sulle merci coinvolte nel trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G];
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione del trasferimento#super[G];
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento del trasferimento#super[G].

==== TransferUpdateGood <StreamTransferUpdateGood>
#figure(
  image("../../assets/order/TransferUpdateGood.png", width: 35%),
  caption: "TransferUpdateGood",
)

Rappresenta una merce coinvolta in un aggiornamento di un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce coinvolta nel trasferimento#super[G];
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nel trasferimento#super[G].


==== CreateOrderRequestDTO <WarehouseCreateOrderRequestDTO>
#figure(
  image("../../assets/order/CreateOrderRequestDTO.png", width: 25%),
  caption: "Warehouse - CreateOrderRequestDTO",
)
Rappresenta il DTO utilizzato per creare un nuovo ordine#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`Goods []CreateOrderGood`*: rappresenta una lista di oggetti `CreateOrderGood` che contengono le informazioni sulle merci incluse nell'ordine.

==== CreateOrderGood <WarehouseCreateOrderGood>
#figure(
  image("../../assets/order/CreateOrderGood.png", width: 25%),
  caption: "Warehouse - CreateOrderGood",
)
Rappresenta una merce inclusa in un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce inclusa nell'ordine;
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nell'ordine.

==== CreateTransferRequestDTO <WarehouseCreateTransferRequestDTO>
#figure(
  image("../../assets/order/CreateTransferRequestDTO.png", width: 25%),
  caption: "Warehouse - CreateTransferRequestDTO",
)
Rappresenta il DTO utilizzato per creare un nuovo trasferimento#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Goods []TransferGood`*: rappresenta una lista di oggetti `TransferGood` che contengono le informazioni sulle merci incluse nel trasferimento#super[G].

==== TransferGood <WarehouseTransferGood>
#figure(
  image("../../assets/order/TransferGood.png", width: 25%),
  caption: "Warehouse - TransferGood",
)
Rappresenta una merce inclusa in un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce inclusa nel trasferimento#super[G];
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nel trasferimento#super[G].

==== GetOrderRequestDTO <WarehouseGetOrderRequestDTO>
#figure(
  image("../../assets/order/GetOrderRequestDTO.png", width: 25%),
  caption: "Warehouse - GetOrderRequestDTO",
)
Rappresenta il DTO utilizzato per richiedere i dettagli di un ordine#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`OrderID string`*: rappresenta l'identificativo univoco dell'ordine richiesto.

==== GetTransferRequestDTO <WarehouseGetTransferRequestDTO>
#figure(
  image("../../assets/order/GetTransferRequestDTO.png", width: 25%),
  caption: "Warehouse - GetTransferRequestDTO",
)
Rappresenta il DTO utilizzato per richiedere i dettagli di un trasferimento#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`TransferID string`*: rappresenta l'identificativo univoco del trasferimento#super[G] richiesto.

==== OrderCreateResponseDTO <OrderCreateResponseDTO>
#figure(
  image("../../assets/order/OrderCreateResponseDTO.png", width: 25%),
  caption: "OrderCreateResponseDTO",
)
Rappresenta la risposta alla richiesta di creazione di un ordine#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message OrderCreateInfo`*: rappresenta le informazioni relative all'ordine creato;
- *`Error string`*: rappresenta un messaggio di errore, se presente.

==== OrderCreateInfo <OrderCreateInfo>
#figure(
  image("../../assets/order/OrderCreateInfo.png", width: 25%),
  caption: "OrderCreateInfo",
)
Rappresenta le informazioni relative all'ordine creato nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`OrderID string`*: rappresenta l'identificativo univoco dell'ordine creato.

==== GetOrderResponseDTO <GetOrderResponseDTO>
#figure(
  image("../../assets/order/GetOrderResponseDTO.png", width: 25%),
  caption: "GetOrderResponseDTO",
)
Rappresenta la risposta alla richiesta di informazioni su un ordine#super[G] specifico nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message OrderInfo`*: rappresenta le informazioni relative all'ordine richiesto;
- *`Error string`*: rappresenta un messaggio di errore, se presente.

==== OrderInfo <OrderInfo>
#figure(
  image("../../assets/order/OrderInfo.png", width: 25%),
  caption: "OrderInfo",
)
Rappresenta le informazioni relative a un ordine#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`OrderID string`*: rappresenta l'identificativo univoco dell'ordine;
- *`Status string`*: rappresenta lo stato dell'ordine;
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`Goods []OrderInfoGood`*: rappresenta una lista di oggetti `OrderInfoGood` che contengono le informazioni sulle merci incluse nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine.

==== OrderInfoGood <OrderInfoGood>
#figure(
  image("../../assets/order/OrderInfoGood.png", width: 25%),
  caption: "OrderInfoGood",
)
Rappresenta una merce inclusa in un ordine#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce;
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nell'ordine.

==== GetAllOrderResponseDTO <GetAllOrderResponseDTO>
#figure(
  image("../../assets/order/GetAllOrderResponseDTO.png", width: 25%),
  caption: "GetAllOrderResponseDTO",
)
Rappresenta la risposta alla richiesta di informazioni su tutti gli ordini nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message []OrderInfo`*: rappresenta una lista di informazioni relative agli ordini richiesti;
- *`Error string`*: rappresenta un messaggio di errore, se presente.

==== TransferCreateResponseDTO <TransferCreateResponseDTO>
#figure(
  image("../../assets/order/TransferCreateResponseDTO.png", width: 25%),
  caption: "TransferCreateResponseDTO",
)
Rappresenta la risposta alla richiesta di creazione di un trasferimento#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message TransferCreateInfo`*: rappresenta le informazioni relative al trasferimento#super[G] creato;
- *`Error string`*: rappresenta un messaggio di errore, se presente.

==== TransferCreateInfo <TransferCreateInfo>
#figure(
  image("../../assets/order/TransferCreateInfo.png", width: 25%),
  caption: "TransferCreateInfo",
)
Rappresenta le informazioni relative al trasferimento#super[G] creato nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`TransferID string`*: rappresenta l'identificativo univoco del trasferimento#super[G] creato.

==== GetTransferResponseDTO <GetTransferResponseDTO>
#figure(
  image("../../assets/order/GetTransferResponseDTO.png", width: 25%),
  caption: "GetTransferResponseDTO",
)
Rappresenta la risposta alla richiesta di informazioni su un trasferimento#super[G] specifico nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message TransferInfo`*: rappresenta le informazioni relative al trasferimento#super[G] richiesto;
- *`Error string`*: rappresenta un messaggio di errore, se presente.

==== TransferInfo <TransferInfo>
#figure(
  image("../../assets/order/TransferInfo.png", width: 25%),
  caption: "TransferInfo",
)
Rappresenta le informazioni relative a un trasferimento#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`TransferID string`*: rappresenta l'identificativo univoco del trasferimento#super[G];
- *`Status string`*: rappresenta lo stato del trasferimento#super[G];
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Goods []TransferInfoGood`*: rappresenta una lista di oggetti `TransferInfoGood` che contengono le informazioni sulle merci incluse nel trasferimento#super[G].

==== TransferInfoGood <TransferInfoGood>
#figure(
  image("../../assets/order/TransferInfoGood.png", width: 25%),
  caption: "TransferInfoGood",
)
Rappresenta una merce inclusa in un trasferimento#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce;
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nel trasferimento#super[G].

==== GetAllTransferResponseDTO <GetAllTransferResponseDTO>
#figure(
  image("../../assets/order/GetAllTransferResponseDTO.png", width: 25%),
  caption: "GetAllTransferResponseDTO",
)
Rappresenta la risposta alla richiesta di informazioni su tutti i trasferimenti nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`Message []TransferInfo`*: rappresenta una lista di informazioni relative ai trasferimenti richiesti;
- *`Error string`*: rappresenta un messaggio di errore, se presente.

// CATALOG

==== GoodUpdateData

#figure(
  image("../../assets/catalog/GoodUpdateData.png", width: 35%),
  caption: "GoodUpdateData",
)

Struttura utile per rappresentare una modifica alle informazioni di una merce o all'aggiunta di una merce.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce da aggiungere o da modificare;
- *`GoodNewName string`*: rappresenta il nome da dare alla merce in questione;
- *`GoodNewDescription string`*: rappresenta la descrizione da dare alla merce in questione.

==== GetGoodsDataResponseDTO

#figure(
  image("../../assets/catalog/GetGoodsDataResponseDTO.png", width: 55%),
  caption: "GetGoodsDataResponseDTO",
)

Rappresenta la risposta fornita alla richiesta di ottenimento informazioni sulle merci presenti nel Sistema.

*Descrizione degli attributi della struttura:*
- *`GoodMap map[string]catalogCommon.Good`*: è la mappa fornita in risposta alla richiesta. Come chiave ha una *string* che rappresenta l'id della merce, mentre come valore ha un oggetto descritto alla @Good
- *`Err string`*: quando compilato, esplicita l'errore riscontrato nell'elaborare la richiesta. Se nessun errore è presente, la stringa è vuota.

==== GetWarehouseResponseDTO

#figure(
  image("../../assets/catalog/GetWarehouseResponseDTO.png", width: 60%),
  caption: "GetWarehouseResponseDTO",
)

Rappresenta la risposta alla richiesta di ottenimento informazioni sull'inventario dei magazzini memorizzati nel Sistema.

*Descrizione degli attributi della struttura:*

- *`WarehouseMap map[string]catalogCommon.Warehouse`*: mappa avente come chiave una *string* rappresentante l'id del magazzino, mentre valore un oggetto descritto alla @Warehouse
- *`Err string`*: quando compilato, esplicita l'errore riscontrato nell'elaborare la richiesta. Se nessun errore è presente, la stringa è vuota.

==== GetGoodsQuantityResponseDTO

#figure(
  image("../../assets/catalog/GetGoodsQuantityResponseDTO.png", width: 60%),
  caption: "GetGoodsQuantityResponseDTO",
)

Rappresenta la risposta alla richiesta di ottenimento informazioni sulla quantità globale delle merci.

*Descrizione degli attributi della struttura:*

- *`GoodMap map[string]int64`*: mappa avente come chiave una *string* che rappresenta l'id della merce, mentre come valore un *int64* che ne rappresenta la quantità;
- *`Err string`*: quando compilato, esplicita l'errore riscontrato nell'elaborare la richiesta. Se nessun errore è presente, la stringa è vuota.


// AUTH

==== AuthLoginRequest

#figure(
  image("../../assets/authenticator/AuthLoginRequest.png", width: 30%),
  caption: "AuthLoginRequest",
)

Rappresenta la richiesta di ottenimento di un Token, necessario per operare con il Sistema.

*Descrizione degli attributi della struttura:*

- *`Username string`*: username dell'utente che vuole ottenere un Token

==== AuthLoginResponse

#figure(
  image("../../assets/authenticator/AuthLoginResponse.png", width: 30%),
  caption: "AuthLoginResponse",
)

Rappresenta la risposta alla richiesta di un Token.

*Descrizione degli attributi della struttura:*

- *`token string`*: rappresenta il Token. Il campo rimane vuoto se la richiesta non era corretta.

=== Router dei microservizi

//descrizione generale delle classi router

=== Configurazioni dei microservizi

//descrizione generale delle classi config

=== `Main` dei microservizi

//descrivere cosa genericamente accade nel Main dei vari microservizi


=== Funzionamento Ordini e Trasferimenti
Ogni magazzino è gestito da un microservizio dedicato, respоnsabile della gestione dello stock#super[G] specifico di quel magazzino. La gestione degli ordini è invece affidata al microservizio Order (@micro_order), che monitora costantemente gli aggiornamenti provenienti dai vari magazzini per mantenere aggiornato il proprio stato interno sulle disponibilità.

Quando il client ha terminato di costruire un ordine#super[G] localmente, per confermarlo contatta il microservizio Order, che genera un evento di tipo _order_update_ con stato _Created_. Questo evento viene salvato nello stream di NATS#super[G]. Contemporaneamente, viene inviato un evento sullo stream _contact_warehouses_, che sarà ascoltato dai microservizi Order (@micro_order) tramite un _consumer group_, in modo che una sola istanza gestisca l'evento. Questo microservizio si occupa di contattare i magazzini coinvolti per prenotare le merci necessarie. La prenotazione avviene tramite una richiesta NATS#super[G].

La selezione dei magazzini avviene in base alla disponibilità delle merci richieste, utilizzando un algoritmo che privilegia i magazzini con una quantità di merce più vicina a quella necessaria.

Dopo aver completato con successo la prenotazione delle merci presso i magazzini interessati, l'ordine viene aggiornato allo stato _Filled_. A questo punto, viene generato un nuovo evento di tipo _order_update_, che include la lista delle prenotazioni effettuate. I microservizi Warehouse#super[G] (@micro_warehouse) coinvolti ricevono questo evento e aggiornano di conseguenza lo stock#super[G] disponibile.

Infine, quando i microservizi Order ricevono gli aggiornamenti degli stock#super[G] dai magazzini, lo stato dell'ordine viene aggiornato internamente a _Completed_, informando così l'utente del completamento dell'ordine.

Per evitare conflitti tra ordini, il sistema utilizza, dunque, un meccanismo di prenotazioni che assicura la disponibilità delle merci al momento della conferma dell'ordine. Inoltre, la gestione distribuita degli stock#super[G] tra i vari magazzini elimina problemi di concorrenza e migliora la scalabilità complessiva del sistema.

Una funzionalità#super[G] simile agli ordini è quella dei trasferimenti, dei particolari ordini che permettono di spostare della merce da un magazzino mittente a un magazzino destinatario.
I trasferimenti vengono gestiti in modo simile agli ordini, con la differenza che non viene utilizzato nessun algoritmo per la selezione del magazzino destinatario, in quanto è già specificato nella richiesta di trasferimento#super[G] ,e vengono utilizzati gli eventi di tipo _transfer_update_ al posto degli omologhi per gli ordini (_order_update_).

#pagebreak()

=== Authenticator <auth>

#figure(
  image("../../assets/authenticator/Auth.png", width: 130%),
  caption: "Authenticator",
)

Il microservizio *Authenticator* si occupa di ricevere le richieste di ottenimento Token, controllarne i valori e restituire un Token valido e temporaneo (1 settimana di validità) affinché il _Client_ possa utilizzare il Sistema.

I Token sono inoltre firmati con una chiave privata di tipo *ECDSA*, acronimo di _Elliptic Curve Digital Signature Algorithm _: la relativa chiave pubblica, necessaria per verificata i Token, viene pubblicata in un JetStream di NATS#super[G] ed è utilizzata dagli API#super[G] Gateway per verificare l'autenticità dei Token.

È formato dalle seguenti componenti:

- *AuthController*, che rappresenta l'_application logic_;
- *AuthService*, che rappresenta la _business logic_;
- *AuthRepository*, che rappresenta la _persistence logic_.

Le tre componenti, assieme agli oggetti eventualmente utilizzati saranno ora esposti.

==== Oggetti comuni del microservizio

===== CheckPemKeyPairExistenceCmd <CheckPemKeyPairExistenceCmd>

#figure(
  image("../../assets/authenticator/CheckPemKeyPairExistenceCmd.png", width: 70%),
  caption: "CheckPemKeyPairExistenceCmd",
)

Rappresenta il _Command_ per verificare l'esistenza della chiave pubblica e della chiave privata. Viene utilizzata dalla _business logic_ per verificarne la presenza, necessaria per firmare il Token.

*Descrizione degli attributi della struttura:*

questa struttura non possiede attributi

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCheckPemKeyPairExistence() *CheckPemKeyPairExistenceCmd`*: rappresenta il costruttore del _Command_.

===== GetPemPrivateKeyCmd <GetPemPrivateKeyCmd>

#figure(
  image("../../assets/authenticator/GetPemPrivateKeyCmd.png", width: 60%),
  caption: "GetPemPrivateKeyCmd",
)

Rappresenta il _Command_ per ottenere la chiave privata, necessaria alla _business logic_ per firmare il Token.

*Descrizione degli attributi della struttura:*

questa struttura non possiede attributi

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetPemPrivateKeyCmd() *GetPemPrivateKeyCmd`*: rappresenta il costruttore del _Command_.

===== GetPemPublicKeyCmd <GetPemPublicKeyCmd>

#figure(
  image("../../assets/authenticator/GetPemPublicKeyCmd.png", width: 60%),
  caption: "GetPemPublicKeyCmd",
)

Rappresenta il _Command_ per ottenere la chiave pubblica, necessaria alla _business logic_ in quanto deve da questa essere pubblicata in un JetStream NATS#super[G] apposito.

*Descrizione degli attributi della struttura:*

questa struttura non possiede attributi

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetPemPublicKeyCmd() *GetPemPublicKeyCmd`*: rappresenta il costruttore del _Command_.

===== GetTokenCmd <GetTokenCmd>

#figure(
  image("../../assets/authenticator/GetTokenCmd.png", width: 57%),
  caption: "GetTokenCmd",
)

Rappresenta il _Command_ per ottenere la generazione di un Token.

*Descrizione degli attributi della struttura:*

- *`username string`*: rappresenta lo _username_ dell'utente che ha richiesto il Token.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetTokenCmd(username string) *GetTokenCmd`*: rappresenta il costruttore del _Command_;
- *`GetUsername() string`*: permette di ottenere lo _username_ registrato nel _Command_.

===== PublishPublicKeyCmd <PublishPublicKeyCmd>

#figure(
  image("../../assets/authenticator/PublishPublicKeyCmd.png", width: 80%),
  caption: "PublishPublicKeyCmd",
)

Rappresenta il _Command_ per ottenere la pubblicazione della chiave pubblica.

*Descrizione degli attributi della struttura:*

- *`pemPuk *[]byte`*: rappresenta la chiave pubblica, in formato Pem e memorizzata in byte;
- *`issuer string`*: rappresenta l'_issuer_, che la _business logic_ genera al momento della generazione delle chiavi mediante la libreria uuid di Google.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPublishPublicKeyCmd(pemPuk *[]byte, issuer string) *PublishPublicKeyCmd`*: rappresenta il costruttore del _Command_;
- *`GetKey() *[]byte`*: permette di ottenere la chiave registrata nel _Command_;
- *`GetIssuer() string`*: permette di ottenere lo _issuer_ registrato nel _Command_.

===== StorePemKeyPairCmd <StorePemKeyPairCmd>

#figure(
  image("../../assets/authenticator/StorePemKeyPairCmd.png", width: 80%),
  caption: "StorePemKeyPairCmd",
)

Rappresenta il _Command_ per ottenere la memorizzazione in _persistence logic_ della coppia di chiavi generate dalla _business logic_.

*Descrizione degli attributi della struttura:*

- *`prk *[]byte`*: rappresenta la chiave privata, in formato Pem e memorizzata in byte;
- *`puk *[]byte`*: rappresenta la chiave pubblica, in formato Pem e memorizzata in byte;
- *`issuer string`*: rappresenta l'_issuer_, che la _business logic_ genera al momento della generazione delle chiavi mediante la libreria uuid di Google.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStorePemKeyPairCmd(prk *[]byte, puk *[]byte, issuer string) *StorePemKeyPairCmd`*: rappresenta il costruttore del _Command_;
- *`GetPemPrivateKey() *[]byte`*: permette di ottenere la chiave privata registrata nel _Command_;
- *`GetPemPublicKey() *[]byte`*: permette di ottenere la chiave privata registrata nel _Command_;
- *`GetIssuer() string`*: permette di ottenere lo _issuer_ registrato nel _Command_.

===== CheckKeyPairExistenceResponse <CheckKeyPairExistenceResponse>

#figure(
  image("../../assets/authenticator/CheckKeyPairExistenceResponse.png", width: 80%),
  caption: "CheckKeyPairExistenceResponse",
)

Rappresenta la risposta della _persistence logic_ alla richiesta di controllo della presenza delle chiavi.

*Descrizione degli attributi della struttura:*

- *`err error`*: rappresenta l'errore dell'operazione, se questo si controllo ,altrimenti il campo viene popolato con `nil`.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCheckKeyPairExistenceResponse(err error) *CheckKeyPairExistenceResponse`*: è il costruttore dell'oggetto;
- *`GetError() error`*: restituisce l'errore memorizzato nella risposta.

===== GetPemPrivateKeyResponse <GetPemPrivateKeyResponse>

#figure(
  image("../../assets/authenticator/GetPemPrivateKeyResponse.png", width: 80%),
  caption: "GetPemPrivateKeyResponse",
)

Rappresenta la risposta della _persistence logic_ alla richiesta di ottenimento della chiave privata.

*Descrizione degli attributi della struttura:*

- *`prk *[]byte`*: rappresenta la chiave privata, in formato Pem e memorizzata in byte;
- *`issuer string`*: rappresenta l'_issuer_, ovvero l'uuid generato al momento della creazione delle chiavi;
- *`err error`*: rappresenta l'errore dell'operazione, altrimenti il campo viene popolato con `nil`.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetPemPrivateKeyResponse(prk *[]byte, issuer string, err error) *GetPemPrivateKeyResponse`*: rappresenta il costruttore della risposta;
- *`GetIssuer() string`*: permette di ottenere l'_issuer_ memorizzato nella risposta;
- *`GetPemPrivateKey() *[]byte`*: permette di ottenere la chiave privata memorizzata nella risposta;
- *`GetError() error`*: permette di ottenere l'errore memorizzato nella risposta.

===== GetPemPublicKeyResponse <GetPemPublicKeyResponse>

#figure(
  image("../../assets/authenticator/GetPemPublicKeyResponse.png", width: 80%),
  caption: "GetPemPublicKeyResponse",
)

Rappresenta la risposta della _persistence logic_ alla richiesta di ottenimento della chiave pubblica.

*Descrizione degli attributi della struttura:*

- *`puk *[]byte`*: rappresenta la chiave pubblica, in formato Pem e memorizzata in byte;
- *`issuer string`*: rappresenta l'_issuer_, ovvero l'uuid generato al momento della creazione delle chiavi;
- *`err error`*: rappresenta l'errore dell'operazione, altrimenti il campo viene popolato con `nil`.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetPemPublicKeyResponse(prk *[]byte, issuer string, err error) *GetPemPublicKeyResponse`*: rappresenta il costruttore della risposta;
- *`GetIssuer() string`*: permette di ottenere l'_issuer_ memorizzato nella risposta;
- *`GetPemPublicKey() *[]byte`*: permette di ottenere la chiave pubblica memorizzata nella risposta;
- *`GetError() error`*: permette di ottenere l'errore memorizzato nella risposta.

===== GetTokenResponse <GetTokenResponse>

#figure(
  image("../../assets/authenticator/GetTokenResponse.png", width: 30%),
  caption: "GetTokenResponse",
)

Rappresenta la risposta alla richiesta di ottenimento Token.

*Descrizione degli attributi della struttura:*

- *`token string`*: rappresenta il Token generato e firmato, se presente;
- *`err error`*: rappresenta l'errore verificato durante l'elaborazione della richiesta, se presente, altrimenti è `nil`;

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetTokenResponse(Token string, err error) *GetTokenResponse`*: rappresenta il costruttore della risposta;
- *`GetToken() string`*: permette di ottenere il Token firmato memorizzato nella risposta;
- *`GetError() error`*: permette di ottenere l'errore memorizzato nella risposta.


===== PublishPublicKeyResponse <PublishPublicKeyResponse>

#figure(
  image("../../assets/authenticator/PublishPublicKeyResponse.png", width: 70%),
  caption: "PublishPublicKeyResponse",
)

Rappresenta la risposta alla richiesta di pubblicazione della chiave pubblica.

*Descrizione degli attributi della struttura:*

- *`err error`*: rappresenta l'errore dell'operazione, altrimenti il campo viene popolato con `nil`.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPublishPublicKeyResponse(err error) *PublishPublicKeyResponse`*: è il costruttore dell'oggetto;
- *`GetError() error`*: restituisce l'errore memorizzato nella risposta.

===== StorePemKeyPairResponse <StorePemKeyPairResponse>

#figure(
  image("../../assets/authenticator/StorePemKeyPairResponse.png", width: 70%),
  caption: "StorePemKeyPairResponse",
)

Rappresenta la risposta alla richiesta di memorizzazione delle chiavi.

*Descrizione degli attributi della struttura:*

- *`err error`*: rappresenta l'errore dell'operazione, altrimenti il campo viene popolato con `nil`.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStorePemKeyPairResponse(err error) *StorePemKeyPairResponse`*: è il costruttore dell'oggetto;
- *`GetError() error`*: restituisce l'errore memorizzato nella risposta.

===== PemPrivateKey <PemPrivateKey>

#figure(
  image("../../assets/authenticator/PemPrivateKey.png", width: 55%),
  caption: "PemPrivateKey",
)

Oggetto utilizzato per memorizzare la chiave privata in formato Pem e l'_issuer_ della stessa.

*Descrizione degli attributi della struttura:*

- *`prk *[]byte`*: rappresenta la chiave privata, in formato Pem e memorizzata in byte;
- *`issuer string`*: rappresenta l'_issuer_, ovvero l'uuid generato al momento della creazione delle chiavi.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPemPrivateKey(prk *[]byte, issuer string) *PemPrivateKey`*: è il costruttore dell'oggetto;
- *`GetIssuer() string`*: permette di ottenere l'_issuer_ memorizzato;
- *`GetBytes() []byte`*: permette di ottenere una copia dei _bytes_ memorizzati della chiave privata;

===== PemPublicKey <PemPublicKey>

#figure(
  image("../../assets/authenticator/PemPublicKey.png", width: 55%),
  caption: "PemPublicKey",
)

Oggetto utilizzato per memorizzare la chiave pubblica in formato Pem e l'_issuer_ della stessa.

*Descrizione degli attributi della struttura:*

- *`prk *[]byte`*: rappresenta la chiave pubblica, in formato Pem e memorizzata in byte;
- *`issuer string`*: rappresenta l'_issuer_, ovvero l'uuid generato al momento della creazione delle chiavi.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPemPublicKey(puk *[]byte, issuer string) *PemPublicKey`*: è il costruttore dell'oggetto;
- *`GetIssuer() string`*: permette di ottenere l'_issuer_ memorizzato;
- *`GetBytes() []byte`*: permette di ottenere una copia dei _bytes_ memorizzati della chiave pubblica;

==== IAuthPersistence <IAuthPersistence>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ del microservizio _Authenticator_.

*Descrizione dei metodi dell'interfaccia:*

- *`StorePemKeyPair(prk []byte, puk []byte, emit string) error`*: il metodo deve dare la possibilità di memorizzare una coppia di chiavi ECDSA in formato Pem e l'identificatore (uuid) che verrà poi associato come _issuer_ delle chiavi generate;
- *`GetPemPublicKey() (PemPublicKey, error)`*: il metodo deve dare la possibilità di ottenere l'oggetto `PemPublicKey` memorizzato. Se non presente, error deve essere diverso da `nil`;
- *`GetPemPrivateKey() (PemPrivateKey, error)`*: il metodo deve dare la possibilità di ottenere l'oggetto `PemPrivateKey` memorizzato. Se non presente, error deve essere diverso da `nil`;
- *`CheckKeyPairExistence() error`*: il metodo deve restituire un errore se non è memorizzata una coppia di chiavi, altrimenti deve restituire `nil`.

==== AuthRepository <AuthRepository>

Questa struttura implementa l'interfaccia *IAuthPersistence*, vedi la @IAuthPersistence.

*Descrizione degli attributi della struttura:*

- *`prk *PemPrivateKey`*: un puntatore all'oggetto `PemPrivateKey` che contiene la chiave privata, se questa è stata memorizzata, altrimenti è `nil`;
- *`prk *PemPublicKey`*: un puntatore all'oggetto `PemPublicKey` che contiene la chiave pubblica, se questa è stata memorizzata, altrimenti è `nil`;
- *`issuer string`*: è l'identificatore (uuid) di chi ha emesso le chiavi al momento della loro memorizzazione. Se le chiavi non sono ancora state memorizzate, la stringa è vuota;
- *`mutex sync.Mutex`*: variabile utilizzata per il corretto funzionamento di alcuni metodi. Si rimanda alla #link("https://go.dev/tour/concurrency/9")[documentazione del linguaggio Go#super[G] ]per ulteriori informazioni.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewAuthRepo() *AuthRepository`*: costruttore della struttura. Non prende alcun parametro e inizializza i puntatori a `nil` e la stringa come stringa vuota;
- *`checkKeyPair(prk *[]byte, puk *[]byte) bool`*: metodo che assolve al compito di controllo validità delle chiavi passate come parametro in formato Pem. Se le chiavi non sono in formato Pem e/o non sono chiavi ECDSA allora viene restituito `false`, altrimenti viene restituito `true`;
- *`StorePemKeyPair(prk []byte, puk []byte, emit string) error`*: il metodo controlla la validità delle chiavi passate utilizzando la funzione `checkKeyPair` e, se il controllo è positivo, le memorizza assieme all'_issuer_;
- *`GetPemPublicKey() (PemPublicKey, error)`*: permette di ottenere l'oggetto `PemPublicKey`, se presente, altrimenti viene restituito un oggetto vuoto e un errore;
- *`GetPemPrivateKey() (PemPrivateKey, error)`*: permette di ottenere l'oggetto `PemPrivateKey`, se presente, altrimenti viene restituito un oggetto vuoto e un errore;
- *`CheckKeyPairExistence() error`*: restituisce un errore se non vi è una coppia di chiavi memorizzata, altrimenti `nil`.

==== ICheckKeyPairExistance <ICheckKeyPairExistance>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di voler verificare l'esistenza di una coppia di chiavi.

*Descrizione dei metodi dell'interfaccia:*

*`CheckKeyPairExistance(cmd *servicecmd.CheckPemKeyPairExistenceCmd) *serviceresponse.CheckKeyPairExistenceResponse`*: il metodo deve offrire la possibilità di richiedere il controllo dell'esistenza di una coppia di chiavi memorizzata e ricevere adeguata risposta.

==== IGetPemPrivateKeyPort <IGetPemPrivateKeyPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere la chiave privata, se memorizzata.

*Descrizione dei metodi dell'interfaccia:*

- *`GetPemPrivateKey(cmd *servicecmd.GetPemPrivateKeyCmd) *serviceresponse.GetPemPrivateKeyResponse`*: il metodo deve offrire la possibilità di richiedere la chiave privata memorizzata e ottenere un'adeguata risposta;

==== IGetPemPublicKeyPort <IGetPemPublicKeyPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere la chiave pubblica, se memorizzata.

*Descrizione dei metodi dell'interfaccia:*

- *`GetPemPublicKey(cmd *servicecmd.GetPemPublicKeyCmd) *serviceresponse.GetPemPublicKeyResponse`*: il metodo deve offrire la possibilità di richiedere la chiave pubblica memorizzata e ottenere un'adeguata risposta;

==== IStorePemKeyPair <IStorePemKeyPair>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di memorizzare una coppia di chiavi e l'_issuer_ associato.

*Descrizione dei metodi dell'interfaccia:*

- *`StorePemKeyPair(cmd *servicecmd.StorePemKeyPairCmd) *serviceresponse.StorePemKeyPairResponse`*: il metodo deve permettere di richiedere la memorizzazione di una coppia di chiavi e l'_issuer_ associato e ricevere una risposta in merito all'esito dell'operazione

==== AuthAdapter <authadapter>

_Adapter_ che mette in comunicazione la _business logic_ con la _persistence logic_. Implementa le seguenti interfacce (porte):

- *`ICheckKeyPairExistance`*, @ICheckKeyPairExistance;
- *`IGetPemPrivateKeyPort`*, @IGetPemPrivateKeyPort;
- *`IGetPemPublicKeyPort`*, @IGetPemPublicKeyPort;
- *`IStorePemKeyPair`*, @IStorePemKeyPair.

*Descrizione degli attributi della struttura:*

- *`repo persistence.IAuthPersistence`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ di Authenticator. Per ulteriori informazioni si veda la @IAuthPersistence.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewAuthAdapter(repo persistence.IAuthPersistence) *AuthAdapter`*: costruttore dell'oggetto. Prende l'oggetto che implementa la _persistence logic_ come parametro;
- *`StorePemKeyPair(cmd *servicecmd.StorePemKeyPairCmd) *serviceresponse.StorePemKeyPairResponse`*: converte il _Command_ per la memorizzazione della coppia di chiavi in formato Pem e l'issuer associato in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;
- *`GetPemPrivateKey(cmd *servicecmd.GetPemPrivateKeyCmd) *serviceresponse.GetPemPrivateKeyResponse`*: converte il _Command_ per l'ottenimento della chiave privata e del suo issuer in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;
- *`GetPemPublicKey(cmd *servicecmd.GetPemPublicKeyCmd) *serviceresponse.GetPemPublicKeyResponse`*: converte il _Command_ per l'ottenimento della chiave pubblica e del suo issuer in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;
- *`CheckKeyPairExistance(cmd *servicecmd.CheckPemKeyPairExistenceCmd) *serviceresponse.CheckKeyPairExistenceResponse`*: converte il _Command_ per il controllo della presenza di una coppia di chiavi memorizzata in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata.

==== IPublishPort <IPublishPort>

Rappresenta la porta che consente alla _business logic_ di comunicare al _Publisher_ la volontà di pubblicare la propria chiave pubblica.

*Descrizione dei metodi dell'interfaccia:*

- *`PublishKey(cmd *servicecmd.PublishPublicKeyCmd) *serviceresponse.PublishPublicKeyResponse`*: il metodo deve dare la possibilità di richiedere la pubblicazione della chiave pubblica e ricevere una risposta sull'esito dell'operazione.

==== PublishAdapter

Rappresenta l'_Adapter_ atto a convertire il _Command_ per la richiesta di pubblicazione della chiave pubblica al _Publisher_.

Implementa l'interfaccia IPublishPort, descritta alla @IPublishPort.

*Descrizione degli attributi della struttura:*

- *`pb publisher.IAuthPublisher`*: istanza di una struttura che rappresenta il _Publisher_, vedi @IAuthPublisher per maggiori informazioni.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewAuthPublisherAdapter(pb publisher.IAuthPublisher) *AuthPublisherAdapter `*: costruttore dell'_Adapter_. Prende un oggetto che implementa l'interfaccia per i _Publisher_ come parametro;
- *`PublishKey(cmd *servicecmd.PublishPublicKeyCmd) *serviceresponse.PublishPublicKeyResponse`*: prende come parametro il _Command_ per la pubblicazione della chiave pubblica, ne prende la chiave pubblica e l'issuer e li passa al _Publisher_ per la pubblicazione.

==== IAuthPublisher <IAuthPublisher>

Interfaccia che gli oggetti rappresentanti un _Publisher_ per le chiavi pubbliche devono soddisfare.

*Descrizione dei metodi dell'interfaccia:*

- *`PublishKey(puk crypto.PublicKey, issuer string) error`*: il metodo deve permettere la pubblicazione della chiave pubblica e dell'_issuer_ associato come parametro, quindi deve restituire un errore se la richiesta non è stata completata, o `nil` altrimenti.

==== AuthPublisher <AuthPublisher>

Un _Publisher_ che permette di pubblicare su un JetStream NATS#super[G] chiave pubblica e issuer associato.

Implementa l'interfaccia *IAuthPublisher*: per maggiori informazioni vedere la @IAuthPublisher.

*Descrizione degli attributi della struttura:*

- *`mb *broker.NatsMessageBroker`*: un'istanza di un _message broker_ di NATS#super[G], necessario per la pubblicazione delle chiavi e dell'_issuer_;

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPublisher(mb *broker.NatsMessageBroker) *AuthPublisher`*: costruttore della struttura, prende un _message broker_ di NATS#super[G] come parametro;
- *`PublishKey(puk crypto.PublicKey, issuer string) error`*: permette di pubblicare la chiave e l'issuer passati come parametro in un apposito JetStream di NATS#super[G], ritornando un errore se l'operazione non va a buon fine.

==== UserData

#figure(
  image("../../assets/authenticator/UserData.png", width: 30%),
  caption: "UserData",
)

Oggetto utilizzato da IAuthenticateUserStrategy, vedi @IAuthenticateUserStrategy.

*Descrizione degli attributi della struttura:*

- *`username string`*: nome utente da verificare.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewUserData(username string) *UserData`*: costruttore della struttura;
- *`GetUsername() string`*: fornisce il nome utente memorizzato nell'istanza della struttura che lo invoca.

==== IAuthenticateUserStrategy <IAuthenticateUserStrategy>

Interfaccia che le strutture che implementano l'algoritmo per valutare i dati di autenticazione forniti devono soddisfare.

*Descrizione dei metodi dell'interfaccia:*

- *`Authenticate(us serviceobject.UserData) (string, error)`*: il metodo deve ospitare l'algoritmo che controlla i dati di autenticazione. Deve restituire uno stringa con il ruolo e `nil` se il controllo ha esito positivo, una stringa vuota e un errore altrimenti.

==== SimpleAuthAlg

Implementazione di un semplice algoritmo per verificare i dati di autenticazione: con lo scopo di soddisfare l'MVP, questo algoritmo controlla se lo _username_ è tra quelli prestabiliti.

*Descrizione degli attributi della struttura:*

- *`usernameRoles map[string]string`*: mappa contenente gli username autorizzati e i rispettivi ruoli;
- *`mutex sync.Mutex`*, variabile utilizzata per il corretto funzionamento di alcuni metodi. Si rimanda alla #link("https://go.dev/tour/concurrency/9")[documentazione del linguaggio Go#super[G] ]per ulteriori informazioni.

*Descrizione dei metodi invocabili dalla struttura:*

- *`Authenticate(us serviceobject.UserData) (string, error)`*: il metodo controlla lo username. Se il controllo va a buon fine viene ritornato il ruolo e `nil`, altrimenti viene ritornata una stringa vuota e un errore.

==== IGetTokenUseCase <IGetTokenUseCase>

Interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la necessità di ottenere un Token.

*Descrizione dei metodi dell'interfaccia:*

- *`GetToken(cmd *servicecmd.GetTokenCmd) *serviceresponse.GetTokenResponse`*: il metodo deve permettere, dato un _Command_ per la richiesta di un Token passato come parametro, di ottenere, sotto forma di risposta adeguata, il suddetto Token.

==== AuthService

Oggetto rappresentante la _business logic_ di *Authenticator*.

Implementa l'interfaccia (_Use Case_) *IGetTokenUseCase*, per maggiori informazioni vedere la @IGetTokenUseCase.

*Descrizione degli attributi della struttura:*

- *`checkKeyPairExistancePort serviceportout.ICheckKeyPairExistance`*, si veda la @ICheckKeyPairExistance;
- *`getPemPrivateKeyPort serviceportout.IGetPemPrivateKeyPort`*, si veda la @IGetPemPrivateKeyPort;
- *`getPemPublicKeyPort serviceportout.IGetPemPublicKeyPort`*, si veda la @IGetPemPublicKeyPort;
- *`storePemKeyPairPort serviceportout.IStorePemKeyPair`*, si veda la @IStorePemKeyPair;
- *`publishPort serviceportout.IPublishPort`*, si veda la @IPublishPort;
- *`authenticatorStrategy serviceauthenticator.IAuthenticateUserStrategy`*, si veda la @IAuthenticateUserStrategy;
- *`mutex sync.Mutex`*, variabile utilizzata per il corretto funzionamento di alcuni metodi. Si rimanda alla #link("https://go.dev/tour/concurrency/9")[documentazione del linguaggio Go#super[G] ]per ulteriori informazioni.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewAuthService(p AuthServiceParams) *AuthService`*: costruttore dell'oggetto. Le porte (_Use Case_) devono essere fornite come parametri al costruttore e, per farlo, si utilizza la struttura *`AuthServiceParams`*, struttura con i medesimi attributi di AuthService con l'istruzione `fx.in` per permettere al _framework_ *fx* di fornire automaticamente le dipendenze necessarie;
- *`generatePemKey() (*[]byte, *[]byte, error)`*: genera una coppia di chiavi ECDSA e le converte in formato Pem, quindi le ritorna con `nil` come errore. Se la richiesta non va a buon fine vengono ritornati due puntatori a `nil` e un errore;
- *`storePemKeyPair(cmd *servicecmd.StorePemKeyPairCmd) error`*: gestisce la memorizzazione delle chiavi, quando generate;
- *`getPrivateKeyFromPem(prk *[]byte) (*ecdsa.PrivateKey, error)`*: si occupa di convertire una chiave privata passata in formato Pem in una chiave privata ECDSA a tutti gli effetti;
- *`generateToken(username string, role string) (string, error)`*: si occupa di generare e firmare un Token;
- *`GetToken(cmd *servicecmd.GetTokenCmd) *serviceresponse.GetTokenResponse`*: esegue un controllo delle credenziali e, se il controllo ha esito positivo, fa generare un Token.

==== AuthController

È l'oggetto che gestisce l'_application logic_.

*Descrizione degli attributi della struttura:*

- *`tokenUseCase serviceportin.IGetTokenUseCase`*: vedi @IGetTokenUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewAuthController(tokenUseCase serviceportin.IGetTokenUseCase, mp MetricParams) *authController`*: costruttore dell'oggetto. Prende un oggetto che soddisfa `IGetTokenUseCase` e una struttura, dotata di comando `fx.In`, contenente quanto necessario per effettuare misurazioni, come parametro;
- *`checkGetTokenRequest(dto *common.AuthLoginRequest) error`*: controlla la correttezza della richiesta per ottenere un Token e restituisce un errore in caso di risultato negativo o `nil` altrimenti;
- *`NewTokenRequest(ctx context.Context, msg *nats.Msg) error`*: si occupa di gestire una richiesta di ottenimento Token e rispondere alla stessa con il Token o con una stringa vuota se la procedura non va a buon fine.

=== Order <micro_order>

#figure(
  image("../../assets/order/order_2.png", width: 115%),
  caption: "Struttura del Microservizio " + ["Order"],
)

Il microservizio *Order* viene utilizzato per realizzare gli ordini quando questi vengono confermati, andando a verificare la disponibilità di una merce e organizzando da quali magazzini prendere la merce per completare l'ordine.

È sempre di questo microservizio il compito di assolvere ai trasferimenti, particolari tipi di ordini il cui destinatario è un altro magazzino.

In particolare, è formato da tre sotto-componenti principali:

- I *Controller* e *Listener*, che rappresentano l'_application logic_
- I *Service*, che rappresentano la _business logic_;
- I *Repоsitory*, che rappresentano la _persistence logic_.

Gli oggetti utilizzati per implementare queste componenti saranno ora esposti.

==== Oggetti comuni del microservizio

===== OrderWarehouseUsed (Repo) <OrderRepoOrderWarehouseUsed>
#figure(
  image("../../assets/order/Repo-OrderWarehouseUsed.png", width: 30%),
  caption: "Order - OrderWarehouseUsed (Repo)",
)
Rappresenta un magazzino utilizzato per soddisfare un ordine#super[G]. Questo oggetto è utilizzato nella _persistence logic_ per memorizzare le informazioni sui magazzini coinvolti nella gestione degli ordini.

*Descrizione degli attributi della struttura:*

- *`Goods map[string]int64`*: rappresenta una mappa che associa l'identificativo della merce (*string*) alla quantità utilizzata (*int64*).

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== OrderUpdateGood (Repo) <OrderRepoOrderUpdateGood>
#figure(
  image("../../assets/order/Repo-OrderUpdateGood.png", width: 30%),
  caption: "Order - OrderUpdateGood (Repo)",
)
Rappresenta una merce coinvolta in un aggiornamento di un ordine#super[G]. Questo oggetto è utilizzato nella _persistence logic_ per memorizzare i dettagli delle merci associate agli ordini.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce coinvolta nell'ordine;
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nell'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== Order (Repo) <OrderRepoOrder>
#figure(
  image("../../assets/order/Repo-Order.png", width: 30%),
  caption: "Order - Order (Repo)",
)
Rappresenta un ordine#super[G] nel sistema. Questo oggetto è utilizzato nella _persistence logic_ per memorizzare e gestire le informazioni relative agli ordini, inclusi i dettagli delle merci, i magazzini coinvolti e le prenotazioni associate.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'ordine;
- *`Status string`*: rappresenta lo stato dell'ordine;
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`Goods []OrderUpdateGood`*: rappresenta una lista di oggetti `OrderUpdateGood` che contengono le informazioni sulle merci coinvolte nell'ordine;
- *`Warehouses []OrderWarehouseUsed`*: rappresenta una lista di oggetti `OrderWarehouseUsed` che contengono le informazioni sui magazzini utilizzati per l'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione dell'ordine;
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento dell'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== WarehouseStock (Repo) <OrderRepoWarehouseStock>
#figure(
  image("../../assets/order/Repo-WarehouseStock.png", width: 30%),
  caption: "Order - WarehouseStock (Repo)",
)
*Descrizione degli attributi della struttura:*

- *`goodToStock map[string]int64`*:

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== TransferUpdateGood (Repo) <OrderRepoTransferUpdateGood>
#figure(
  image("../../assets/order/Repo-TransferUpdateGood.png", width: 30%),
  caption: "Order - TransferUpdateGood (Repo)",
)
Rappresenta una merce coinvolta in un aggiornamento di un trasferimento#super[G]. Questa struttura viene utilizzata per memorizzare i dettagli delle merci associate a un trasferimento#super[G], come l'identificativo della merce e la quantità coinvolta.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce coinvolta nel trasferimento#super[G];
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nel trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== Transfer (Repo) <OrderRepoTransfer>
#figure(
  image("../../assets/order/Repo-Transfer.png", width: 30%),
  caption: "Order - Transfer (Repo)",
)
Rappresenta un trasferimento#super[G] nel sistema. Questo oggetto è utilizzato nella _persistence logic_ per memorizzare e gestire le informazioni relative ai trasferimenti, inclusi i dettagli delle merci, i magazzini coinvolti e le prenotazioni associate.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del trasferimento#super[G];
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Status string`*: rappresenta lo stato del trasferimento#super[G] (es. "Created", "Filled");
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento del trasferimento#super[G];
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione del trasferimento#super[G];
- *`LinkedStockUpdate int`*: rappresenta il numero di aggiornamenti dello stock#super[G] associati al trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G];
- *`Goods []TransferUpdateGood`*: rappresenta una lista di oggetti `TransferUpdateGood` che contengono le informazioni sulle merci coinvolte nel trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.


===== TransferID <OrderModelTransferID>

Rappresenta un identificativo univoco per un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`string`*: rappresenta l'identificativo univoco del trasferimento#super[G].

===== Transfer <OrderModelTransfer>
#figure(
  image("../../assets/order/Transfer.png", width: 30%),
  caption: "Order - Transfer",
)
Rappresenta un trasferimento#super[G] nel sistema. Questo oggetto è utilizzato nella _business logic_ per gestire le informazioni relative ai trasferimenti, inclusi i dettagli delle merci, i magazzini coinvolti e le prenotazioni associate.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del trasferimento#super[G];
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Status string`*: rappresenta lo stato del trasferimento#super[G] (es. "Created", "Filled");
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento del trasferimento#super[G];
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione del trasferimento#super[G];
- *`LinkedStockUpdate int`*: rappresenta il numero di aggiornamenti dello stock#super[G] associati al trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G];
- *`Goods []GoodStock`*: rappresenta una lista di oggetti `GoodStock` che contengono le informazioni sulle merci coinvolte nel trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== OrderID <OrderModelOrderID>

Rappresenta un identificativo univoco per un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`string`*: rappresenta l'identificativo univoco dell'ordine.

===== Order <OrderModelOrder>
#figure(
  image("../../assets/order/order_1.png", width: 30%),
  caption: "Order - Order",
)
Rappresenta un ordine#super[G] nel sistema.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'ordine;
- *`Status string`*: rappresenta lo stato dell'ordine;
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento dell'ordine;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione dell'ordine;
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`Goods []GoodStock`*: rappresenta una lista di oggetti `GoodStock` che contengono le informazioni sulle merci incluse nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine;
- *`Warehouses []OrderWarehouseUsed`*: rappresenta una lista di oggetti `OrderWarehouseUsed` che contengono le informazioni sui magazzini utilizzati per l'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

- *`IsCompleted() bool`*: verifica#super[G] se l'ordine è stato completato. Restituisce `true` se tutte le merci richieste sono state soddisfatte dai magazzini, altrimenti `false`.

===== OrderWarehouseUsed <OrderModelOrderWarehouseUsed>
#figure(
  image("../../assets/order/OrderWarehouseUsed.png", width: 30%),
  caption: "Order - OrderWarehouseUsed",
)
Rappresenta un magazzino utilizzato per soddisfare un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`WarehouseID string`*: rappresenta l'identificativo del magazzino utilizzato;
- *`Goods map[string]int64`*: rappresenta una mappa che associa l'identificativo della merce (*string*) alla quantità utilizzata (*int64*).

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== WarehouseID <OrderModelWarehouseID>

Rappresenta un identificativo univoco per un magazzino.

*Descrizione degli attributi della struttura:*

- *`string`*: rappresenta l'identificativo univoco del magazzino.

===== Warehouse <OrderModelWarehouse>
#figure(
  image("../../assets/order/Warehouse.png", width: 30%),
  caption: "Order - Warehouse",
)
Rappresenta un magazzino nel sistema.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del magazzino.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== CreateTransferCmd <OrderCreateTransferCmd>
#figure(
  image("../../assets/order/CreateTransferCmd.png", width: 30%),
  caption: "Order - CreateTransferCmd",
)
Rappresenta il comando utilizzato per creare un nuovo trasferimento#super[G] nel sistema.

*Descrizione degli attributi della struttura:*

- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Goods []CreateTransferGood`*: rappresenta una lista di oggetti `CreateTransferGood` che contengono le informazioni sulle merci incluse nel trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== CreateTransferGood <OrderCreateTransferGood>
#figure(
  image("../../assets/order/CreateTransferGood.png", width: 30%),
  caption: "Order - CreateTransferGood",
)
Rappresenta una merce inclusa in un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce inclusa nel trasferimento#super[G];
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nel trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== CreateTransferResponse <OrderCreateTransferResponse>
#figure(
  image("../../assets/order/CreateTransferResponse.png", width: 30%),
  caption: "Order - CreateTransferResponse",
)
Rappresenta la risposta alla richiesta di creazione di un nuovo trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`TransferID string`*: rappresenta l'identificativo univoco del trasferimento#super[G] creato.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== ApplyOrderUpdateCmd <OrderApplyOrderUpdateCmd>
#figure(
  image("../../assets/order/ApplyOrderUpdateCmd.png", width: 30%),
  caption: "Order - ApplyOrderUpdateCmd",
)
Rappresenta il comando utilizzato per applicare un aggiornamento di un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'ordine da aggiornare;
- *`Status string`*: rappresenta lo stato dell'ordine da aggiornare;
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`Goods []model.GoodStock`*: rappresenta una lista di oggetti `GoodStock` che contengono le informazioni sulle merci coinvolte nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine;
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento dell'ordine;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione dell'ordine.

===== ApplyTransferUpdateCmd <OrderApplyTransferUpdateCmd>
#figure(
  image("../../assets/order/ApplyTransferUpdateCmd.png", width: 30%),
  caption: "Order - ApplyTransferUpdateCmd",
)
*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'aggiornamento del trasferimento#super[G];
- *`Status string`*: rappresenta lo stato del trasferimento#super[G] aggiornato (es. "Created", "Filled", "Completed");
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Goods []model.GoodStock`*: rappresenta una lista di oggetti `GoodStock` che contengono le informazioni sulle merci coinvolte nel trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G];
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento del trasferimento#super[G];
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione del trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== SetCompletedWarehouseCmd <OrderSetCompletedWarehouseCmd>
#figure(
  image("../../assets/order/SetCompletedWarehouseCmd.png", width: 30%),
  caption: "Order - SetCompletedWarehouseCmd",
)
Rappresenta il comando utilizzato per segnalare il completamento di un ordine#super[G] da parte di un magazzino.

*Descrizione degli attributi della struttura:*

- *`OrderID string`*: rappresenta l'identificativo univoco dell'ordine in questione;
- *`WarehouseID string`*: rappresenta l'identificativo del magazzino che ha completato l'ordine;
- *`Goods []model.GoodStock`*: rappresenta una lista di oggetti `GoodStock` che contengono le informazioni sulle merci coinvolte nell'ordine completato.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== TransferUpdateCmd <OrderTransferUpdateCmd>
#figure(
  image("../../assets/order/TransferUpdateCmd.png", width: 30%),
  caption: "Order - TransferUpdateCmd",
)
Rappresenta il comando utilizzato per aggiornare le informazioni di un trasferimento#super[G] nel sistema.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del trasferimento#super[G] aggiornato;
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Goods []TransferUpdateGood`*: rappresenta una lista di oggetti `TransferUpdateGood` che contengono le informazioni sulle merci coinvolte nel trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G];
- *`Status string`*: rappresenta lo stato del trasferimento#super[G] aggiornato;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione del trasferimento#super[G];
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento del trasferimento#super[G].

===== TransferUpdateGood <OrderTransferUpdateGood>
#figure(
  image("../../assets/order/TransferUpdateGood.png", width: 30%),
  caption: "Order - TransferUpdateGood",
)
Rappresenta una merce coinvolta in un aggiornamento di un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce coinvolta nel trasferimento#super[G];
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nel trasferimento#super[G].

===== OrderUpdateCmd <OrderOrderStockUpdateCmd>

*Descrizione degli attributi della struttura:*
#figure(
  image("../../assets/order/OrderUpdateCmd.png", width: 30%),
  caption: "Order - OrderUpdateCmd",
)
- *`ID string`*: rappresenta l'identificativo univoco dell'ordine aggiornato;
- *`Goods []OrderUpdateGood`*: rappresenta una lista di oggetti `OrderUpdateGood` che contengono le informazioni sulle merci coinvolte nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine;
- *`Status string`*: rappresenta lo stato dell'ordine aggiornato;
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione dell'ordine;
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento dell'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== OrderUpdateGood <OrderOrderStockUpdateGood>
#figure(
  image("../../assets/order/OrderUpdateGood.png", width: 30%),
  caption: "Order - OrderUpdateGood",
)
*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce coinvolta nell'ordine;
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nell'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== GoodID <GoodID>

Rappresenta un identificativo univoco per una merce.

*Descrizione del tipo:*

- *`string`*: il tipo `GoodID` è un alias per il tipo `string`. Viene utilizzato per identificare in modo univoco una merce all'interno del sistema.

===== GoodStock <OrderGoodStock>
#figure(
  image("../../assets/order/GoodStock.png", width: 30%),
  caption: "Order - GoodStock",
)
Rappresenta lo stock#super[G] di una merce, ovvero la sua quantità.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce in questione;
- *`Quantity int64`*: rappresenta la quantità della merce.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== StockUpdateGood <OrderStockUpdateGood>
#figure(
  image("../../assets/order/StockUpdateGood.png", width: 30%),
  caption: "Order - StockUpdateGood",
)
Rappresenta una merce coinvolta in un aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce coinvolta nell'aggiornamento dello stock#super[G];
- *`Quantity int64`*: rappresenta la quantità attuale della merce;
- *`Delta int64`*: rappresenta la differenza di quantità della merce rispetto all'ultimo stato.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.


===== StockUpdateType <OrderStockUpdateType>

Rappresenta il tipo di aggiornamento dello stock#super[G].

*Descrizione dei valori possibili:*

- *`add`*: per aggiungere stock#super[G];
- *`remove`*: per rimuovere stock#super[G];
- *`order`*: per aggiornamenti legati a ordini;
- *`transfer`*: per aggiornamenti legati a trasferimenti.


===== StockUpdateCmd <OrderStockUpdateCmd>
#figure(
  image("../../assets/order/StockUpdateCmd.png", width: 30%),
  caption: "Order - StockUpdateCmd",
)
Rappresenta il comando per aggiornare lo stock#super[G].

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del comando di aggiornamento dello stock#super[G];
- *`WarehouseID string`*: rappresenta l'identificativo del magazzino coinvolto nell'aggiornamento dello stock#super[G];
- *`Type StockUpdateType`*: rappresenta il tipo di aggiornamento dello stock#super[G]. Può assumere i valori descritti alla @OrderStockUpdateType;
- *`Goods []StockUpdateGood`*: rappresenta una lista di oggetti `StockUpdateGood` che contengono le informazioni sulle merci coinvolte nell'aggiornamento;
- *`OrderID string`*: rappresenta l'identificativo dell'ordine associato all'aggiornamento dello stock#super[G];
- *`TransferID string`*: rappresenta l'identificativo del trasferimento#super[G] associato all'aggiornamento dello stock#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata all'aggiornamento dello stock#super[G];
- *`Timestamp int64`*: rappresenta il _timestamp_ dell'aggiornamento dello stock#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== GetStockCmd <OrderGetStockCmd>
#figure(
  image("../../assets/order/GetStockCmd.png", width: 30%),
  caption: "Order - GetStockCmd",
)
Rappresenta il comando utilizzato per ottenere la quantità di una merce specifica in un determinato magazzino.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce di cui si vuole ottenere la quantità;
- *`WarehouseID string`*: rappresenta l'identificativo del magazzino in cui si vuole verificare la quantità della merce.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== ContactWarehousesCmd <OrderContactWarehousesCmd>
#figure(
  image("../../assets/order/ContactWarehousesCmd.png", width: 30%),
  caption: "Order - ContactWarehousesCmd",
)
Rappresenta il comando utilizzato per contattare i magazzini al fine di gestire ordini o trasferimenti.

*Descrizione degli attributi della struttura:*

- *`Type ContactWarehousesType`*: rappresenta il tipo di operazione, che può essere un ordine#super[G] (*order*) o un trasferimento#super[G] (*transfer*);
- *`Order *ContactWarehousesOrder`*: rappresenta i dettagli dell'ordine da gestire, se l'operazione è di tipo ordine#super[G];
- *`Transfer *ContactWarehousesTransfer`*: rappresenta i dettagli del trasferimento#super[G] da gestire, se l'operazione è di tipo trasferimento#super[G];
- *`ConfirmedReservations []ConfirmedReservation`*: rappresenta una lista di prenotazioni confermate, utilizzate per ottimizzare la gestione delle risorse;
- *`ExcludeWarehouses []string`*: rappresenta una lista di identificativi dei magazzini da escludere dall'operazione;
- *`RetryUntil int64`*: rappresenta il _timestamp_ fino al quale è possibile effettuare tentativi di contatto con i magazzini;
- *`RetryInTime int64`*: rappresenta l'intervallo di tempo, in millisecondi, tra un tentativo di contatto e il successivo.

===== ContactWarehousesType <OrderContactWarehousesType>

Rappresenta il tipo di operazione per il comando *ContactWarehousesCmd*.

*Descrizione dei valori possibili:*

- *`ContactWarehousesTypeOrder`*: indica che l'operazione è relativa a un ordine#super[G];
- *`ContactWarehousesTypeTransfer`*: indica che l'operazione è relativa a un trasferimento#super[G].

===== ContactWarehousesOrder <OrderContactWarehousesOrder>
#figure(
  image("../../assets/order/ContactWarehousesOrder.png", width: 30%),
  caption: "Order - ContactWarehousesOrder",
)
Rappresenta i dettagli di un ordine#super[G] da gestire nel contesto del comando *ContactWarehousesCmd*.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'ordine;
- *`Status string`*: rappresenta lo stato dell'ordine;
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento dell'ordine;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione dell'ordine;
- *`Goods []ContactWarehousesGood`*: rappresenta una lista di merci coinvolte nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine.

===== ContactWarehousesTransfer <OrderContactWarehousesTransfer>
#figure(
  image("../../assets/order/ContactWarehousesTransfer.png", width: 30%),
  caption: "Order - ContactWarehousesTransfer",
)
Rappresenta i dettagli di un trasferimento#super[G] da gestire nel contesto del comando *ContactWarehousesCmd*.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del trasferimento#super[G];
- *`Status string`*: rappresenta lo stato del trasferimento#super[G];
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`UpdateTime int64`*: rappresenta il _timestamp_ dell'ultimo aggiornamento del trasferimento#super[G];
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione del trasferimento#super[G];
- *`Goods []ContactWarehousesGood`*: rappresenta una lista di merci coinvolte nel trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G].

===== ContactWarehousesGood <OrderContactWarehousesGood>
#figure(
  image("../../assets/order/ContactWarehousesGood.png", width: 30%),
  caption: "Order - ContactWarehousesGood",
)
Rappresenta una merce coinvolta in un ordine#super[G] o trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce;
- *`Quantity int64`*: rappresenta la quantità della merce.

===== ConfirmedReservation <OrderConfirmedReservation>
#figure(
  image("../../assets/order/ConfirmedReservation.png", width: 30%),
  caption: "Order - ConfirmedReservation",
)
Rappresenta una prenotazione confermata per un magazzino.

*Descrizione degli attributi della struttura:*

- *`WarehouseID string`*: rappresenta l'identificativo del magazzino associato alla prenotazione;
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione;
- *`Goods map[string]int64`*: rappresenta una mappa che associa l'identificativo della merce (*string*) alla quantità prenotata (*int64*).

===== ContactWarehousesResponse <OrderContactWarehousesResponse>
#figure(
  image("../../assets/order/ContactWarehousesResponse.png", width: 30%),
  caption: "Order - ContactWarehousesResponse",
)
Rappresenta la risposta alla richiesta di contatto con i magazzini.

*Descrizione degli attributi della struttura:*

- *`IsRetry bool`*: indica se è necessario effettuare un nuovo tentativo di contatto;
- *`RetryAfter time.Duration`*: rappresenta il tempo da attendere prima di effettuare un nuovo tentativo.

===== SendOrderUpdateCmd <OrderSendOrderUpdateCmd>
#figure(
  image("../../assets/order/SendOrderUpdateCmd.png", width: 30%),
  caption: "Order - SendOrderUpdateCmd",
)
Rappresenta il comando utilizzato per inviare un aggiornamento di un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'ordine da aggiornare;
- *`Status string`*: rappresenta lo stato dell'ordine (es. "Created", "Filled");
- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione dell'ordine;
- *`Goods []SendOrderUpdateGood`*: rappresenta una lista di oggetti `SendOrderUpdateGood` che contengono le informazioni sulle merci incluse nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== SendOrderUpdateGood <OrderSendOrderUpdateGood>
#figure(
  image("../../assets/order/SendOrderUpdateGood.png", width: 30%),
  caption: "Order - SendOrderUpdateGood",
)
Rappresenta una merce inclusa in un aggiornamento di un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce inclusa nell'ordine;
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nell'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== SendContactWarehouseCmd <OrderSendContactWarehouseCmd>
#figure(
  image("../../assets/order/SendContactWarehouseCmd.png", width: 30%),
  caption: "Order - SendContactWarehouseCmd",
)
Rappresenta il comando utilizzato per contattare i magazzini al fine di gestire ordini o trasferimenti.

*Descrizione degli attributi della struttura:*

- *`Order *model.Order`*: rappresenta i dettagli dell'ordine da gestire, se l'operazione è di tipo ordine#super[G];
- *`Transfer *model.Transfer`*: rappresenta i dettagli del trasferimento#super[G] da gestire, se l'operazione è di tipo trasferimento#super[G];
- *`Type SendContactWarehouseType`*: rappresenta il tipo di operazione, che può essere un ordine#super[G] (*order*) o un trasferimento#super[G] (*transfer*);
- *`ConfirmedReservations []ConfirmedReservation`*: rappresenta una lista di prenotazioni confermate, utilizzate per ottimizzare la gestione delle risorse;
- *`ExcludeWarehouses []string`*: rappresenta una lista di identificativi dei magazzini da escludere dall'operazione;
- *`RetryInTime int64`*: rappresenta l'intervallo di tempo, in millisecondi, tra un tentativo di contatto e il successivo;
- *`RetryUntil int64`*: rappresenta il _timestamp_ fino al quale è possibile effettuare tentativi di contatto con i magazzini.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== SendContactWarehouseType <OrderSendContactWarehouseType>

Rappresenta il tipo di operazione per il comando *SendContactWarehouseCmd*.

*Descrizione dei valori possibili:*

- *`SendContactWarehouseTypeOrder`*: indica che l'operazione è relativa a un ordine#super[G];
- *`SendContactWarehouseTypeTransfer`*: indica che l'operazione è relativa a un trasferimento#super[G].

===== CreateOrderGood <OrderCreateOrderGood>
#figure(
  image("../../assets/order/CreateOrderGood.png", width: 30%),
  caption: "Order - CreateOrderGood",
)
Rappresenta una merce inclusa in un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce inclusa nell'ordine;
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nell'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== CreateOrderCmd <OrderCreateOrderCmd>
#figure(
  image("../../assets/order/CreateOrderCmd.png", width: 30%),
  caption: "Order - CreateOrderCmd",
)
Rappresenta il comando utilizzato per creare un nuovo ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`Name string`*: rappresenta il nome dell'ordine;
- *`FullName string`*: rappresenta il nome completo del destinatario dell'ordine;
- *`Address string`*: rappresenta l'indirizzo del destinatario dell'ordine;
- *`Goods []CreateOrderGood`*: rappresenta una lista di oggetti `CreateOrderGood` che contengono le informazioni sulle merci incluse nell'ordine.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== CreateOrderResponse <OrderCreateOrderResponse>
#figure(
  image("../../assets/order/CreateOrderResponse.png", width: 30%),
  caption: "Order - CreateOrderResponse",
)
Rappresenta la risposta alla richiesta di creazione di un nuovo ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`OrderID string`*: rappresenta l'identificativo univoco dell'ordine creato.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== GetOrderCmd <OrderGetOrderCmd>

Rappresenta il comando utilizzato per richiedere i dettagli di un ordine#super[G] specifico nel sistema.

*Descrizione degli attributi della struttura:*

- *`string`*: rappresenta l'identificativo univoco dell'ordine richiesto.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== GetTransferCmd <OrderGetTransferCmd>

Rappresenta il comando utilizzato per richiedere i dettagli di un trasferimento#super[G] specifico nel sistema.

*Descrizione degli attributi della struttura:*

- *`string`*: rappresenta l'identificativo univoco del trasferimento#super[G] richiesto.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== RequestedGood <OrderRequestedGood>
#figure(
  image("../../assets/order/RequestedGood.png", width: 30%),
  caption: "Order - RequestedGood",
)
Rappresenta una merce richiesta per il calcolo della disponibilità.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce richiesta;
- *`Quantity int64`*: rappresenta la quantità richiesta della merce.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== CalculateAvailabilityCmd <OrderCalculateAvailabilityCmd>
#figure(
  image("../../assets/order/CalculateAvailabilityCmd.png", width: 30%),
  caption: "Order - CalculateAvailabilityCmd",
)
Rappresenta il comando utilizzato per calcolare la disponibilità delle merci richieste nei magazzini.

*Descrizione degli attributi della struttura:*

- *`Goods []RequestedGood`*: rappresenta una lista di oggetti `RequestedGood` che contengono le informazioni sulle merci richieste e le rispettive quantità;
- *`ExcludedWarehouses []string`*: rappresenta una lista di identificativi dei magazzini da escludere dal calcolo della disponibilità.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== WarehouseAvailability <OrderWarehouseAvailability>
#figure(
  image("../../assets/order/WarehouseAvailability.png", width: 30%),
  caption: "Order - WarehouseAvailability",
)
Rappresenta la disponibilità delle merci in un magazzino specifico.

*Descrizione degli attributi della struttura:*

- *`WarehouseID string`*: rappresenta l'identificativo del magazzino;
- *`Goods map[string]int64`*: rappresenta una mappa che associa l'identificativo della merce (*string*) alla quantità disponibile (*int64*) nel magazzino.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== CalculateAvailabilityResponse <OrderCalculateAvailabilityResponse>
#figure(
  image("../../assets/order/CalculateAvailabilityResponse.png", width: 30%),
  caption: "Order - CalculateAvailabilityResponse",
)
Rappresenta la risposta al comando di calcolo della disponibilità delle merci.

*Descrizione degli attributi della struttura:*

- *`Warehouses []WarehouseAvailability`*: rappresenta una lista di oggetti `WarehouseAvailability` che contengono le informazioni sulla disponibilità delle merci nei vari magazzini.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== ApplyStockUpdateCmd <OrderApplyStockUpdateCmd>
#figure(
  image("../../assets/order/ApplyStockUpdateCmd.png", width: 30%),
  caption: "Order - ApplyStockUpdateCmd",
)
Rappresenta il comando utilizzato per applicare un aggiornamento dello stock#super[G] in un magazzino specifico.

*Descrizione degli attributi della struttura:*

- *`WarehouseID string`*: rappresenta l'identificativo univoco del magazzino in cui applicare l'aggiornamento dello stock#super[G];
- *`Goods []model.GoodStock`*: rappresenta una lista di oggetti `GoodStock` che contengono le informazioni sulle merci e le rispettive quantità da aggiornare.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== ReservationGood <OrderReservationGood>
#figure(
  image("../../assets/order/ReservationGood.png", width: 30%),
  caption: "Order - ReservationGood",
)
Rappresenta una merce coinvolta in una richiesta di prenotazione.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce da prenotare;
- *`Quantity int64`*: rappresenta la quantità della merce da prenotare.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== RequestReservationCmd <OrderRequestReservationCmd>
#figure(
  image("../../assets/order/RequestReservationCmd.png", width: 30%),
  caption: "Order - RequestReservationCmd",
)
Rappresenta il comando utilizzato per richiedere una prenotazione di merci in un magazzino.

*Descrizione degli attributi della struttura:*

- *`WarehouseID string`*: rappresenta l'identificativo del magazzino in cui effettuare la prenotazione;
- *`Goods []ReservationGood`*: rappresenta una lista di oggetti `ReservationGood` che contengono le informazioni sulle merci da prenotare.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== RequestReservationResponse <OrderRequestReservationResponse>
#figure(
  image("../../assets/order/RequestReservationResponse.png", width: 30%),
  caption: "Order - RequestReservationResponse",
)
Rappresenta la risposta alla richiesta di prenotazione di merci.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco della prenotazione creata.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== SendTransferUpdateCmd <OrderSendTransferUpdateCmd>
#figure(
  image("../../assets/order/SendTransferUpdateCmd.png", width: 30%),
  caption: "Order - SendTransferUpdateCmd",
)
Rappresenta il comando utilizzato per inviare un aggiornamento di un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del trasferimento#super[G] da aggiornare;
- *`Status string`*: rappresenta lo stato del trasferimento#super[G] (es. "Created", "Filled");
- *`CreationTime int64`*: rappresenta il _timestamp_ di creazione del trasferimento#super[G];
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Goods []SendTransferUpdateGood`*: rappresenta una lista di oggetti `SendTransferUpdateGood` che contengono le informazioni sulle merci incluse nel trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== SendTransferUpdateGood <OrderSendTransferUpdateGood>
#figure(
  image("../../assets/order/SendTransferUpdateGood.png", width: 30%),
  caption: "Order - SendTransferUpdateGood",
)
Rappresenta una merce inclusa in un aggiornamento di un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce inclusa nel trasferimento#super[G];
- *`Quantity int64`*: rappresenta la quantità della merce inclusa nel trasferimento#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.



//Inizio oggetti normali

==== IGetStockPort <OrderIGetStockPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere informazioni sulla quantità di una merce presente nel magazzino, la quantità globale di una merce o l'elenco dei magazzini.

*Descrizione dei metodi dell'interfaccia:*

- *`GetStock(GetStockCmd) (model.GoodStock, error)`*: il metodo deve permettere di ottenere la quantità totale di una merce presente in un magazzino specifico, prendendo come parametro un comando `GetStockCmd` e restituendo un oggetto `GoodStock` e un eventuale errore in caso di fallimento;

- *`GetGlobalStock(model.GoodID) model.GoodStock`*: il metodo deve permettere di ottenere la quantità globale di una merce presente in tutti i magazzini, prendendo come parametro l'identificativo della merce (`goodId`) e restituendo un oggetto `GoodStock`;

- *`GetWarehouses() []model.Warehouse`*: il metodo deve permettere di ottenere l'elenco di tutti i magazzini registrati nel sistema, restituendo una slice di oggetti `Warehouse`.

==== SimpleCalculateAvailabilityService <OrderSimpleCalculateAvailabilityService>

La struttura `SimpleCalculateAvailabilityService` rappresenta un servizio per calcolare la disponibilità delle merci nei magazzini. Questo servizio utilizza un approccio semplice per determinare quali magazzini possono soddisfare le richieste di quantità delle merci, tenendo conto delle scorte disponibili.

Implementa le seguenti interfacce (_Use Case_):

- *ICalculateAvailabilityUseCase*, @OrderICalculateAvailabilityUseCase.

*Descrizione degli attributi della struttura:*

- *`getStockPort port.IGetStockPort`*: rappresenta la porta che consente alla _business logic_ di comunicare con la _persistence logic_ per ottenere informazioni sulle scorte di merci nei magazzini. Per maggiori dettagli, vedere la @OrderIGetStockPort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewSimpleCalculateAvailabilityService(getStockPort port.IGetStockPort) *SimpleCalculateAvailabilityService`*: costruttore della struttura. Inizializza l'attributo `getStockPort` con il valore fornito come parametro e restituisce un'istanza di `SimpleCalculateAvailabilityService`.

- *`GetAvailable(ctx context.Context, cmd port.CalculateAvailabilityCmd) (port.CalculateAvailabilityResponse, error)`*: metodo che calcola la disponibilità delle merci richieste nei magazzini. Prende come parametri il contesto e un comando `CalculateAvailabilityCmd` contenente le informazioni sulle merci richieste e i magazzini esclusi. Restituisce un oggetto `CalculateAvailabilityResponse` contenente i dettagli sulla disponibilità delle merci nei vari magazzini e un eventuale errore in caso di fallimento.

==== ISendOrderUpdatePort <OrderISendOrderUpdatePort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare con l'esterno per inviare un aggiornamento di un ordine#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`SendOrderUpdate(context.Context, SendOrderUpdateCmd) (model.Order, error)`*: il metodo deve permettere di inviare un aggiornamento di un ordine#super[G], prendendo come parametri il contesto e un comando `SendOrderUpdateCmd`. Deve restituire un oggetto `Order` contenente le informazioni aggiornate sull'ordine e un eventuale errore in caso di fallimento.

==== ISendContactWarehousePort <OrderISendContactWarehousePort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare con l'esterno per inviare un comando di contatto con i magazzini.

*Descrizione dei metodi dell'interfaccia:*

- *`SendContactWarehouses(context.Context, SendContactWarehouseCmd) error`*: il metodo deve permettere di inviare un comando di contatto con i magazzini, prendendo come parametri il contesto e un oggetto `SendContactWarehouseCmd`. Deve restituire un errore in caso di fallimento.

==== IRequestReservationPort <OrderIRequestReservationPort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare con l'esterno per richiedere una prenotazione di merci.

*Descrizione dei metodi dell'interfaccia:*

- *`RequestReservation(context.Context, RequestReservationCmd) (RequestReservationResponse, error)`*: il metodo deve permettere di richiedere una prenotazione di merci, prendendo come parametri il contesto e un comando `RequestReservationCmd`. Deve restituire un oggetto `RequestReservationResponse` contenente l'identificativo della prenotazione creata e un eventuale errore in caso di fallimento.

==== ICalculateAvailabilityUseCase <OrderICalculateAvailabilityUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di calcolare la disponibilità delle merci nei magazzini.

*Descrizione dei metodi dell'interfaccia:*

- *`GetAvailable(context.Context, CalculateAvailabilityCmd) (CalculateAvailabilityResponse, error)`*: il metodo deve permettere di calcolare la disponibilità delle merci richieste nei magazzini, prendendo come parametri il contesto e un comando `CalculateAvailabilityCmd`. Deve restituire un oggetto `CalculateAvailabilityResponse` contenente le informazioni sulla disponibilità delle merci e un eventuale errore in caso di fallimento.

==== ManageOrderService <OrderManageOrderService>

La struttura `ManageOrderService` rappresenta un servizio per la gestione degli ordini e dei trasferimenti nel sistema. Si occupa di orchestrare le operazioni necessarie per creare, recuperare e gestire ordini e trasferimenti, interfacciandosi con la _business logic_ e la _persistence logic_ tramite le porte definite.

Implementa le seguenti interfacce (_Use Case_):

- *ICreateOrderUseCase*, @OrderICreateOrderUseCase;
- *ICreateTransferUseCase*, @OrderICreateTransferUseCase;
- *IGetOrderUseCase*, @OrderIGetOrderUseCase;
- *IGetTransferUseCase*, @OrderIGetTransferUseCase;
- *IContactWarehousesUseCase*, @OrderIContactWarehousesUseCase.

*Descrizione degli attributi della struttura:*

- *`getOrderPort port.IGetOrderPort`*: rappresenta la porta per ottenere informazioni sugli ordini. Per maggiori dettagli, vedere la @OrderIGetOrderPort;
- *`getTransferPort port.IGetTransferPort`*: rappresenta la porta per ottenere informazioni sui trasferimenti. Per maggiori dettagli, vedere la @OrderIGetTransferPort;
- *`sendOrderUpdatePort port.ISendOrderUpdatePort`*: rappresenta la porta per inviare aggiornamenti sugli ordini. Per maggiori dettagli, vedere la @OrderISendOrderUpdatePort;
- *`sendTransferUpdatePort port.ISendTransferUpdatePort`*: rappresenta la porta per inviare aggiornamenti sui trasferimenti. Per maggiori dettagli, vedere la @OrderISendTransferUpdatePort;
- *`sendContactWarehousePort port.ISendContactWarehousePort`*: rappresenta la porta per contattare i magazzini. Per maggiori dettagli, vedere la @OrderISendContactWarehousePort;
- *`requestReservationPort port.IRequestReservationPort`*: rappresenta la porta per richiedere prenotazioni di merci. Per maggiori dettagli, vedere la @OrderIRequestReservationPort;
- *`calculateAvailabilityUseCase port.ICalculateAvailabilityUseCase`*: rappresenta il caso d'uso#super[G] per calcolare la disponibilità delle merci nei magazzini. Per maggiori dettagli, vedere la @OrderICalculateAvailabilityUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewManageOrderService(p ManageOrderServiceParams) *ManageOrderService`*: costruttore della struttura. Inizializza gli attributi con i valori forniti tramite `ManageOrderServiceParams` e restituisce un'istanza di `ManageOrderService`;

- *`CreateOrder(ctx context.Context, cmd port.CreateOrderCmd) (port.CreateOrderResponse, error)`*: metodo per creare un nuovo ordine#super[G]. Genera un identificativo univoco per l'ordine, salva i dettagli dell'ordine e avvia il processo di contatto con i magazzini;

- *`GetOrder(ctx context.Context, orderId string) (model.Order, error)`*: metodo per ottenere i dettagli di un ordine#super[G] specifico tramite il suo identificativo;

- *`GetAllOrders(ctx context.Context) []model.Order`*: metodo per ottenere una lista di tutti gli ordini registrati nel sistema;

- *`CreateTransfer(ctx context.Context, cmd port.CreateTransferCmd) (port.CreateTransferResponse, error)`*: metodo per creare un nuovo trasferimento#super[G]. Genera un identificativo univoco per il trasferimento#super[G], salva i dettagli del trasferimento#super[G] e avvia il processo di contatto con i magazzini;

- *`GetTransfer(ctx context.Context, transferId string) (model.Transfer, error)`*: metodo per ottenere i dettagli di un trasferimento#super[G] specifico tramite il suo identificativo;

- *`GetAllTransfers(ctx context.Context) []model.Transfer`*: metodo per ottenere una lista di tutti i trasferimenti registrati nel sistema;

- *`ContactWarehouses(ctx Context, cmd port.ContactWarehousesCmd) (port.ContactWarehousesResponse, error)`*: metodo per contattare i magazzini al fine di gestire ordini o trasferimenti. Gestisce i tentativi di contatto e le prenotazioni delle merci necessarie;

- *`createOrderCmdToSendOrderUpdateCmd(orderId string, cmd port.CreateOrderCmd) port.SendOrderUpdateCmd`*: funzione di utilità per convertire un comando di creazione ordine#super[G] in un comando di aggiornamento ordine#super[G];

- *`contactCmdToCalculateAvailabilityCmd(cmd port.ContactWarehousesCmd) port.CalculateAvailabilityCmd`*: funzione di utilità per convertire un comando di contatto con i magazzini in un comando di calcolo della disponibilità;

- *`warehouseAvailabilityToReservationCmd(warehouse port.WarehouseAvailability) port.RequestReservationCmd`*: funzione di utilità per convertire la disponibilità di un magazzino in un comando di prenotazione;

- *`contactCmdAndConfirmedToSendOrderUpdateCmd(cmd port.ContactWarehousesCmd, confirmed []port.ConfirmedReservation) port.SendOrderUpdateCmd`*: funzione di utilità per convertire un comando di contatto con i magazzini e le prenotazioni confermate in un comando di aggiornamento ordine#super[G];

- *`contactCmdToSendOrderUpdateCmdForCancel(cmd port.ContactWarehousesCmd) port.SendOrderUpdateCmd`*: funzione di utilità per convertire un comando di contatto con i magazzini in un comando di aggiornamento ordine#super[G] per annullare l'ordine.

==== IApplyStockUpdatePort <OrderIApplyStockUpdatePort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento dello stock#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyStockUpdate(ApplyStockUpdateCmd) error`*: il metodo deve permettere di applicare un aggiornamento dello stock#super[G]. Prende come parametro un oggetto `ApplyStockUpdateCmd` che contiene tutte le informazioni necessarie per l'aggiornamento dello stock#super[G]. Deve restituire un errore in caso di fallimento.

==== IGetOrderPort <OrderIGetOrderPort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere informazioni sugli ordini.

*Descrizione dei metodi dell'interfaccia:*

- *`GetOrder(model.OrderID) (model.Order, error)`*: il metodo deve permettere di ottenere i dettagli di un ordine#super[G] specifico, prendendo come parametro l'identificativo dell'ordine (`orderId`). Deve restituire un oggetto `Order` e un eventuale errore in caso di fallimento;

- *`GetAllOrder() []Order`*: il metodo deve permettere di ottenere una lista di tutti gli ordini registrati nel sistema, restituendo una slice di oggetti `Order`.

==== IGetTransferPort <OrderIGetTransferPort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere informazioni sui trasferimenti.

*Descrizione dei metodi dell'interfaccia:*

- *`GetTransfer(model.TransferID) (model.Transfer, error)`*: il metodo deve permettere di ottenere i dettagli di un trasferimento#super[G] specifico, prendendo come parametro l'identificativo del trasferimento#super[G] (`transferId`). Deve restituire un oggetto `Transfer` e un eventuale errore in caso di fallimento;

- *`GetAllTransfer() []model.Transfer`*: il metodo deve permettere di ottenere una lista di tutti i trasferimenti registrati nel sistema, restituendo una slice di oggetti `Transfer`.

==== ISetCompleteTransferPort <OrderISetCompleteTransferPort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare alla _persistence logic_ la volontà di completare un trasferimento#super[G] o incrementare il numero di aggiornamenti dello stock#super[G] associati a un trasferimento#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`SetComplete(model.TransferID) error`*: il metodo deve permettere di segnare un trasferimento#super[G] come completato, prendendo come parametro l'identificativo del trasferimento#super[G] (`transferId`). Deve restituire un errore in caso di fallimento;

- *`IncrementLinkedStockUpdate(model.TransferID) error`*: il metodo deve permettere di incrementare il numero di aggiornamenti dello stock#super[G] associati a un trasferimento#super[G], prendendo come parametro l'identificativo del trasferimento#super[G] (`transferId`). Deve restituire un errore in caso di fallimento.

==== ISetCompletedWarehouseOrderPort <OrderISetCompletedWarehouseOrderPort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare alla _persistence logic_ la volontà di completare un ordine#super[G] o segnalare il completamento di un ordine#super[G] da parte di un magazzino.

*Descrizione dei metodi dell'interfaccia:*

- *`SetCompletedWarehouse(SetCompletedWarehouseCmd) (model.Order, error)`*: il metodo deve permettere di segnalare il completamento di un ordine#super[G] da parte di un magazzino, prendendo come parametro un comando `SetCompletedWarehouseCmd`. Deve restituire un oggetto `Order` e un eventuale errore in caso di fallimento;

- *`SetComplete(model.OrderID) error`*: il metodo deve permettere di segnare un ordine#super[G] come completato, prendendo come parametro l'identificativo dell'ordine (`orderId`). Deve restituire un errore in caso di fallimento.

==== ApplyStockUpdateService <OrderApplyStockUpdateService>

La struttura `ApplyStockUpdateService` rappresenta un servizio per gestire l'applicazione degli aggiornamenti relativi allo stock#super[G]. Questo servizio si occupa di elaborare gli aggiornamenti dello stock#super[G] provenienti da ordini o trasferimenti, applicandoli al magazzino e aggiornando lo stato degli ordini o dei trasferimenti associati.

Implementa le seguenti interfacce (_Use Case_):

- *IApplyStockUpdateUseCase*, @OrderIApplyStockUpdateUseCase.

*Descrizione degli attributi della struttura:*

- *`applyStockUpdatePort port.IApplyStockUpdatePort`*: rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento dello stock#super[G]. Per maggiori informazioni, vedere la @OrderIApplyStockUpdatePort;
- *`applyOrderUpdatePort port.IApplyOrderUpdatePort`*: rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento di un ordine#super[G]. Per maggiori informazioni, vedere la @OrderIApplyOrderUpdatePort;
- *`getOrderPort port.IGetOrderPort`*: rappresenta la porta che consente alla _business logic_ di ottenere informazioni sugli ordini. Per maggiori informazioni, vedere la @OrderIGetOrderPort;
- *`getTransferPort port.IGetTransferPort`*: rappresenta la porta che consente alla _business logic_ di ottenere informazioni sui trasferimenti. Per maggiori informazioni, vedere la @OrderIGetTransferPort;
- *`applyTransferUpdatePort port.IApplyTransferUpdatePort`*: rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento di un trasferimento#super[G]. Per maggiori informazioni, vedere la @OrderIApplyTransferUpdatePort;
- *`setCompleteTransferPort port.ISetCompleteTransferPort`*: rappresenta la porta che consente alla _business logic_ di segnare un trasferimento#super[G] come completato o incrementare il numero di aggiornamenti dello stock#super[G] associati a un trasferimento#super[G]. Per maggiori informazioni, vedere la @OrderISetCompleteTransferPort;
- *`setCompletedWarehousePort port.ISetCompletedWarehouseOrderPort`*: rappresenta la porta che consente alla _business logic_ di segnalare il completamento di un ordine#super[G] da parte di un magazzino o di segnare un ordine#super[G] come completato. Per maggiori informazioni, vedere la @OrderISetCompletedWarehouseOrderPort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewApplyStockUpdateService(p ApplyStockUpdateServiceParams) *ApplyStockUpdateService`*: costruttore della struttura. Inizializza gli attributi con i valori forniti tramite `ApplyStockUpdateServiceParams` e restituisce un'istanza di `ApplyStockUpdateService`;

- *`ApplyStockUpdate(ctx context.Context, cmd port.StockUpdateCmd) error`*: metodo principale che gestisce l'applicazione di un aggiornamento dello stock#super[G]. Controlla se l'aggiornamento è relativo a un ordine#super[G] o a un trasferimento#super[G] e chiama i metodi appropriati per elaborarlo. Successivamente, applica l'aggiornamento dello stock#super[G] al magazzino tramite la porta `applyStockUpdatePort`;

- *`applyStockUpdateFromTransfer(cmd port.StockUpdateCmd) error`*: metodo che gestisce l'applicazione di un aggiornamento dello stock#super[G] relativo a un trasferimento#super[G]. Aggiorna lo stato del trasferimento#super[G] e verifica#super[G] se il trasferimento#super[G] è completato;

- *`applyStockUpdateFromOrder(cmd port.StockUpdateCmd) error`*: metodo che gestisce l'applicazione di un aggiornamento dello stock#super[G] relativo a un ordine#super[G]. Aggiorna lo stato dell'ordine e verifica#super[G] se l'ordine è completato.

==== IApplyOrderUpdatePort <OrderIApplyOrderUpdatePort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento di un ordine#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyOrderUpdate(ApplyOrderUpdateCmd) error`*: il metodo deve permettere di applicare un aggiornamento di un ordine#super[G], prendendo come parametro un oggetto di tipo `ApplyOrderUpdateCmd`. Deve restituire un errore in caso di fallimento.

==== IApplyTransferUpdatePort <OrderIApplyTransferUpdatePort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento di un trasferimento#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyTransferUpdate(ApplyTransferUpdateCmd) error`*: il metodo deve permettere di applicare un aggiornamento di un trasferimento#super[G], prendendo come parametro un oggetto di tipo `ApplyTransferUpdateCmd`. Deve restituire un errore in caso di fallimento.
==== ISendTransferUpdatePort <OrderISendTransferUpdatePort>

Rappresenta l'interfaccia che permette alla _business logic_ di comunicare con l'esterno per inviare un aggiornamento di un trasferimento#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`SendTransferUpdate(context.Context, SendTransferUpdateCmd) (model.Transfer, error)`*: il metodo deve permettere di inviare un aggiornamento di un trasferimento#super[G], prendendo come parametri il contesto e un comando `SendTransferUpdateCmd`. Deve restituire un oggetto `Transfer` contenente le informazioni aggiornate sul trasferimento#super[G] e un eventuale errore in caso di fallimento.

==== ApplyOrderUpdateService <OrderApplyOrderUpdateService>

La struttura `ApplyOrderUpdateService` rappresenta un servizio per gestire l'applicazione degli aggiornamenti relativi agli ordini e ai trasferimenti. Questo servizio si occupa di convertire i comandi ricevuti in un formato compatibile con le porte della _persistence logic_ e di inoltrare tali comandi per l'elaborazione.

Implementa le seguenti interfacce (_Use Case_):

- *IApplyOrderUpdateUseCase*, @OrderIApplyOrderUpdateUseCase;
- *IApplyTransferUpdateUseCase*, @OrderIApplyTransferUpdateUseCase.

*Descrizione degli attributi della struttura:*

- *`applyOrderUpdatePort port.IApplyOrderUpdatePort`*: rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento di un ordine#super[G]. Per maggiori informazioni, vedere la @OrderIApplyOrderUpdatePort;
- *`applyTransferUpdatePort port.IApplyTransferUpdatePort`*: rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento di un trasferimento#super[G]. Per maggiori informazioni, vedere la @OrderIApplyTransferUpdatePort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewApplyOrderUpdateService(p ApplyOrderUpdateServiceParams) *ApplyOrderUpdateService`*: costruttore della struttura. Inizializza gli attributi `applyOrderUpdatePort` e `applyTransferUpdatePort` con i valori forniti mediante `ApplyOrderUpdateServiceParams`, struttura dotata di `fx.In` e restituisce un'istanza di `ApplyOrderUpdateService`;

- *`ApplyOrderUpdate(ctx context.Context, cmd port.OrderUpdateCmd)`*: metodo che gestisce l'applicazione di un aggiornamento di un ordine#super[G]. Converte il comando `OrderUpdateCmd` in un comando `ApplyOrderUpdateCmd` utilizzando la funzione `orderUpdateCmdToApplyOrderUpdateCmd` e lo inoltra alla porta `applyOrderUpdatePort` per l'elaborazione;

- *`ApplyTransferUpdate(ctx context.Context, cmd port.TransferUpdateCmd)`*: metodo che gestisce l'applicazione di un aggiornamento di un trasferimento#super[G]. Converte il comando `TransferUpdateCmd` in un comando `ApplyTransferUpdateCmd` utilizzando la funzione `transferUpdateCmdToApplyTransferUpdateCmd` e lo inoltra alla porta `applyTransferUpdatePort` per l'elaborazione;

- *`orderUpdateCmdToApplyOrderUpdateCmd(cmd port.OrderUpdateCmd) port.ApplyOrderUpdateCmd`*: funzione di utilità che converte un comando `OrderUpdateCmd` in un comando `ApplyOrderUpdateCmd`. Mappa le informazioni sulle merci e i relativi dettagli dal comando originale al nuovo comando, rendendolo pronto per essere elaborato dalla _persistence logic_;

- *`transferUpdateCmdToApplyTransferUpdateCmd(cmd port.TransferUpdateCmd) port.ApplyTransferUpdateCmd`*: funzione di utilità che converte un comando `TransferUpdateCmd` in un comando `ApplyTransferUpdateCmd`. Mappa le informazioni sulle merci e i relativi dettagli dal comando originale al nuovo comando, rendendolo pronto per essere elaborato dalla _persistence logic_.

==== IGetOrderUseCase <OrderIGetOrderUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di ottenere informazioni sugli ordini.

*Descrizione dei metodi dell'interfaccia:*

- *`GetOrder(ctx context.Context, GetOrderCmd) (model.Order, error)`*: il metodo deve permettere di ottenere i dettagli di un ordine#super[G] specifico, prendendo come parametri il contesto e un comando `GetOrderCmd`. Deve restituire un oggetto `Order` e un eventuale errore in caso di fallimento;
- *`GetAllOrders(ctx context.Context) []model.Order`*: il metodo deve permettere di ottenere una lista di tutti gli ordini registrati nel sistema, prendendo come parametro il contesto e restituendo una slice di oggetti `Order`.

==== ICreateOrderUseCase <OrderICreateOrderUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di creare un nuovo ordine#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`CreateOrder(ctx context.Context, cmd CreateOrderCmd) (CreateOrderResponse, error)`*: il metodo deve permettere di creare un nuovo ordine#super[G], prendendo come parametri il contesto e un comando `CreateOrderCmd`. Deve restituire un oggetto `CreateOrderResponse` contenente l'identificativo dell'ordine creato e un eventuale errore in caso di fallimento.

==== OrderController <OrderOrderController>

La struttura `OrderController` rappresenta l'_application logic_ del microservizio *Order*. Si occupa di gestire le richieste relative alla creazione, al recupero e alla gestione degli ordini, interfacciandosi con la _business logic_ attraverso i relativi _Use Case_.

*Descrizione degli attributi della struttura:*

- *`broker *broker.NatsMessageBroker`*: rappresenta il broker di messaggistica NATS#super[G] utilizzato per pubblicare e ricevere messaggi.
- *`createOrderUseCase port.ICreateOrderUseCase`*: interfaccia per la creazione di un ordine#super[G].
- *`getOrderUseCase port.IGetOrderUseCase`*: interfaccia per il recupero degli ordini.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewOrderController(p OrderControllerParams) *OrderController`*: costruttore della struttura. Inizializza gli attributi `createOrderUseCase` e `getOrderUseCase` con i valori forniti tramite `OrderControllerParams`, che contiene anche quanto necessario per la telemetria.

- *`OrderCreateHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce le richieste di creazione di un ordine#super[G]. Valida i dati della richiesta, invoca il _Use Case_ per la creazione dell'ordine e risponde con l'esito dell'operazione.

- *`OrderGetHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce le richieste di recupero di un ordine#super[G] specifico. Valida i dati della richiesta, invoca il _Use Case_ per il recupero dell'ordine e risponde con i dettagli dell'ordine.

- *`OrderGetAllHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce le richieste di recupero di tutti gli ordini. Invoca il _Use Case_ per ottenere la lista degli ordini e risponde con i dettagli.

- *`checkCreateOrderRequestDTO(dto request.CreateOrderRequestDTO) error`*: valida i dati della richiesta di creazione di un ordine#super[G]. Restituisce un errore se i dati non sono validi.

- *`orderToGetGoodResponseDTO(order Order) response.GetOrderResponseDTO`*: converte un oggetto `Order` in un oggetto `response.GetOrderResponseDTO`.

- *`ordersToGetAllGoodResponseDTO(model []Order) response.GetAllOrderResponseDTO`*: converte una lista di oggetti `Order` in un oggetto `response.GetAllOrderResponseDTO`.

==== ICreateTransferUseCase <OrderICreateTransferUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di creare un nuovo trasferimento#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`CreateTransfer(context.Context, CreateTransferCmd) (CreateTransferResponse, error)`*: il metodo deve permettere di creare un nuovo trasferimento#super[G], prendendo come parametri il contesto e un comando `CreateTransferCmd`. Deve restituire un oggetto `CreateTransferResponse` contenente l'identificativo del trasferimento#super[G] creato e un eventuale errore in caso di fallimento.

==== IGetTransferUseCase <OrderIGetTransferUseCase>

Interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di ottenere informazioni sui trasferimenti.

*Descrizione dei metodi dell'interfaccia:*

- *`GetTransfer(context.Context, GetTransferCmd) (model.Transfer, error)`*: il metodo deve permettere di ottenere i dettagli di un trasferimento#super[G] specifico, prendendo come parametri il contesto e un comando `GetTransferCmd`. Deve restituire un oggetto `Transfer` e un eventuale errore in caso di fallimento;
- *`GetAllTransfers(context.Context) []model.Transfer`*: il metodo deve permettere di ottenere una lista di tutti i trasferimenti registrati nel sistema, prendendo come parametro il contesto e restituendo una slice di oggetti `Transfer`.

==== TransferController <OrderTransferController>

La struttura `TransferController` rappresenta l'_application logic_ del microservizio *Order*. Si occupa di gestire le richieste relative alla creazione, al recupero e alla gestione dei trasferimenti, interfacciandosi con la _business logic_ attraverso i relativi _Use Case_.

*Descrizione degli attributi della struttura:*

- *`createTransferUseCase port.ICreateTransferUseCase`*: interfaccia per la creazione di un trasferimento#super[G].
- *`getTransferUseCase port.IGetTransferUseCase`*: interfaccia per il recupero dei trasferimenti.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewTransferController(p TransferControllerParams) *TransferController`*: costruttore della struttura. Inizializza gli attributi `createTransferUseCase` e `getTransferUseCase` con i valori forniti tramite `TransferControllerParams`, che contiene anche quanto necessario per la telemetria.

- *`TransferCreateHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce le richieste di creazione di un trasferimento#super[G]. Valida i dati della richiesta, invoca il _Use Case_ per la creazione del trasferimento#super[G] e risponde con l'esito dell'operazione.

- *`TransferGetHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce le richieste di recupero di un trasferimento#super[G] specifico. Valida i dati della richiesta, invoca il _Use Case_ per il recupero del trasferimento#super[G] e risponde con i dettagli del trasferimento#super[G].

- *`TransferGetAllHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce le richieste di recupero di tutti i trasferimenti. Invoca il _Use Case_ per ottenere la lista dei trasferimenti e risponde con i dettagli.

- *`modelTransferToTransferInfoDTO(transfer Transfer) response.TransferInfo`*: converte un oggetto `Transfer` in un oggetto `response.TransferInfo`.

==== IApplyOrderUpdateUseCase <OrderIApplyOrderUpdateUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un aggiornamento di un ordine#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyOrderUpdate(context.Context, OrderUpdateCmd) error`*: il metodo deve permettere di applicare un aggiornamento di un ordine#super[G], prendendo come parametri il contesto e un oggetto di tipo `OrderUpdateCmd`. Deve restituire un errore in caso di fallimento.

==== IApplyTransferUpdateUseCase <OrderIApplyTransferUpdateUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un aggiornamento di un trasferimento#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyTransferUpdate(context.Context, TransferUpdateCmd)`*: il metodo deve permettere di applicare un aggiornamento di un trasferimento#super[G], prendendo come parametri il contesto e un oggetto di tipo `TransferUpdateCmd`. Deve restituire un errore in caso di fallimento.

==== IContactWarehousesUseCase <OrderIContactWarehousesUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di contattare i magazzini per gestire ordini o trasferimenti.

*Descrizione dei metodi dell'interfaccia:*

- *`ContactWarehouses(context.Context, ContactWarehousesCmd) (ContactWarehousesResponse, error)`*: il metodo deve permettere di contattare i magazzini, prendendo come parametri il contesto e un comando `ContactWarehousesCmd`. Deve restituire un oggetto `ContactWarehousesResponse` contenente le informazioni sull'esito dell'operazione e un eventuale errore in caso di fallimento.

==== OrderListener <OrderOrderListener>

La struttura `OrderListener` rappresenta un componente dell'_application logic_ del microservizio *Order*. È progettata per ascoltare eventi relativi agli aggiornamenti di ordini, trasferimenti e contatti con i magazzini, provenienti dal sistema di messaggistica NATS#super[G] JetStream, e per inoltrare tali eventi alla _business logic_ per l'elaborazione.

*Descrizione degli attributi della struttura:*

- *`applyOrderUpdateUseCase port.IApplyOrderUpdateUseCase`*: rappresenta il caso d'uso#super[G] per applicare aggiornamenti agli ordini. Per maggiori informazioni, vedere la @OrderIApplyOrderUpdateUseCase;
- *`applyTransferUpdateUseCase port.IApplyTransferUpdateUseCase`*: rappresenta il caso d'uso#super[G] per applicare aggiornamenti ai trasferimenti. Per maggiori informazioni, vedere la @OrderIApplyTransferUpdateUseCase;
- *`contactWarehouseUseCase port.IContactWarehousesUseCase`*: rappresenta il caso d'uso#super[G] per contattare i magazzini. Per maggiori informazioni, vedere la @OrderIContactWarehousesUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewOrderListener(p OrderListenerParams) *OrderListener`*: costruttore della struttura. Inizializza gli attributi con i valori forniti nella struttura `OrderListenerParams`, che contiene anche quanto necessario per la telemetria, e restituisce un'istanza di `OrderListener`;

- *`ListenOrderUpdate(ctx context.Context, msg jetstream.Msg) error`*: metodo che gestisce gli eventi di aggiornamento degli ordini. Riceve un messaggio dal sistema di messaggistica NATS#super[G] JetStream, lo deserializza in un oggetto `stream.OrderUpdate`, lo converte in un comando `OrderUpdateCmd` e lo inoltra alla _business logic_ tramite il metodo `ApplyOrderUpdate` dell'interfaccia `IApplyOrderUpdateUseCase`. Restituisce un errore in caso di fallimento durante una qualsiasi di queste operazioni;

- *`ListenTransferUpdate(ctx context.Context, msg jetstream.Msg) error`*: metodo che gestisce gli eventi di aggiornamento dei trasferimenti. Riceve un messaggio dal sistema di messaggistica NATS#super[G] JetStream, lo deserializza in un oggetto `stream.TransferUpdate`, lo converte in un comando `TransferUpdateCmd` e lo inoltra alla _business logic_ tramite il metodo `ApplyTransferUpdate` dell'interfaccia `IApplyTransferUpdateUseCase`. Restituisce un errore in caso di fallimento durante una qualsiasi di queste operazioni;

- *`ListenContactWarehouses(ctx Context, msg jetstream.Msg) error`*: metodo che gestisce gli eventi di contatto con i magazzini. Riceve un messaggio dal sistema di messaggistica NATS#super[G] JetStream, lo deserializza in un oggetto `internalStream.ContactWarehouses`, lo converte in un comando `ContactWarehousesCmd` e lo inoltra alla _business logic_ tramite il metodo `ContactWarehouses` dell'interfaccia `IContactWarehousesUseCase`. Se è necessario un nuovo tentativo, utilizza il metodo `NakWithDelay` per ritardare il messaggio e restituisce un errore specifico per indicare che il messaggio non è stato riconosciuto;

- *`orderUpdateEventToApplyOrderUpdateCmd(event stream.OrderUpdate) port.OrderUpdateCmd`*: funzione di utilità che converte un evento `stream.OrderUpdate` in un comando `OrderUpdateCmd`. Mappa le informazioni sulle merci e i relativi dettagli dall'evento al comando, rendendolo pronto per essere elaborato dalla _business logic_;

- *`transferUpdateEventToApplyTransferUpdateCmd(event stream.TransferUpdate) port.TransferUpdateCmd`*: funzione di utilità che converte un evento `stream.TransferUpdate` in un comando `TransferUpdateCmd`. Mappa le informazioni sulle merci e i relativi dettagli dall'evento al comando, rendendolo pronto per essere elaborato dalla _business logic_.

==== IApplyStockUpdateUseCase <OrderIApplyStockUpdateUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un aggiornamento dello _stock_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyStockUpdate(context.Context,StockUpdateCmd) error`*: il metodo deve permettere di applicare un aggiornamento dello stock#super[G]. Prende come parametri il contesto e un oggetto `StockUpdateCmd` che contiene tutte le informazioni necessarie per l'aggiornamento dello stock#super[G].

==== StockUpdateListener <OrderStockUpdateListener>

La struttura `StockUpdateListener` rappresenta un componente dell'_application logic_ del microservizio *Warehouse*#super[G]. È progettata per ascoltare eventi di aggiornamento dello stock#super[G] provenienti dal sistema di messaggistica NATS#super[G] JetStream e per inoltrare tali eventi alla _business logic_ per l'elaborazione.

*Descrizione degli attributi della struttura:*

- *`applyStockUpdateUseCase port.IApplyStockUpdateUseCase`*: rappresenta l'interfaccia che consente alla _application logic_ di comunicare con la _business logic_ per applicare un aggiornamento dello stock#super[G]. Per maggiori informazioni, vedere la @OrderIApplyStockUpdateUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockUpdateListener(applyStockUpdateUseCase port.IApplyStockUpdateUseCase, mp MetricParams) *StockUpdateListener`*: costruttore della struttura. Inizializza l'attributo `applyStockUpdateUseCase` con il valore fornito come parametro e la telemetria con quanto contenuto in `MetricParams` e restituisce un'istanza di `StockUpdateListener`.

- *`ListenStockUpdate(ctx context.Context, msg jetstream.Msg) error`*: metodo che gestisce gli eventi di aggiornamento dello stock#super[G]. Riceve un messaggio dal sistema di messaggistica NATS#super[G] JetStream, lo deserializza in un oggetto `stream.StockUpdate`, lo converte in un comando `StockUpdateCmd` e lo inoltra alla _business logic_ tramite il metodo `ApplyStockUpdate` dell'interfaccia `IApplyStockUpdateUseCase`. Restituisce un errore in caso di fallimento durante una qualsiasi di queste operazioni.

- *`StockUpdateEventToApplyStockUpdateCmd(event stream.StockUpdate) port.StockUpdateCmd`*: funzione di utilità che converte un evento `stream.StockUpdate` in un comando `StockUpdateCmd`. Mappa le informazioni sulle merci e i relativi dettagli dall'evento al comando, rendendolo pronto per essere elaborato dalla _business logic_.

==== ITransferRepository <OrderITransferRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ per la gestione dei trasferimenti nel microservizio *Order*.

*Descrizione dei metodi dell'interfaccia:*

- *`GetTransfer(transferId string) (Transfer, error)`*: il metodo deve permettere di ottenere i dettagli di un trasferimento#super[G] specifico, prendendo come parametro l'identificativo del trasferimento#super[G] (`transferId`). Deve restituire un oggetto `Transfer` contenente i dettagli del trasferimento#super[G] e un eventuale errore in caso di fallimento;

- *`GetTransfers() []Transfer`*: il metodo deve permettere di ottenere una lista di tutti i trasferimenti registrati nel sistema. Deve restituire una slice di oggetti `Transfer`;

- *`SetTransfer(transferId string, transfer Transfer) bool`*: il metodo deve permettere di impostare o aggiornare i dettagli di un trasferimento#super[G] specifico, prendendo come parametri l'identificativo del trasferimento#super[G] (`transferId`) e un oggetto `Transfer` contenente i dettagli aggiornati. Deve restituire `true` se l'operazione è andata a buon fine, `false` altrimenti;

- *`SetComplete(transferId string) error`*: il metodo deve permettere di segnare un trasferimento#super[G] come completato, prendendo come parametro l'identificativo del trasferimento#super[G] (`transferId`). Deve restituire un errore in caso di fallimento;

- *`IncrementLinkedStockUpdate(transferId string) error`*: il metodo deve permettere di incrementare il numero di aggiornamenti dello stock#super[G] associati a un trasferimento#super[G], prendendo come parametro l'identificativo del trasferimento#super[G] (`transferId`). Deve restituire un errore in caso di fallimento.

==== TransferRepositoryImpl <OrderTransferRepositoryImpl>

La struttura `TransferRepositoryImpl` rappresenta l'implementazione della _persistence logic_ per la gestione dei trasferimenti nel microservizio *Order*. Questa struttura utilizza una mappa per memorizzare i trasferimenti e un mutex per garantire la sicurezza dei dati in caso di accesso concorrente.

*Descrizione degli attributi della struttura:*

- *`m sync.Mutex`*: mutex utilizzato per garantire la sicurezza dei dati in caso di accesso concorrente;
- *`transferMap map[string]Transfer`*: mappa che associa l'identificativo di un trasferimento#super[G] (*string*) all'oggetto `Transfer` corrispondente.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewTransferRepositoryImpl() *TransferRepositoryImpl`*: costruttore della struttura. Inizializza l'attributo `transferMap` come una mappa vuota e ritorna un puntatore alla struttura creata;

- *`GetTransfer(transferId string) (Transfer, error)`*: restituisce i dettagli di un trasferimento#super[G] specifico tramite il suo identificativo. Ritorna un errore `ErrTransferNotFound` se il trasferimento#super[G] non esiste;

- *`GetTransfers() []Transfer`*: restituisce una lista di tutti i trasferimenti registrati nel sistema;

- *`SetTransfer(transferId string, transfer Transfer) bool`*: aggiunge o aggiorna un trasferimento#super[G] nella mappa. Ritorna `true` se il trasferimento#super[G] esisteva già, `false` altrimenti;

- *`SetComplete(transferId string) error`*: segna un trasferimento#super[G] come completato. Ritorna un errore `ErrTransferNotFound` se il trasferimento#super[G] non esiste;

- *`IncrementLinkedStockUpdate(transferId string) error`*: incrementa il numero di aggiornamenti dello stock#super[G] associati a un trasferimento#super[G]. Ritorna un errore `ErrTransferNotFound` se il trasferimento#super[G] non esiste.

==== TransferPersistenceAdapter <OrderTransferPersistenceAdapter>

_Adapter_ che mette in comunicazione la _business logic_ con la _persistence logic_ per la gestione dei trasferimenti.

*Descrizione degli attributi della struttura:*

- *`transferRepo ITransferRepository`*: rappresenta il repository#super[G] utilizzato per accedere e gestire i dati relativi ai trasferimenti.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewTransferPersistenceAdapter(transferRepo ITransferRepository) *TransferPersistenceAdapter`*: costruttore della struttura. Inizializza l'attributo `transferRepo` con il repository#super[G] fornito come parametro.

- *`SetComplete(transferId model.TransferID) error`*: segna un trasferimento#super[G] come completato. Prende come parametro l'identificativo del trasferimento#super[G] (`transferId`) e restituisce un errore in caso di fallimento.

- *`IncrementLinkedStockUpdate(transferId model.TransferID) error`*: incrementa il numero di aggiornamenti dello stock#super[G] associati a un trasferimento#super[G]. Prende come parametro l'identificativo del trasferimento#super[G] (`transferId`) e restituisce un errore in caso di fallimento.

- *`ApplyTransferUpdate(cmd port.ApplyTransferUpdateCmd) error`*: applica un aggiornamento di un trasferimento#super[G]. Prende come parametro un comando `ApplyTransferUpdateCmd` contenente i dettagli dell'aggiornamento e restituisce un errore in caso di fallimento.

- *`GetTransfer(transferId model.TransferID) (model.Transfer, error)`*: restituisce i dettagli di un trasferimento#super[G] specifico. Prende come parametro l'identificativo del trasferimento#super[G] (`transferId`) e restituisce un oggetto `Transfer` e un eventuale errore in caso di fallimento.

- *`GetAllTransfer() []Transfer`*: restituisce una lista di tutti i trasferimenti registrati nel sistema. Restituisce una slice di oggetti `Transfer`.

- *`repoTransferToModelTransfer(transfer model.Transfer) model.Transfer`*: converte un oggetto `Transfer` del repository#super[G] in un oggetto `Transfer` utilizzato nella business logic.

- *`repoTransfersToModelTransfers(transfers []model.Transfer) []model.Transfer`*: converte una lista di oggetti `Transfer` del repository#super[G] in una lista di oggetti `Transfer` utilizzati nella business logic.

==== IStockRepository <OrderIStockRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ per la gestione dello stock#super[G] nel microservizio *Order*.

*Descrizione dei metodi dell'interfaccia:*

- *`GetStock(warehouseId string, goodId string) (int64, error)`*: il metodo deve permettere di ottenere la quantità di una merce specifica in un determinato magazzino. Prende come parametri l'identificativo del magazzino (`warehouseId`) e l'identificativo della merce (`goodId`). Restituisce la quantità della merce come `int64` e un eventuale errore in caso di fallimento;

- *`SetStock(warehouseId string, goodId string, stоck int64) bool`*: il metodo deve permettere di impostare la quantità di una merce in un determinato magazzino. Prende come parametri l'identificativo del magazzino (`warehouseId`), l'identificativo della merce (`goodId`) e la quantità da impostare (`stock#super[G]`). Restituisce `true` se l'operazione è andata a buon fine, `false` altrimenti;

- *`AddStock(warehouseId string, goodId string, stоck int64) (bool, error)`*: il metodo deve permettere di aggiungere una quantità specifica di una merce a un determinato magazzino. Prende come parametri l'identificativo del magazzino (`warehouseId`), l'identificativo della merce (`goodId`) e la quantità da aggiungere (`stock#super[G]`). Restituisce `true` se l'operazione è andata a buon fine, `false` altrimenti, e un eventuale errore in caso di fallimento;

- *`GetGlobalStock(goodId string) int64`*: il metodo deve permettere di ottenere la quantità globale di una merce presente in tutti i magazzini. Prende come parametro l'identificativo della merce (`goodId`) e restituisce la quantità globale come `int64`;

- *`GetWarehouses() []string`*: il metodo deve permettere di ottenere l'elenco di tutti i magazzini registrati nel sistema. Restituisce una slice di stringhe contenente gli identificativi dei magazzini.


==== StockRepositoryImpl <OrderStockRepositoryImpl>

La struttura `StockRepositoryImpl` rappresenta l'implementazione della _persistence logic_ per la gestione dello stock#super[G] nel microservizio *Order*. Questa struttura utilizza una mappa per tenere traccia dello stock#super[G] di ciascun magazzino e una mappa globale per monitorare la quantità totale di ciascuna merce.

*Descrizione degli attributi della struttura:*

- *`m sync.Mutex`*: mutex utilizzato per garantire la sicurezza dei dati in caso di accesso concorrente;
- *`warehouseMap map[string]WarehouseStock`*: mappa che associa l'identificativo di un magazzino (*string*) a un oggetto `WarehouseStock`, contenente le informazioni sullo stock#super[G] del magazzino;
- *`globalStockMap map[string]int64`*: mappa che associa l'identificativo di una merce (*string*) alla quantità totale disponibile nei vari magazzini (*int64*).

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockRepositoryImpl() *StockRepositoryImpl`*: costruttore della struttura. Inizializza le mappe `warehouseMap` e `globalStockMap` come mappe vuote e ritorna un puntatore alla struttura creata;
- *`GetStock(warehouseId string, goodId string) (int64, error)`*: restituisce la quantità di una merce specifica in un determinato magazzino. Ritorna un errore `ErrWarehouseNotFound` se il magazzino non esiste e `ErrGoodNotFound` se la merce non è presente nel magazzino;
- *`SetStock(warehouseId string, goodId string, stоck int64) bool`*: imposta la quantità di una merce in un determinato magazzino. Se il magazzino non esiste, viene creato automaticamente. Ritorna `true` se la merce esisteva già, `false` altrimenti;
- *`AddStock(warehouseId string, goodId string, stоck int64) (bool, error)`*: aggiunge una quantità specifica di una merce a un determinato magazzino. Ritorna `true` se la merce esisteva già, `false` altrimenti, e un errore `ErrWarehouseNotFound` o `ErrGoodNotFound` in caso di fallimento;
- *`GetGlobalStock(goodId string) int64`*: restituisce la quantità totale di una merce disponibile in tutti i magazzini. Se la merce non esiste, ritorna 0;
- *`GetWarehouses() []string`*: restituisce una lista degli identificativi di tutti i magazzini registrati nel sistema.

==== StockPersistenceAdapter <OrderStockPersistenceAdapter>

_Adapter_ che mette in comunicazione la _business logic_ del microservizio *Order* con la _persistence logic_ per la gestione dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`stockRepo IStockRepository`*: rappresenta il repository#super[G] utilizzato per accedere e gestire i dati relativi allo stock#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockPersistenceAdapter(stockRepo IStockRepository) *StockPersistenceAdapter`*: costruttore della struttura. Inizializza l'attributo `stockRepo` con il repository#super[G] fornito come parametro.

- *`ApplyStockUpdate(cmd port.ApplyStockUpdateCmd) error`*: applica un aggiornamento dello stock#super[G]. Per ogni merce inclusa nel comando, aggiorna la quantità nel magazzino specificato.

- *`GetStock(cmd port.GetStockCmd) (model.GoodStock, error)`*: restituisce la quantità di una merce specifica in un determinato magazzino. Se il magazzino non esiste, restituisce un errore `ErrStockNotFound`.

- *`GetGlobalStock(GoodID model.GoodID) model.GoodStock`*: restituisce la quantità globale di una merce presente in tutti i magazzini.

- *`GetWarehouses() []model.Warehouse`*: restituisce una lista di tutti i magazzini registrati nel sistema.

==== IOrderRepository <OrderIOrderRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ per la gestione degli ordini nel microservizio *Order*.

*Descrizione dei metodi dell'interfaccia:*

- *`GetOrder(orderId string) (Order, error)`*: il metodo deve permettere di ottenere i dettagli di un ordine#super[G] specifico, prendendo come parametro l'identificativo dell'ordine (`orderId`). Deve restituire un oggetto `Order` contenente i dettagli dell'ordine e un eventuale errore in caso di fallimento;

- *`GetOrders() []Order`*: il metodo deve permettere di ottenere una lista di tutti gli ordini registrati nel sistema. Deve restituire una slice di oggetti `Order`;

- *`SetOrder(orderId string, order Order) bool`*: il metodo deve permettere di impostare o aggiornare i dettagli di un ordine#super[G] specifico, prendendo come parametri l'identificativo dell'ordine (`orderId`) e un oggetto `Order` contenente i dettagli aggiornati. Deve restituire `true` se l'operazione è andata a buon fine, `false` altrimenti;

- *`AddCompletedWarehouse(orderId string, warehouseId string, goods map[string]int64) (Order, error)`*: il metodo deve permettere di aggiungere un magazzino completato a un ordine#super[G] specifico, aggiornando le quantità delle merci coinvolte. Deve restituire l'ordine aggiornato e un eventuale errore in caso di fallimento;

- *`SetComplete(orderId string) error`*: il metodo deve permettere di segnare un ordine#super[G] come completato, prendendo come parametro l'identificativo dell'ordine (`orderId`). Deve restituire un errore in caso di fallimento.

==== OrderRepositoryImpl <OrderOrderRepositoryImpl>

Oggetto che implementa la _persistence logic_ per la gestione degli ordini nel microservizio *Order*.

*Descrizione degli attributi della struttura:*

- *`m sync.Mutex`*: mutex utilizzato per garantire la sicurezza dei dati in caso di accesso concorrente;
- *`orderMap map[string]Order`*: mappa che associa l'identificativo di un ordine#super[G] (*string*) all'oggetto `Order` corrispondente.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewOrderRepositoryImpl() *OrderRepositoryImpl`*: costruttore della struttura. Inizializza l'attributo `orderMap` come una mappa vuota e ritorna un puntatore alla struttura creata;
- *`GetOrder(orderId string) (Order, error)`*: restituisce i dettagli di un ordine#super[G] specifico tramite il suo identificativo. Ritorna un errore `ErrOrderNotFound` se l'ordine non esiste;
- *`GetOrders() []Order`*: restituisce una lista di tutti gli ordini registrati nel sistema;
- *`SetOrder(orderId string, order Order) bool`*: aggiunge o aggiorna un ordine#super[G] nella mappa. Ritorna `true` se l'ordine esisteva già, `false` altrimenti;
- *`AddCompletedWarehouse(orderId string, warehouseId string, goods map[string]int64) (Order, error)`*: aggiunge un magazzino completato a un ordine#super[G] specifico, aggiornando le quantità delle merci coinvolte. Ritorna l'ordine aggiornato e un errore `ErrOrderNotFound` se l'ordine non esiste;
- *`SetComplete(orderId string) error`*: segna un ordine#super[G] come completato. Ritorna un errore `ErrOrderNotFound` se l'ordine non esiste.

==== OrderPersistenceAdapter <OrderOrderPersistenceAdapter>

_Adapter_ che mette in comunicazione la _business logic_ del microservizio *Order* con la _persistence logic_ per la gestione degli ordini.

*Descrizione degli attributi della struttura:*

- *`orderRepo IOrderRepository`*: rappresenta il repository#super[G] utilizzato per accedere e gestire i dati relativi agli ordini.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewOrderPersistenceAdapter(orderRepo IOrderRepository) *OrderPersistenceAdapter`*: costruttore della struttura. Inizializza l'attributo `orderRepo` con il repository#super[G] fornito come parametro.

- *`SetCompletedWarehouse(cmd port.SetCompletedWarehouseCmd) (model.Order, error)`*: segna un magazzino come completato per un ordine#super[G] specifico. Aggrega le quantità delle merci coinvolte e aggiorna l'ordine nel repository#super[G]. Restituisce l'ordine aggiornato in formato `Order` e un eventuale errore in caso di fallimento.

- *`SetComplete(orderId model.OrderID) error`*: segna un ordine#super[G] come completato nel repository#super[G]. Restituisce un errore in caso di fallimento.

- *`ApplyOrderUpdate(cmd port.ApplyOrderUpdateCmd)`*: applica un aggiornamento a un ordine#super[G] esistente o crea un nuovo ordine#super[G] se non esiste. Aggiorna i dettagli dell'ordine, inclusi i magazzini, le merci e le prenotazioni, e salva l'ordine nel repository#super[G].

- *`GetOrder(orderId model.OrderID) (model.Order, error)`*: restituisce i dettagli di un ordine#super[G] specifico dal repository#super[G]. Converte l'ordine dal formato del repository#super[G] a `Order`. Restituisce un errore in caso di fallimento.

- *`GetAllOrder() []model.Order`*: restituisce una lista di tutti gli ordini registrati nel repository#super[G]. Converte gli ordini dal formato del repository#super[G] a `Order`.

- *`repoOrderToModelOrder(order model.Order) model.Order`*: funzione di utilità che converte un oggetto `Order` del repository#super[G] in un oggetto `Order` utilizzato nella business logic.

- *`repoOrdersToModelOrders(orders []model.Order) []mddel.Order`*: funzione di utilità che converte una lista di oggetti `Order` del repository#super[G] in una lista di oggetti `Order` utilizzati nella business logic.

==== NatsStreamAdapter <OrderNatsStreamAdapter>

Rappresenta un _Adapter_ che mette in comunicazione la _business logic_ con il sistema di messaggistica NATS#super[G] per gestire aggiornamenti di ordini, trasferimenti, contatti con i magazzini e richieste di prenotazione.

*Descrizione degli attributi della struttura:*

- *`broker *broker.NatsMessageBroker`*: rappresenta il broker di messaggistica NATS#super[G] utilizzato per pubblicare e ricevere messaggi.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewNatsStreamAdapter(broker *broker.NatsMessageBroker) *NatsStreamAdapter`*: costruttore della struttura. Inizializza l'attributo `broker` con il valore passato come parametro.

- *`SendOrderUpdate(ctx context.Context, cmd port.SendOrderUpdateCmd) (model.Order, error)`*: invia un aggiornamento di un ordine#super[G] al sistema di messaggistica NATS#super[G]. Restituisce un oggetto `Order` contenente i dettagli dell'ordine aggiornato e un eventuale errore in caso di fallimento.

- *`SendTransferUpdate(ctx context.Context, cmd port.SendTransferUpdateCmd) (model.Transfer, error)`*: invia un aggiornamento di un trasferimento#super[G] al sistema di messaggistica NATS#super[G]. Restituisce un oggetto `Transfer` contenente i dettagli del trasferimento#super[G] aggiornato e un eventuale errore in caso di fallimento.

- *`SendContactWarehouses(ctx context.Context, cmd port.SendContactWarehouseCmd) error`*: invia un comando per contattare i magazzini al sistema di messaggistica NATS#super[G]. Restituisce un errore in caso di fallimento.

- *`RequestReservation(ctx context.Context, cmd port.RequestReservationCmd) (port.RequestReservationResponse, error)`*: invia una richiesta di prenotazione di merci al sistema di messaggistica NATS#super[G]. Restituisce un oggetto `RequestReservationResponse` contenente l'identificativo della prenotazione creata e un eventuale errore in caso di fallimento.

==== HealthCheckController <OrderHealthCheckController>
#figure(
  image("../../assets/order/HealthCheckController.png", width: 35%),
  caption: "Order - HealthCheckController",
)
La struttura `HealthCheckController` rappresenta l'_application logic_ per la gestione delle richieste di controllo dello stato di salute del microservizio. È progettata per rispondere a richieste di tipo "ping" con una risposta "pong", indicando che il microservizio è attivo e funzionante.

*Descrizione degli attributi della struttura:*

Questa struttura non possiede attributi.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewHealthCheckController() *HealthCheckController`*: costruttore della struttura. Restituisce un'istanza di `HealthCheckController`.

- *`PingHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce le richieste di tipo "ping" ricevute tramite il sistema di messaggistica NATS#super[G]. Risponde con un messaggio "pong". Ritorna un errore in caso di fallimento durante la serializzazione della risposta o l'invio del messaggio di risposta.


=== Catalog <catalog>

#figure(
  image("../../assets/catalog/Catalog.png", width: 125%),
  caption: "Componenti del microservizio Catalog",
)

Il microservizio *Catalog* viene utilizzato per tenere traccia dell'inventario globale e della situazione di ciascun singolo magazzino.

Il microservizio tiene traccia dell'aggiunta e della modifica delle informazioni delle merci, prestando attenzione anche all'aggiunta di _stock_#super[G] delle merci stesse.

È formato da tre componenti principali:

- *CatalogController*, che rappresenta l'_application logic_;
- *CatalogService*, che rappresenta la _business logic_;
- *CatalogRepository*, che rappresenta la _persistence logic_.

Le tre componenti, assieme agli oggetti eventualmente utilizzati saranno ora esposti.

==== Oggetti comuni del microservizio

===== Warehouse <Warehouse>

#figure(
  image("../../assets/catalog/Warehouse.png", width: 35%),
  caption: "Catalog - Warehouse",
)

Rappresenta un magazzino registrato nel Sistema.

*Descrizione degli attributi della struttura:*
- *`ID string`*, attributo di tipo *string* che rappresenta l'Id del magazzino;
- *`Stock map[string]int64`*, mappa che ha come chiave una *string* (identificativo della merce) e come valore un *int64* (la quantità della rispettiva merce nel presente magazzino)

*Descrizione dei metodi invocabili dalla struttura:*
- *`NewWarehouse(ID string) *Warehouse`*: rappresenta il costruttore della classe, prende una *string* come parametro per inizializzare l'id del magazzino;
- *`SetStock(ID string, newQuantity int64)`*: per modificare la quantità della merce con id pari al parametro *string* nel valore passato come parametro *int64*;
- *`addGood(ID string)`*: per aggiungere una merce nel magazzino, impostando il rispettivo id nel valore di tipo *string* passato come parametro.

===== Good <Good>

#figure(
  image("../../assets/catalog/Good.png", width: 45%),
  caption: "Catalog - Good",
)

Rappresenta una merce registrata nel Sistema.

*Descrizione degli attributi della struttura:*
- *`Name string`*: attributo *string* che rappresenta il nome della merce;
- *`Description string`*: attributo *string* che rappresenta la descrizione della merce;
- *`ID string`*: attributo *string* che rappresenta l'id della merce

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGood(ID string, name string, description string) *Good`*: rappresenta il costruttore della struttura, restituisce un *Good*#super[G] inizializzato ai valori passati come parametro;
- *`GetID() string`*: restituisce l'id della merce;
- *`GetName() string`*: restituisce il nome della merce;
- *`GetDescription() string`*: restituisce la descrizione della merce;
- *`SetDescription(newDescription string) error`*: imposta la descrizione della merce al valore passato come parametro. Restituisce un errore se il parametro è una stringa vuota;
- *`SetName(newName string) error`*: imposta il nome della merce al valore passato come parametro. Restituisce un errore se il parametro è una stringa vuota.

===== AddChangeGoodCmd

#figure(
  image("../../assets/catalog/AddChangeGoodCmd.png", width: 75%),
  caption: "Catalog - AddChangeGoodCmd",
)

Rappresenta il _Command_ per aggiungere o modificare le informazioni di una merce.

*Descrizione degli attributi della struttura:*

- *`id string`*: rappresenta l'id della merce da aggiungere o modificare;
- *`name string`*: rappresenta il nuovo nome da assegnare alla merce in questione;
- *`description`*: rappresenta la nuova descrizione da assegnare alla merce in questione;

*Descrizione dei metodi invocabili dalla struttura:*

- *` NewAddChangeGoodCmd(id string, name string, description string) *AddChangeGoodCmd`*: rappresenta il costruttore della struttura, che viene inizializzata in base ai parametri richiesti (*id* per identificare l'id della merce interessata, *name* per indicarne il nome e *description* per rappresentarne la descrizione);
- *`GetId() string`*: ritorna l'id registrato nel _Command_;
- *`GetName() string`*: ritorna il nome registrato nel _Command_;
- *`GetDescription() string`*: ritorna la descrizione registrata nel _Command_;

===== GetGoodsInfoCmd

#figure(
  image("../../assets/catalog/GetGoodsInfoCmd.png", width: 75%),
  caption: "Catalog - GetGoodsInfoCmd",
)

Rappresenta il _Command_ per richiedere i dati delle merci registrate nel Sistema.

*Descrizione degli attributi della struttura:*

questa struttura non possiede attributi

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetGoodsInfoCmd() *GetGoodsInfoCmd`*: rappresenta il costruttore del _Command_.

===== GetGoodsQuantityCmd

#figure(
  image("../../assets/catalog/GetGoodsQuantityCmd.png", width: 75%),
  caption: "Catalog - GetGoodsQuantityCmd",
)

Rappresenta il _Command_ per richiedere la quantità globale delle merci registrate nel Sistema.

*Descrizione degli attributi della struttura:*

questa struttura non possiede attributi

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetGoodsQuantityCmd() *GetGoodsQuantityCmd`*: rappresenta il costruttore del _Command_.

===== GetWarehousesCmd

#figure(
  image("../../assets/catalog/GetWarehousesCmd.png", width: 75%),
  caption: "Catalog - GetWarehousesCmd",
)

Rappresenta il _Command_ per richiedere l'inventario dei magazzini registrati nel Sistema.

*Descrizione degli attributi della struttura:*

questa struttura non possiede attributi

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetWarehousesCmd() *GetWarehousesCmd`*: rappresenta il costruttore del _Command_.

===== SetGoodQuantityCmd

#figure(
  image("../../assets/catalog/SetGoodQuantityCmd.png", width: 75%),
  caption: "Catalog - SetGoodQuantityCmd",
)

Rappresenta il _Command_ per aggiornare la quantità di una merce in un magazzino e, conseguentemente, la quantità globale della merce stessa.

*Descrizione degli attributi della struttura:*

- *`warehouseID string`*: rappresenta l'id del magazzino dove la quantità della merce va modificata;

- *`goodID string`*: rappresenta l'id della merce la cui quantità va modificata;

- *`newQuantity int64`*: rappresenta la nuova quantità della merce in questione.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewSetGoodQuantityCmd(warehouseId string, goodId string, newQuantity int64) *SetGoodQuantityCmd`*: rappresenta il costruttore del _Command_;

- *`GetGoodId() string`*: permette di ottenere l'id della merce registrata nel _Command_;

- *`GetWarehouseId() string`*: permette di ottenere il magazzino registrato nel _Command_;

- *`GetNewQuantity() int64`*: permette di ottenere la quantità registrata nel _Command_.

===== SetMultipleGoodsQuantityCmd

#figure(
  image("../../assets/catalog/SetMultipleGoodsQuantityCmd.png", width: 85%),
  caption: "Catalog - SetMultipleGoodsQuantityCmd",
)

Rappresenta il _Command_ utilizzato per modificare le quantità di una serie di merci registrate nel magazzino.

*Descrizione degli attributi della struttura:*

- *`warehouseID string`*: rappresenta il magazzino interessato dalla modifica delle quantità delle merci;

- *`goods []stream.StockUpdateGood`*: rappresenta uno _slice_ contenente le informazioni sulle merci da modificare.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewSetMultipleGoodsQuantityCmd(warehouseID string, goods []stream.StockUpdateGood) *SetMultipleGoodsQuantityCmd`*: è il costruttore del _Command_;

- *`GetGoods() []stream.StockUpdateGood`*: permette di ottenere lo _slice_ delle merci da modificare;

- *`GetWarehouseID() string`*: permette di ottenere l'id del magazzino su cui effettuare le modifiche.

===== AddOrChangeResponse

#figure(
  image("../../assets/catalog/AddOrChangeResponse.png", width: 55%),
  caption: "Catalog - AddOrChangeResponse",
)

Rappresenta la Risposta alla richiesta di aggiunta o modifica informazioni di una merce.

*Descrizione degli attributi della struttura:*

- *`result error`*: viene qui memorizzato l'esito dell'operazione, se positivo (`nil`) o non.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewAddOrChangeResponse(err error) *AddOrChangeResponse`*: rappresenta il costruttore della Risposta. *`result`* viene inizializzato fornendo al costruttore l'esito dell'operazione;

- *`GetOperationResult() string`*: permette di ottenere dalla Risposta l'esito dell'operazione.

===== GetGoodsInfoResponse

#figure(
  image("../../assets/catalog/GetGoodsInfoResponse.png", width: 85%),
  caption: "Catalog - GetGoodsInfoResponse",
)

Rappresenta la Risposta all'operazione di richiesta informazioni su una merce.

*Descrizione degli attributi della struttura:*

- *`goodMap map[string]catalogCommon.Good`*: rappresenta la mappa delle merci ottenuta;

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetGoodsInfoResponse(goodMap map[string]catalogCommon.Good) *GetGoodsInfoResponse`*: rappresenta il costruttore della Risposta. La mappa viene inizializzata con quella passata come parametro al costruttore;

- *`GetMap() map[string]catalogCommon.Good`*: permette di ottenere la mappa memorizzata nella Risposta.

===== GetGoodsQuantityResponse

#figure(
  image("../../assets/catalog/GetGoodsQuantityResponse.png", width: 75%),
  caption: "Catalog - GetGoodsQuantityResponse",
)

Rappresenta la Risposta all'operazione di richiesta informazioni sulla quantità delle merci memorizzate nel Sistema.

*Descrizione degli attributi della struttura:*

- *`goodMap map[string]int64`*: mappa che contiene, per ogni id di merce memorizzata, la rispettiva quantità globale, memorizzata in *int64*;

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetGoodsQuantityResponse(goodMap map[string]int64) *GetGoodsQuantityResponse`*: rappresenta il costruttore della Risposta. La mappa viene inizializzata con quella passata come parametro nel costruttore;

- *`GetMap() map[string]int64`*: permette di ottenere la mappa memorizzata nella Risposta.

===== GetWarehousesResponse

#figure(
  image("../../assets/catalog/GetWarehousesResponse.png", width: 95%),
  caption: "Catalog - GetWarehousesResponse",
)

Rappresenta la Risposta all'operazione di richiesta informazioni sull'inventario dei magazzini memorizzati nel Sistema.

*Descrizione degli attributi della struttura:*

- *`warehouseMap map[string]catalogCommon.Warehouse`*: mappa che contiene, per ogni id di magazzino memorizzato nel Sistema, le informazioni sullo stesso.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewGetWarehousesResponse(warehouseMap map[string]catalogCommon.Warehouse) *GetWarehousesResponse`*: rappresenta il costruttore della Risposta. La mappa viene inizializzata con quella passata come parametro nel costruttore;

- *`GetWarehouseMap() map[string]catalogCommon.Warehouse`*: permette di ottenere la mappa memorizzata nella Risposta.

===== SetGoodQuantityResponse

#figure(
  image("../../assets/catalog/SetGoodQuantityResponse.png", width: 75%),
  caption: "Catalog - SetGoodQuantityResponse",
)

Rappresenta la Risposta alla richiesta di modifica quantità di una merce.

*Descrizione degli attributi della struttura:*

- *`result error`*: viene qui memorizzato l'esito dell'operazione, se positivo (`nil`) o non.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewSetGoodQuantityResponse(err error) *SetGoodQuantityResponse`*: rappresenta il costruttore della Risposta. *`result`* viene inizializzato fornendo al costruttore l'esito dell'operazione;

- *`GetOperationResult() string`*: permette di ottenere dalla Risposta l'esito dell'operazione.

===== SetMultipleGoodsQuantityResponse
#figure(
  image("../../assets/catalog/SetMultipleGoodsQuantityResponse.png", width: 85%),
  caption: "Catalog - SetMultipleGoodsQuantityResponse",
)

Rappresenta la Risposta alla richiesta di modifica quantità di un insieme di merci.

*Descrizione degli attributi della struttura:*

- *`result error`*: viene qui memorizzato l'esito dell'operazione, se positivo (`nil`) o non.
- *`wrongID []string`*: rappresenta uno slice con gli id delle merci la cui modifica della quantità non è riuscita.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewSetMultipleGoodsQuantityResponse(err error, wrongID []string) *SetMultipleGoodsQuantityResponse`*: costruttore della Risposta. Gli attributi vengono inizializzati con i valori passati come parametri al costruttore;

- *`GetOperationResult() string`*: permette di ottenere dalla Risposta l'esito dell'operazione;

- *`GetWrongIDSlice() []string`*: permette di ottenere la _slice_ degli id la cui modifica non è riuscita.

==== CatalogRepository

Questa struttura implementa l'interfaccia *IGoodRepository*, vedi la @igoodrepository.

*Descrizione degli attributi della struttura:*

- *`warehouseMap map[string]*catalogCommon.Warehouse`*: è una mappa che ha come chiave una *string* (l'identificativo del magazzino) e come valore un oggetto *Warehouse*#super[G], rappresentante un magazzino;
- *`goodMap map[string]*catalogCommon.Good`*: è una mappa che ha come chiave una *string* (l'identificatore della merce) e come valore un oggetto *Good*#super[G], rappresentante una merce;
- *`goodStockMap map[string]int64`*: è una mappa che ha come chiave una *string* (l'identificatore della merce) e come valore un *int64* (la quantità di quella merce tra tutti i magazzini)
- *`mutex sync.Mutex`*: variabile utilizzata per il corretto funzionamento di alcuni metodi. Si rimanda alla #link("https://go.dev/tour/concurrency/9")[documentazione del linguaggio Go#super[G] ]per ulteriori informazioni

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogRepository() *CatalogRepository`*: rappresenta il costruttore della struttura. Non prende alcun parametro, inizializzando gli attributi a mappe vuote;

- *`GetGoods() map[string]catalogCommon.Good`*: restituisce la mappa delle merci internamente memorizzata;

- *`GetGoodsGlobalQuantity() map[string]int64`*: restituisce la mappa della quantità globale delle merci;

- *`GetWarehouses() map[string]catalogCommon.Warehouse`*: restituisce la mappa dei magazzini riconosciuti dal Sistema;

- *`SetGoodQuantity(warehouseID string, goodID string, newQuantity int64) error`*: imposta la quantità della merce con id *goodID* del magazzino con id *warehouseID* alla quantità memorizzata nel parametro *newQuantity*. In caso la merce sia nuova, questa viene automaticamente aggiunta, ma senza nome e descrizione. Ritorna sempre *`nil`*;

- *`addWarehouse(warehouseID string)`*: aggiunge magazzino al sistema con id pari a *warehouseID*. Questa operazione è effettuata automaticamente quando si cerca di aggiunge _stock_#super[G] ad un magazzino non ancora registrato;

- *`AddGood(goodID string, name string, description string) error`*: aggiunge una merce al Sistema con id *goodID*, nome *name* e descrizione *description*. Se la merce è già presente nel Sistema, chiama automaticamente la funzione `changeGoodData` per modificarne le informazioni. Ritorna sempre `nil`;

- *`changeGoodData(goodID string, newName string, newDescription string) error`*: cambia le informazioni della merce con id *goodID*, impostando il nome a *newName* e la descrizione a *newDescription*. Ritorna un errore se l'id della merce non è registrato.

==== IGoodRepository <igoodrepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ del microservizio _Catalog_.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoods() map[string]catalogCommon.Good`*: il metodo deve dare possibilità di ottenere i dati delle merci registrate nel Sistema;

- *`GetGoodsGlobalQuantity() map[string]int64`*: il metodo deve dare la possibilità di ottenere la quantità globale delle merci nel Sistema;

- *`SetGoodQuantity(warehouseID string, goodID string, newQuantity int64) error`*: il metodo deve dare la possibilità di impostare la quantità di una merce in un magazzino e, conseguentemente, la quantità globale;

- *`AddGood(goodID string, name string, description string) error`*: il metodo deve dare la possibilità di aggiungere una merce al Sistema;

- *`GetWarehouses() map[string]catalogCommon.Warehouse`*: il metodo deve dare la possibilità di ottenere i magazzini registrati nel Sistema.

==== IAddOrChangeGoodDataPort <IAddOrChangeGoodDataPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di voler aggiungere o modificare i dati di una merce.

*Descrizione dei metodi dell'interfaccia:*

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: il metodo deve dare la possibilità di aggiungere e/o modificare i dati di una merce.

==== IGetGoodsInfoPort <IGetGoodsInfoPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere i dati delle merci registrate nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: il metodo deve permettere di richiedere i dati sulle merci registrate nel Sistema e di ottenerle in risposta.

==== IGetGoodsQuantityPort <IGetGoodsQuantityPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere le informazioni sulla quantità delle merci registrate nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: il metodo deve permettere di richiedere i dati sulla quantità delle merci registrate nel Sistema e di ottenerle in risposta.

==== IGetWarehousesInfoPort <IGetWarehousesInfoPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere le informazioni sull'inventario dei magazzini registrati nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetWarehouses(*servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: il metodo deve permettere di richiedere le informazioni sull'inventario dei magazzini registrati nel Sistema e ottenere tali informazioni in risposta.

==== ISetGoodQuantityPort <ISetGoodQuantityPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di impostare la quantità di una merce.

*Descrizione dei metodi dell'interfaccia:*

- *`SetGoodQuantity(agqc *servicecmd.SetGoodQuantityCmd) *serviceresponse.SetGoodQuantityResponse`*: il metodo deve permettere di modificare la quantità di una merce.

==== CatalogAdapter

_Adapter_ che mette in comunicazione la _business logic_ di catalog con la _persistence logic_ dello stesso.

Implementa le seguenti interfacce (porte):

- *IAddOrChangeGoodDataPort*, @IAddOrChangeGoodDataPort;
- *IGetGoodsInfoPort*, @IGetGoodsInfoPort;
- *IGetGoodsQuantityPort*, @IGetGoodsQuantityPort;
- *IGetWarehousesInfoPort*, @IGetWarehousesInfoPort;
- *ISetGoodQuantityPort*, @ISetGoodQuantityPort.

*Descrizione degli attributi della struttura:*

- *`repo persistence.IGoodRepository`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ di Catalog. Per le informazioni riguardo IGoodRepository vedere la @igoodrepository.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogRepositoryAdapter(repo persistence.IGoodRepository) *CatalogRepositoryAdapter`*: costruttore dell'_Adapter_. Inizializza l'attributo `repo` con quello passato come parametro al costruttore;

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: converte il _Command_ per l'aggiunta o modifica dati merce in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;

- *`SetGoodQuantity(agqc *servicecmd.SetGoodQuantityCmd) *serviceresponse.SetGoodQuantityResponse`*:converte il _Command_ per la modifica della quantità di una merce in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: converte il _Command_ per ottenere la quantità delle varie merci registrate nel Sistema in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: converte il _Command_ per ottenere le informazioni sulle varie merci registrate nel Sistema in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;

- *`GetWarehouses(*servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: converte il _Command_ per ottenere le informazioni sui magazzini registrati nel Sistema in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata.

==== IService <IService>

Interfaccia che descrive i metodi che devono essere implementati da una struttura che si propone di soddisfare la _business logic_ del microservizio Catalog.

*Descrizione dei metodi dell'interfaccia:*

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: il metodo deve permettere di aggiungere o modificare le informazioni di una merce;

- *`SetMultipleGoodsQuantity(cmd *servicecmd.SetMultipleGoodsQuantityCmd) *serviceresponse.SetMultipleGoodsQuantityResponse`*: il metodo deve permettere di aggiornare la quantità di un gruppo di merci;

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: il metodo deve permettere di richiedere la quantità delle merci registrate nel Sistema e ottenerne la risposta;

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: il metodo deve permettere di richiedere le informazioni sulle merci memorizzate nel sistema e ottenerne la risposta;

- *`GetWarehouses(gwc *servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: il metodo deve permettere di richiedere le informazione sull'inventario dei magazzini memorizzati nel Sistema e ottenerne la risposta.

==== IGetGoodsInfoUseCase <IGetGoodsInfoUseCase>

Rappresenta l'interfaccia che permette, all'_application logic_ di comunicare alla _business logic_ la volontà di ottenere informazioni sulle merci memorizzate.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: il metodo deve permettere di richiedere le informazioni sulle merci memorizzate nel sistema e ottenerne la risposta.

==== IGetGoodsQuantityUseCase <IGetGoodsQuantityUseCase>

Rappresenta l'interfaccia che permette, all'_application logic_ di comunicare alla _business logic_ la volontà di ottenere informazioni sulla quantità delle merci memorizzate.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: il metodo deve permettere di richiedere la quantità delle merci registrate nel Sistema e ottenerne la risposta.

==== IGetWarehousesUseCase <IGetWarehousesUseCase>

Rappresenta l'interfaccia che permette, all'_application logic_ di comunicare alla _business logic_ la volontà di ottenere informazioni sull'inventario dei magazzini memorizzati nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetWarehouses(gwc *servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: il metodo deve permettere di richiedere le informazione sull'inventario dei magazzini memorizzati nel Sistema e ottenerne la risposta.

==== ISetMultipleGoodsQuantityUseCase <ISetMultipleGoodsQuantityUseCase>

Rappresenta l'interfaccia che permette, all'_application logic_ di comunicare alla _business logic_ la volontà di impostare la quantità di varie merci.

*Descrizione dei metodi dell'interfaccia:*

- *`SetMultipleGoodsQuantity(cmd *servicecmd.SetMultipleGoodsQuantityCmd) *serviceresponse.SetMultipleGoodsQuantityResponse`*: il metodo deve permettere di aggiornare la quantità di un gruppo di merci.

==== IUpdateGoodDataUseCase <IUpdateGoodDataUseCase>

Rappresenta l'interfaccia che permette, all'_application logic_ di comunicare alla _business logic_ la volontà di modificare le informazioni di una merce nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: il metodo deve permettere di aggiungere o modificare le informazioni di una merce.

==== CatalogService

Si occupa di gestire la _business logic_ del microservizio _Catalog_ e implementa, per questo motivo, *IService* (@IService).

Implementa le seguenti interfacce (_Use Case_):

- *IGetGoodsInfoUseCase*, @IGetGoodsInfoUseCase;
- *IGetGoodsQuantityUseCase*, @IGetGoodsQuantityUseCase;
- *IGetWarehousesUseCase*, @IGetWarehousesUseCase;
- *ISetMultipleGoodsQuantityUseCase*, @ISetMultipleGoodsQuantityUseCase;
- *IUpdateGoodDataUseCase*, @IUpdateGoodDataUseCase.

*Descrizione degli attributi della struttura:*

- *`addOrChangeGoodDataPort serviceportout.IAddOrChangeGoodDataPort`*: vedere la descrizione alla @IAddOrChangeGoodDataPort;
- *`setGoodQuantityPort serviceportout.ISetGoodQuantityPort`*: vedere la descrizione alla @ISetGoodQuantityPort;
- *`getGoodsQuantityPort serviceportout.IGetGoodsQuantityPort`*: vedere la descrizione alla @IGetGoodsQuantityPort;
- *`getGoodsInfoPort serviceportout.IGetGoodsInfoPort`*: vedere la descrizione alla @IGetGoodsInfoPort;
- *`getWarehousesPort serviceportout.IGetWarehousesInfoPort`*: vedere la descrizione alla @IGetWarehousesInfoPort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogService(p CatalogServiceParams) *CatalogService`*: Costruttore della struttura. Le porte (_Use Case_) devono essere fornite come parametri al costruttore e, per farlo, si utilizza la struttura *`CatalogServiceParams`*, struttura con i medesimi attributi di CatalogService con l'istruzione `fx.in` per permettere al _framework_ *fx* di fornire automaticamente le dipendenze necessarie;

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: prende un _Command_ per la richiesta di aggiunta o cambiamento informazioni di una merce e attiva la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione;

- *`SetMultipleGoodsQuantity(cmd *servicecmd.SetMultipleGoodsQuantityCmd)`*: prende un _Command_ per la richiesta di modifica quantità di un gruppo di merce e trasmette la richiesta per ciascuna di tali merci alla porta adibita allo scopo. Richiama la funzione *`checkErrinSlice`* per controllare l'esito di ciascuna delle operazioni;

- *`checkErrinSlice(errorSlice []error) []int`*: controlla la _slice_ passata come parametro per comprendere se un'operazione di modifica quantità merce non è andata a buon fine. Ritorna una _slice_ con le posizioni nella _slice_ contenente le merci da modificare in cui è stato riscontrato un esito negativo;

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: prende un _Command_ per la richiesta delle informazioni sulla quantità delle merci memorizzate nel Sistema e ne chiede esecuzione mediante l'apposita porta. Ritorna quindi la risposta;

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: prende un _Command_ per la richiesta delle informazioni sulle merci memorizzate nel Sistema. Inoltra la richiesta alla porta opportuna e ritorna quindi la risposta;

- *`GetWarehouses(gwc *servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: prende un _Command_ per la richiesta delle informazioni sull'inventario dei magazzini memorizzati nel Sistema. Procede ad inoltrare la richiesta sulla porta opportuna e ritorna quindi la risposta.

==== CatalogController

Si occupa di gestire l'_application logic_ del microservizio Catalog.

*Descrizione degli attributi della struttura:*

- *`getGoodsInfoUseCase serviceportin.IGetGoodsInfoUseCase`*: la descrizione è disponibile alla @IGetGoodsInfoUseCase;
- *`getGoodsQuantityUseCase serviceportin.IGetGoodsQuantityUseCase`*: la descrizione è disponibile alla @IGetGoodsQuantityUseCase;
- *`getWarehouseInfoUseCase serviceportin.IGetWarehousesUseCase`*: la descrizione è disponibile alla @IGetWarehousesUseCase;
- *`setMultipleGoodsQuantityUseCase serviceportin.ISetMultipleGoodsQuantityUseCase`*: la descrizione è disponibile alla @ISetMultipleGoodsQuantityUseCase;
- *`updateGoodDataUseCase serviceportin.IUpdateGoodDataUseCase`*: la descrizione è disponibile alla @IUpdateGoodDataUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogController(p CatalogControllerParams) *catalogController`*: costruttore della struttura. Gli attributi della struttura vengono inizializzati con i valori passati mediante la struttura `CatalogControllerParams`, che ha i medesimi attributi e quanto necessario per la telemetria;

- *`getGoodsRequest(ctx context.Context, msg *nats.Msg) error`*: metodo utilizzato per recuperare le richieste di ottenimento informazioni sulle merci presenti nel Sistema. La richiesta arriva direttamente mediante un messaggio su *NATS*#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`getWarehouseRequest(ctx context.Context, msg *nats.Msg) error`*: metodo utilizzato per recuperare le richieste di ottenimento informazioni sui magazzini presenti nel Sistema e il loro inventario. La richiesta arriva direttamente mediante un messaggio su *NATS*#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`getGoodsGlobalQuantityRequest(ctx context.Context, msg *nats.Msg) error`*: metodo utilizzato per recuperare le richieste di ottenimento informazioni sulla quantità globalmente disponibile delle merci memorizzate nel Sistema. La richiesta arriva direttamente mediante un messaggio su *NATS*#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`setGoodDataRequest(ctx context.Context, msg jetstream.Msg)`*: metodo utilizzato per recuperare le richieste di aggiunta merce o modifica informazioni su una merce. La richiesta arriva direttamente mediante un messaggio su *NATS JetStream*. Utilizza il metodo `checkSetGoodDataRequest` per verificare se l'elaborazione della richiesta è sensata. Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`checkSetGoodDataRequest(request *stream.GoodUpdateData) error`*: controlla le richieste di aggiornamento dati o aggiunta merce. Ritorna un errore se la richiesta non è valida;
- *`setGoodQuantityRequest(ctx context.Context, msg jetstream.Msg) error`*: metodo utilizzato per recuperare i messaggi relativi a richieste di aggiornamento della quantità di una merce. La richiesta arriva direttamente mediante un messaggio su *NATS JetStream*. Utilizza il metodo `checkSetGoodQuantityRequest` per verificare se l'elaborazione della richiesta è sensata. Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`checkSetGoodQuantityRequest(request *stream.StockUpdate) error`*: controlla le richieste di aggiornamento quantità di una merce. Ritorna un errore se la richiesta non è valida.

#pagebreak()
=== Warehouse <micro_warehouse>

#figure(
  image("../../assets/warehouse/warehouse.png", width: 115%),
  caption: "Componenti del microservizio Warehouse",
)

Il microservizio *Warehouse*#super[G] viene utilizzato per gestire un determinato magazzino, tenendo traccia delle merci presenti al suo interno e della quantità di ciascuna di esse.

Il microservizio tiene traccia dell'aggiunta e della modifica delle informazioni delle merci.

Può funzionare anche in caso di mancanza di connessione con gli altri microservizi in quanto mantiene uno stato interno aggiornato all'ultima versione prima della disconnessione.

È formato da tre sotto-aree di componenti principali:

- I *Controller* e *Listener*, che rappresentano l'_application logic_
- I *Service*, che rappresentano la _business logic_;
- I *Repository*#super[G], che rappresentano la _persistence logic_.

Gli oggetti utilizzati per implementare queste componenti saranno ora esposti.

==== Oggetti comuni
===== Good (Repo) <WarehouseRepoGood>
#figure(
  image("../../assets/warehouse/Good.png", width: 25%),
  caption: "Warehouse - Good (Repo)",
)
Rappresenta una merce registrata nel magazzino.
Vieni utilizzato dall'interfaccia ICatalogRepository, vedi @WarehouseICatalogRepository, per memorizzare le informazioni delle merci.

*Descrizione degli attributi della struttura:*
- *`ID string`*: attributo di tipo *string* che rappresenta l'Id della merce;
- *`Name string`*: attributo di tipo *string* che rappresenta il nome della merce;
- *`Description string`*: attributo di tipo *string* che rappresenta la descrizione della merce.
===== Reservation (Repo) <WarehouseRepoReservation>
#figure(
  image("../../assets/warehouse/Repo-Reservation.png", width: 25%),
  caption: "Warehouse - Reservation (Repo)",
)
Rappresenta una prenotazione di merci nel magazzino. Viene utilizzata dalla _persistence logic_ e dall'interfaccia *IStockRepository* (@WarehouseIStockRepository).

*Descrizione degli attributi della struttura:*

- *`Goods map[string]int64`*: rappresenta una mappa che associa l'identificativo di una merce (*string*) alla quantità prenotata (*int64*).

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== Reservation <WarehouseModelReservation>
#figure(
  image("../../assets/warehouse/Reservation.png", width: 25%),
  caption: "Warehouse - Reservation",
)
Rappresenta una prenotazione di merci nel magazzino.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco della prenotazione;
- *`Goods []ReservationGood`*: rappresenta una lista di oggetti `ReservationGood` che contengono le informazioni sulle merci coinvolte nella prenotazione.

===== ReservationID <WarehouseModelReservationId>

Rappresenta un identificativo univoco per una prenotazione.

*Descrizione degli attributi della struttura:*

- *`string`*: rappresenta l'identificativo univoco della prenotazione.

===== ReservationGood <WarehouseModelReservationGood>
#figure(
  image("../../assets/warehouse/ReservationGood.png", width: 25%),
  caption: "Warehouse - ReservationGood",
)
Rappresenta una merce coinvolta in una prenotazione.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce;
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nella prenotazione.

===== CreateReservationCmd <WarehouseCreateReservationCmd>
#figure(
  image("../../assets/warehouse/CreateReservationCmd.png", width: 25%),
  caption: "Warehouse - CreateReservationCmd",
)
Rappresenta il comando utilizzato per creare una prenotazione.

*Descrizione degli attributi della struttura:*

- *`Goods []ReservationGood`*: rappresenta una lista di oggetti `ReservationGood` che contengono le informazioni sulle merci da prenotare.

===== CreateReservationResponse <WarehouseCreateReservationResponse>
#figure(
  image("../../assets/warehouse/CreateReservationResponse.png", width: 25%),
  caption: "Warehouse - CreateReservationResponse",
)
Rappresenta la risposta alla richiesta di creazione di una prenotazione.

*Descrizione degli attributi della struttura:*

- *`ReservationID string`*: rappresenta l'identificativo univoco della prenotazione creata.

===== ConfirmTransferCmd <WarehouseConfirmTransferCmd>
#figure(
  image("../../assets/warehouse/ConfirmTransferCmd.png", width: 25%),
  caption: "Warehouse - ConfirmTransferCmd",
)
Rappresenta il comando utilizzato per confermare un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`TransferID string`*: rappresenta l'identificativo univoco del trasferimento#super[G] da confermare;
- *`SenderID string`*: rappresenta l'identificativo del magazzino mittente del trasferimento#super[G];
- *`ReceiverID string`*: rappresenta l'identificativo del magazzino destinatario del trasferimento#super[G];
- *`Status string`*: rappresenta lo stato del trasferimento#super[G] da aggiornare;
- *`Goods []TransferUpdateGood`*: rappresenta una lista di oggetti `TransferUpdateGood` che contengono le informazioni sulle merci coinvolte nel trasferimento#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata al trasferimento#super[G].

===== TransferUpdateGood <WarehouseTransferUpdateGood>
#figure(
  image("../../assets/warehouse/TransferUpdateGood.png", width: 25%),
  caption: "Warehouse - TransferUpdateGood",
)
Rappresenta una merce coinvolta in un aggiornamento di un trasferimento#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce;
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nel trasferimento#super[G].

===== ConfirmOrderCmd <WarehouseConfirmOrderCmd>
#figure(
  image("../../assets/warehouse/ConfirmOrderCmd.png", width: 25%),
  caption: "Warehouse - ConfirmOrderCmd",
)
Rappresenta il comando utilizzato per confermare un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`OrderID string`*: rappresenta l'identificativo univoco dell'ordine da confermare;
- *`Status string`*: rappresenta lo stato dell'ordine da aggiornare;
- *`Goods []OrderUpdateGood`*: rappresenta una lista di oggetti `OrderUpdateGood` che contengono le informazioni sulle merci coinvolte nell'ordine;
- *`Reservations []string`*: rappresenta una lista di identificativi delle prenotazioni associate all'ordine.

===== OrderUpdateGood <WarehouseOrderUpdateGood>
#figure(
  image("../../assets/warehouse/OrderUpdateGood.png", width: 25%),
  caption: "Warehouse - OrderUpdateGood",
)
Rappresenta una merce coinvolta in un aggiornamento di un ordine#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce;
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nell'ordine.

===== CatalogUpdateCmd <WarehouseCatalogUpdateCmd>
#figure(
  image("../../assets/warehouse/CatalogUpdateCmd.png", width: 25%),
  caption: "Warehouse - CatalogUpdateCmd",
)

Rappresenta il comando per aggiornare le informazioni di un catalogo nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce da aggiornare;
- *`Name string`*: rappresenta il nuovo nome della merce;
- *`Description string`*: rappresenta la nuova descrizione della merce.


===== StockUpdateCmd <WarehouseStockUpdateCmd>

#figure(
  image("../../assets/warehouse/StockUpdateCmd.png", width: 30%),
  caption: "Warehouse - StockUpdateCmd",
)

Rappresenta il comando per aggiornare lo stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del comando di aggiornamento dello _stock_#super[G];
- *`Type StockUpdateType`*: rappresenta il tipo di aggiornamento dello _stock_#super[G]. Può assumere i seguenti valori:
  - *`add`*: per aggiungere stock#super[G];
  - *`remove`*: per rimuovere stock#super[G];
  - *`order`*: per aggiornamenti legati a ordini;
  - *`transfer`*: per aggiornamenti legati a trasferimenti;
- *`Goods []StockUpdateGood`*: rappresenta una lista di oggetti `StockUpdateGood` che contengono le informazioni sulle merci aggiornate;
- *`OrderID string`*: rappresenta l'identificativo dell'ordine associato all'aggiornamento dello _stock_#super[G];
- *`TransferID string`*: rappresenta l'identificativo del trasferimento#super[G] associato all'aggiornamento dello _stock_#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata all'aggiornamento dello _stock_#super[G];
- *`Timestamp int64`*: rappresenta il _timestamp_ dell'aggiornamento dello _stock_#super[G].

===== StockUpdateGood <WarehouseStockUpdateGood>

#figure(
  image("../../assets/warehouse/StockUpdateGood.png", width: 35%),
  caption: "Warehouse - StockUpdateGood",
)

Rappresenta una merce aggiornata nel comando di aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce aggiornata;
- *`Quantity int64`*: rappresenta la nuova quantità della merce aggiornata;
- *`Delta int64`*: rappresenta la differenza di quantità della merce rispetto all'ultimo stato.

===== StockUpdateType <WarehouseStockUpdateType>

Rappresenta il tipo di aggiornamento dello stock#super[G]. È un tipo stringa con i seguenti valori possibili:

- *`add`*: per aggiungere stock#super[G];
- *`remove`*: per rimuovere stock#super[G];
- *`order`*: per aggiornamenti legati a ordini;
- *`transfer`*: per aggiornamenti legati a trasferimenti.

===== AddStockCmd <WarehouseAddStockCmd>
#figure(
  image("../../assets/warehouse/AddStockCmd.png", width: 25%),
  caption: "Warehouse - AddStockCmd",
)

Questo _Command_ viene utilizzato per rappresentare la richiesta di aggiunta di stock#super[G], e viene utilizzato dal caso d'uso#super[G] @WarehouseIAddStockUseCase.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce a cui aggiungere stock#super[G];
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da aggiungere alla merce.


===== IdempotentCmd <WarehouseIdempotentCmd>
#figure(
  image("../../assets/warehouse/IdempotentCmd.png", width: 25%),
  caption: "Warehouse - IdempotentCmd",
)

Rappresenta il comando utilizzato per identificare un evento in modo univoco e gestire l'idempotenza.

*Descrizione degli attributi della struttura:*

- *`Event string`*: rappresenta il nome o il tipo dell'evento da identificare;
- *`ID string`*: rappresenta l'identificativo univoco dell'evento.

*Descrizione dei metodi invocabili dalla struttura:*

Questa struttura non ha metodi invocabili.

===== RemoveStockCmd <WarehouseRemoveStockCmd>
#figure(
  image("../../assets/warehouse/RemoveStockCmd.png", width: 25%),
  caption: "Warehouse - RemoveStockCmd",
)

Questo _Command_ viene utilizzato per rappresentare la richiesta di rimozione di stock#super[G], e viene utilizzato dal caso d'uso#super[G] @WarehouseIRemoveStockUseCase.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce a cui rimuovere stock#super[G];
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da rimuovere dalla merce.

===== GoodID <WarehouseGoodID>
Rappresenta un identificativo univoco per una merce.

*Descrizione del tipo:*

- *`string`*: il tipo `GoodID` è un alias per il tipo `string`. Viene utilizzato per identificare in modo univoco una merce all'interno del sistema.

===== GoodInfo <WarehouseGoodInfo>
#figure(
  image("../../assets/warehouse/GoodInfo.png", width: 20%),
  caption: "Warehouse - GoodInfo",
)
Questa classe è utilizzata nella _business logic_.
Rappresenta una merce con le sue informazioni.

*Descrizione degli attributi della struttura:*
- *`ID string`*: attributo di tipo *string* che rappresenta l'Id della merce;
- *`Name string`*: attributo di tipo *string* che rappresenta il nome della merce;
- *`Description string`*: attributo di tipo *string* che rappresenta la descrizione della merce.

===== GoodStock <WarehouseGoodStock>
#figure(
  image("../../assets/warehouse/GoodStock.png", width: 25%),
  caption: "Warehouse - GoodStock",
)
Questa classe è utilizzata nella _business logic_.
Rappresenta una merce con la sua quantità presente nel magazzino.

*Descrizione degli attributi della struttura:*
- *`ID string`*: attributo di tipo *string* che rappresenta l'Id della merce;
- *`Quantity int64`*: attributo di tipo *int64* che rappresenta la quantità della merce nel magazzino.

===== ReservationGood <WarehouseReservationGood>
#figure(
  image("../../assets/warehouse/ReservationGood.png", width: 25%),
  caption: "Warehouse - ReservationGood",
)
Rappresenta una merce coinvolta in un evento di prenotazione.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce;
- *`Quantity int64`*: rappresenta la quantità della merce coinvolta nell'evento di prenotazione.

===== ApplyReservationEventCmd <WarehouseApplyReservationEventCmd>
#figure(
  image("../../assets/warehouse/ApplyReservationEventCmd.png", width: 25%),
  caption: "Warehouse - ApplyReservationEventCmd",
)
Rappresenta il comando utilizzato per applicare un evento di prenotazione.

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco dell'evento di prenotazione;
- *`Goods []ReservationGood`*: rappresenta una lista di oggetti `ReservationGood` che contengono le informazioni sulle merci coinvolte nell'evento di prenotazione.

===== CreateStockUpdateCmd <WarehouseCreateStockUpdateCmd>
#figure(
  image("../../assets/warehouse/CreateStockUpdateCmd.png", width: 30%),
  caption: "Warehouse - CreateStockUpdateCmd",
)

Rappresenta il _Command_ per creare un aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`Type CreateStockUpdateType`*: rappresenta il tipo di aggiornamento dello stock#super[G]. Può assumere i seguenti valori:
  - *`add`*: per aggiungere stock#super[G];
  - *`remove`*: per rimuovere stock#super[G];
  - *`order`*: per aggiornamenti legati a ordini;
  - *`transfer`*: per aggiornamenti legati a trasferimenti;
- *`Goods []CreateStockUpdateGood`*: rappresenta una lista di oggetti `CreateStockUpdateGood` che contengono le quantità delle merci aggiornate;
- *`OrderID string`*: rappresenta l'identificativo dell'ordine associato all'aggiornamento dello stock#super[G];
- *`TransferID string`*: rappresenta l'identificativo del trasferimento#super[G] associato all'aggiornamento dello stock#super[G];
- *`ReservationID string`*: rappresenta l'identificativo della prenotazione associata all'aggiornamento dello stock#super[G].

===== CreateStockUpdateGood <WarehouseCreateStockUpdateGood>
#figure(
  image("../../assets/warehouse/CreateStockUpdateGood.png", width: 30%),
  caption: "Warehouse - CreateStockUpdateGood",
)

Rappresenta una classe che viene utilizzata dal _Command_ per creare un aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`Good GoodStock`*: attributo di tipo `GoodStock` che rappresenta la merce aggiornata;
- *`QuantityDiff int64`*: attributo di tipo *int64* che rappresenta la differenza di quantità della merce rispetto all'ultimo stato.


// oggetti

==== IStockRepository <WarehouseIStockRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ degli stock#super[G] per il microservizio _Warehouse_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`GetStock(goodId string) int64`*: il metodo deve dare possibilità di ottenere la quantità di una merce presente nel magazzino;

- *`SetStock(goodId string, stоck int64)`*: il metodo deve dare la possibilità di impostare la quantità di una merce nel magazzino;

- *`AddStock(goodId string, stоck int64)`*: il metodo deve dare la possibilità di aggiungere una quantità di una merce ad un magazzino;

- *`GetFreeStock(goodId string) int64`*: il metodo deve dare la possibilità di ottenere la quantità di stock#super[G] disponibile per una merce nel magazzino;

- *`ReserveStock(reservationId string, goodId string, stоck int64) error`*: il metodo deve dare la possibilità di riservare una quantità specifica di stock#super[G] per una merce, associandola a un identificativo di prenotazione;

- *`UnReserveStock(goodId string, stоck int64) error`*: il metodo deve dare la possibilità di annullare una prenotazione di stock#super[G] per una merce, liberando la quantità riservata;

- *`GetReservation(reservationId string) (Reservation, error)`*: il metodo deve dare la possibilità di ottenere i dettagli di una prenotazione specifica tramite il suo identificativo.

==== StockRepositoryImpl <WarehouseStockRepositoryImpl>

Questa struttura implementa l'interfaccia *IStockRepository*, vedi la @WarehouseIStockRepository.

*Descrizione degli attributi della struttura:*

- *`m sync.Mutex`*: mutex utilizzato per garantire la sicurezza dei dati in caso di accesso concorrente;
- *`goodToStock map[string]int64`*: è una mappa che ha come chiave una *string* (l'identificativo della merce) e come valore un intero, rappresentante la quantità di stock#super[G] di quella merce;
- *`reservedStock map[string]int64`*: è una mappa che tiene traccia della quantità riservata di ogni merce, con l'identificativo della merce come chiave e la quantità riservata come valore;
- *`reservations map[string]Reservation`*: è una mappa che associa un identificativo di prenotazione a un oggetto `Reservation`, contenente i dettagli della prenotazione.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockRepositoryImpl() *StockRepositoryImpl`*: rappresenta il costruttore della struttura. Inizializza le mappe `goodToStock`, `reservedStock` e `reservations` come mappe vuote;

- *`GetStock(goodId string) int64`*: restituisce la quantità di una merce presente nel magazzino. Se la merce non esiste, ritorna 0;

- *`SetStock(goodId string, stоck int64) bool`*: imposta la quantità di una merce nel magazzino. Ritorna `true` se la merce esisteva già, `false` altrimenti;

- *`AddStock(goodId string, stоck int64) bool`*: aggiunge una quantità di una merce al magazzino. Ritorna `true` se la merce esisteva già, `false` altrimenti;

- *`ReserveStock(reservationId string, goodId string, stоck int64) error`*: riserva una quantità specifica di una merce. Ritorna un errore se non c'è abbastanza stock#super[G] disponibile;

- *`UnReserveStock(goodId string, stоck int64) error`*: annulla una prenotazione di stock#super[G] per una merce. Ritorna un errore se la quantità da annullare supera quella riservata;

- *`GetFreeStock(goodId string) int64`*: restituisce la quantità di stock#super[G] disponibile per una merce, calcolata come la differenza tra lo stock#super[G] totale e quello riservato;

- *`GetReservation(reservationId string) (Reservation, error)`*: restituisce i dettagli di una prenotazione specifica tramite il suo identificativo. Ritorna un errore se la prenotazione non esiste.

==== ICatalogRepository <WarehouseICatalogRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ delle informazioni del catalogo per il microservizio _Warehouse_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`GetGood(goodId string) *Good`*: il metodo deve dare la possibilità di ottenere i dati di una merce registrata nel magazzino tramite il suo ID;
- *`SetGood(goodId string, name string, description string) bool`*: il metodo deve dare la possibilità di aggiungere o modificare una merce nel magazzino.

==== CatalogRepositoryImpl <WarehouseCatalogRepositoryImpl>

Questa struttura implementa l'interfaccia *ICatalogRepository*, vedi la @WarehouseICatalogRepository.

*Descrizione degli attributi della struttura:*

- *`goodMap map[string]Good`*: è una mappa che ha come chiave una *string* (l'identificatore della merce) e come valore un oggetto *Good*#super[G],rappresentante una merce.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogRepositoryImpl() *CatalogRepositoryImpl`*: rappresenta il costruttore della struttura. Non prende alcun parametro, inizializzando gli attributi a mappe vuote;
- *`GetGood(goodId string) *Good`*: restituisce i dati di una merce registrata nel magazzino tramite il suo ID;
- *`SetGood(goodId string, name string, description string) bool`*: aggiunge o modifica una merce nel magazzino con l'ID, nome e descrizione forniti.

==== ICreateStockUpdatePort <WarehouseICreateStockUpdatePort>

Rappresenta la porta che consente alla _business logic_ di comunicare con l'esterno per creare un aggiornamento dello stockRappresenta l'interfaccia generica di un oggetto che implementa la _Persistence Logic_ degli stock#super[G] per il microservizio _Warehouse_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`CreateStockUpdate(ctx: Context, CreateStockUpdateCmd) error`*: il metodo deve permettere di creare un aggiornamento dello stock#super[G].

==== IStoreReservationEventPort <WarehouseIStoreReservationEventPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di memorizzare un evento di prenotazione.

*Descrizione dei metodi dell'interfaccia:*

- *`StoreReservationEvent(ctx context.Context, reservation model.Reservation) error`*: il metodo deve permettere di memorizzare un evento di prenotazione, prendendo come parametri il contesto e un oggetto di tipo `Reservation`. Deve restituire un errore in caso di fallimento.

==== IApplyReservationEventPort <WarehouseIApplyReservationEventPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un evento di prenotazione o di applicare gli ordini ricevuti con stato `Filled`.

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyReservationEvent(model.Reservation) error`*: il metodo deve permettere di applicare un evento di prenotazione, prendendo come parametro un oggetto di tipo `Reservation`. Deve restituire un errore in caso di fallimento;

- *`ApplyOrderFilled(model.Reservation) error`*: il metodo deve permettere di applicare gli ordini ricevuti con stato `Filled`, prendendo come parametro un oggetto di tipo `Reservation`. Deve restituire un errore in caso di fallimento.

==== IApplyReservationUseCase <WarehouseIApplyReservationUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un evento di prenotazione.

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyReservationEvent(ApplyReservationEventCmd) error`*: il metodo deve permettere di applicare un evento di prenotazione, prendendo come parametro un oggetto di tipo `ApplyReservationEventCmd`. Deve restituire un errore in caso di fallimento.

==== PublishReservationEventAdapter <WarehousePublishReservationEventAdapter>

_Adapter_ che mette in comunicazione la _business logic_ del microservizio *Warehouse*#super[G] con il sistema di messaggistica per inviare un modello di prenotazione trasformato in evento.

Implementa le seguenti interfacce (porte):

- *IStoreReservationEventPort*, @WarehouseIStoreReservationEventPort.

*Descrizione degli attributi della struttura:*

- *`broker *broker.NatsMessageBroker`*: rappresenta il broker di messaggistica NATS#super[G] utilizzato per pubblicare i messaggi;
- *`warehouseCfg *config.WarehouseConfig`*: rappresenta la configurazione del magazzino.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPublishReservationEventAdapter(broker *broker.NatsMessageBroker, warehouseCfg *config.WarehouseConfig) *PublishReservationEventAdapter`*: costruttore dell'adapter. Inizializza gli attributi `broker` e `warehouseCfg` con i valori passati come parametri;

- *`StoreReservationEvent(ctx context.Context, reservation model.Reservation) error`*: prende un modello di prenotazione, lo trasforma in un evento e lo invia al sistema di messaggistica NATS#super[G]. Ritorna un errore in caso di fallimento.

==== PublishStockUpdateAdapter <WarehousePublishStockUpdateAdapter>

Questa struttura implementa l'interfaccia *ICreateStockUpdatePort*, vedi la @WarehouseICreateStockUpdatePort.

_Adapter_ che mette in comunicazione la _business logic_ con il sistema di messaggistica per pubblicare gli aggiornamenti dello stockRappresenta l'interfaccia generica di un oggetto che implementa la _Persistence Logic_ degli stock#super[G] per il microservizio _Warehouse_#super[G].

*Descrizione degli attributi della struttura:*

- *`broker *broker.NatsMessageBroker`*: rappresenta il broker di messaggistica NATS#super[G] utilizzato per pubblicare i messaggi;
- *`cfg *config.WarehouseConfig`*: rappresenta la configurazione del magazzino.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPublishStockUpdateAdapter(broker *broker.NatsMessageBroker, *config.WarehouseConfig) *PublishStockUpdateAdapter`*: costruttore dell'adapter. Inizializza gli attributi `broker` e `cfg` con i valori passati come parametri.
- *`CreateStockUpdate(ctx context.Context, cmd port.CreateStockUpdateCmd) error`*: pubblica un aggiornamento dello stock#super[G] utilizzando il broker di messaggistica NATS#super[G].

==== IApplyStockUpdatePort <WarehouseIApplyStockUpdatePort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento dello stock#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyStockUpdate(goods []model.GoodStock) error`*: il metodo deve permettere di applicare un aggiornamento dello stock#super[G].

==== IGetStockPort <WarehouseIGetStockPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere informazioni sulla quantità di una merce presente nel magazzino.

*Descrizione dei metodi dell'interfaccia:*

- *`GetStock(goodId model.GoodID) model.GoodStock`*: il metodo deve permettere di ottenere la quantità totale di una merce presente nel magazzino, prendendo come parametro l'identificativo della merce (`goodId`) e restituendo un oggetto di tipo `GoodStock`.

- *`GetFreeStock(goodId model.GoodID) model.GoodStock`*: il metodo deve permettere di ottenere la quantità libera di una merce presente nel magazzino, ovvero la quantità non riservata. Prende come parametro l'identificativo della merce (`goodId`) e restituisce un oggetto di tipo `GoodStock`.

==== IGetReservationPort <WarehouseIGetReservationPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere i dettagli di una prenotazione specifica tramite il suo identificativo.

*Descrizione dei metodi dell'interfaccia:*

- *`GetReservation(reservationId model.ReservationID) (model.Reservation, error)`*: il metodo deve permettere di ottenere i dettagli di una prenotazione specifica, prendendo come parametro l'identificativo della prenotazione (`reservationId`) e restituendo un oggetto di tipo `Reservation` e un eventuale errore in caso di fallimento.

==== IIdempotentPort <WarehouseIIdempotentPort>

Rappresenta la porta che consente alla _business logic_ di gestire operazioni idempotenti, assicurandosi che un evento non venga elaborato più di una volta.

*Descrizione dei metodi dell'interfaccia:*

- *`SaveEventID(IdempotentCmd)`*: il metodo deve permettere di salvare l'identificativo di un evento per garantire che non venga elaborato più volte;

- *`IsAlreadyProcessed(IdempotentCmd) bool`*: il metodo deve permettere di verificare se un evento è già stato elaborato, restituendo se l'evento è già stato processato.

==== IIdempotentRepository <WarehouseIIdempotentRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la gestione dell'idempotenza per il microservizio _Warehouse_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`SaveEventID(event string, id string)`*: il metodo deve permettere di salvare l'identificativo di un evento per garantire che non venga elaborato più volte. Prende come parametri il nome o tipo dell'evento (`event`) e il suo identificativo univoco (`id`).

- *`IsAlreadyProcessed(event string, id string) bool`*: il metodo deve permettere di verificare se un evento è già stato elaborato. Prende come parametri il nome o tipo dell'evento (`event`) e il suo identificativo univoco (`id`). Restituisce `true` se l'evento è già stato processato, `false` altrimenti.

==== IdempotentRepositoryImpl <WarehouseIdempotentRepositoryImpl>

Questa struttura implementa l'interfaccia *IIdempotentRepository*, vedi la @WarehouseIIdempotentRepository.

*Descrizione degli attributi della struttura:*

- *`mutex sync.Mutex`*: mutex utilizzato per garantire la sicurezza dei dati in caso di accesso concorrente;
- *`m map[string]map[string]struct{}`*: mappa annidata che associa un evento (stringa) a un'altra mappa contenente gli identificativi univoci degli eventi già processati.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewIdempotentRepositoryImpl() *IdempotentRepositoryImpl`*: rappresenta il costruttore della struttura. Inizializza la mappa `m` come una mappa vuota;

- *`SaveEventID(event string, id string)`*: salva l'identificativo di un evento per garantire che non venga elaborato più volte. Se l'evento non esiste nella mappa, viene creato un nuovo record per esso;

- *`IsAlreadyProcessed(event string, id string) bool`*: verifica#super[G] se un evento è già stato elaborato. Restituisce `true` se l'evento è già stato processato, `false` altrimenti.

==== IDempotentAdapter <WarehouseIDempotentAdapter>

_Adapter_ che mette in comunicazione la _business logic_ del microservizio *Warehouse*#super[G] con la _persistence logic_ per la gestione dell'idempotenza.

Implementa l'interfaccia *IIdempotentPort*, vedi la @WarehouseIIdempotentPort.

*Descrizione degli attributi della struttura:*

- *`repo IIdempotentRepository`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ per la gestione dell'idempotenza. Per le informazioni riguardo IIdempotentRepository vedere la @WarehouseIIdempotentRepository.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewIDempotentAdapter(repo IIdempotentRepository) *IDempotentAdapter`*: costruttore dell'_Adapter_. Inizializza l'attributo `repo` con quello passato come parametro al costruttore;

- *`SaveEventID(cmd port.IdempotentCmd)`*: converte il comando per il salvataggio dell'identificativo di un evento in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata;

- *`IsAlreadyProcessed(cmd port.IdempotentCmd) bool`*: converte il comando per la verifica#super[G] se un evento è già stato elaborato in valori da fornire alla _persistence logic_, quindi richiama la _persistence logic_ ad eseguire l'operazione desiderata e ritorna il risultato.

==== StockPersistenceAdapter <WarehouseStockPersistenceAdapter>

_Adapter_ che mette in comunicazione la _business logic_ di Warehouse#super[G] con la _persistence logic_ dello stesso.

Implementa le seguenti interfacce (porte):

- *IApplyStockUpdatePort*, @WarehouseIApplyStockUpdatePort;
- *IGetStockPort*, @WarehouseIGetStockPort;
- *IApplyReservationEventPort*, @WarehouseIApplyReservationEventPort;
- *IGetReservationPort*, @WarehouseIGetReservationPort.

*Descrizione degli attributi della struttura:*

- *`stockRepo IStockRepository`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ di Warehouse#super[G]. Per le informazioni riguardo IStockRepository vedere la @WarehouseIStockRepository.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockPersistenceAdapter(stockRepo IStockRepository) *StockPersistenceAdapter`*: costruttore dell'_Adapter_. Inizializza l'attributo `stockRepo` con quello passato come parametro al costruttore;

- *`ApplyStockUpdate(goods []model.GoodStock) error`*: converte l'aggiornamento dello stock#super[G] in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata;

- *`ApplyReservationEvent(reservation model.Reservation) error`*: converte l'evento di prenotazione in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata. Ritorna un errore in caso di fallimento;

- *`ApplyOrderFilled(reservation model.Reservation) error`*: gestisce l'applicazione degli ordini con stato `Filled`, liberando le quantità riservate. Ritorna un errore in caso di fallimento;

- *`GetStock(goodId model.GoodID) model.GoodStock`*: converte la richiesta di ottenimento della quantità di una merce in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata e ritorna un oggetto `GoodStock`;

- *`GetFreeStock(goodId model.GoodID) model.GoodStock`*: converte la richiesta di ottenimento della quantità libera di una merce in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata e ritorna un oggetto `GoodStock`;

- *`GetReservation(reservationId model.ReservationID) (model.Reservation, error)`*: converte la richiesta di ottenimento dei dettagli di una prenotazione in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata. Ritorna un oggetto `Reservation` e un eventuale errore.

==== IApplyCatalogUpdatePort <WarehouseIApplyCatalogUpdatePort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento del catalogo.

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyCatalogUpdate(GoodInfo)`*: il metodo deve permettere di applicare un aggiornamento del catalogo.

==== IGetGoodPort <WarehouseIGetGoodPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere le informazioni di una merce.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGood(GoodId) GoodInfo`*: il metodo deve permettere di ottenere le informazioni di una merce tramite il suo ID.

==== CatalogPersistenceAdapter <WarehouseCatalogPersistenceAdapter>

_Adapter_ che mette in comunicazione la _business logic_ di Warehouse#super[G] con la _persistence logic_ dello stesso.

Implementa le seguenti interfacce (porte):

- *IApplyCatalogUpdatePort*, @WarehouseIApplyCatalogUpdatePort;
- *IGetGoodPort*, @WarehouseIGetGoodPort.

*Descrizione degli attributi della struttura:*

- *`catalogRepo ICatalogRepository`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ di Warehouse#super[G]. Per le informazioni riguardo ICatalogRepository vedere la @WarehouseICatalogRepository.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogPersistenceAdapter(catalogRepo ICatalogRepository) *CatalogPersistenceAdapter`*: costruttore dell'_Adapter_. Inizializza l'attributo `catalogRepo` con quello passato come parametro al costruttore;

- *`ApplyCatalogUpdate(good model.GoodInfo) error`*: converte l'aggiornamento del catalogo in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata;

- *`GetGood(goodId model.GoodID) GoodInfo`*: converte la richiesta di ottenimento delle informazioni di una merce in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata.

==== IRemoveStockUseCase <WarehouseIRemoveStockUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di rimuovere una quantità di una merce dal magazzino.

*Descrizione dei metodi dell'interfaccia:*

- *`RemoveStock(context.Context, RemoveStockCmd) error`*: il metodo deve permettere di rimuovere una quantità di una merce dal magazzino.

==== IAddStockUseCase <WarehouseIAddStockUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di aggiungere una quantità di una merce al magazzino.

*Descrizione dei metodi dell'interfaccia:*

- *`AddStock(context.Context, AddStockCmd) error`*: il metodo deve permettere di aggiungere una quantità di una merce al magazzino.

==== ManageStockService <WarehouseManageStockService>

Si occupa di gestire la _business logic_ per l'aggiunta e la rimozione di stock#super[G] nel microservizio _Warehouse_#super[G].

Implementa le seguenti interfacce (_Use Case_):

- *IAddStockUseCase*, @WarehouseIAddStockUseCase;
- *IRemoveStockUseCase*, @WarehouseIRemoveStockUseCase.

*Descrizione degli attributi della struttura:*

- *`createStockUpdatePort port.ICreateStockUpdatePort`*: vedere la descrizione alla @WarehouseICreateStockUpdatePort;
- *`getGoodPort port.IGetGoodPort`*: vedere la descrizione alla @WarehouseIGetGoodPort;
- *`getStockPort port.IGetStockPort`*: vedere la descrizione alla @WarehouseIGetStockPort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewManageStockService(p ManageStockServiceParams) *ManageStockService`*: Costruttore della struttura. Le porte devono essere fornite mediante la struttura `ManageStockServiceParams`, dotata di `fx.In`;

- *`RemoveStock(ctx context.Context, cmd port.RemoveStockCmd) error`*: prende un _Command_ per la richiesta di rimozione di stock#super[G] e utilizza la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione;

- *`AddStock(ctx context.Context, cmd port.AddStockCmd) error`*: prende un _Command_ per la richiesta di aggiunta di stock#super[G] e utilizza la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione.

==== StockController <WarehouseStockController>

Lo *StockController* gestisce l'_application logic_ per le operazioni di aggiunta e rimozione di stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`addStockUseCase port.IAddStockUseCase`*: rappresenta il caso d'uso#super[G] per l'aggiunta di stock#super[G]; vedere la @WarehouseIAddStockUseCase;
- *`removeStockUseCase port.IRemoveStockUseCase`*: rappresenta il caso d'uso#super[G] per la rimozione di stock#super[G]; vedere la @WarehouseIRemoveStockUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockController(addStockUseCase port.IAddStockUseCase, removeStockUseCase port.IRemoveStockUseCase, mp MetricParams) *StockController`*: costruttore della struttura. Inizializza gli attributi `addStockUseCase` e `removeStockUseCase` con i valori passati come parametri e la telemetria con quanto contenuto in `MetricParams`;

- *`RemoveStockHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce i messaggi per la rimozione di stock#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente;

- *`AddStockHandler(ctx context.Context, msg *nats.Msg) error`*: gestisce i messaggi per l'aggiunta di stock#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== IApplyStockUpdateUseCase <WarehouseIApplyStockUpdateUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un aggiornamento dello _stock_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyStockUpdate(StockUpdateCmd)`*: il metodo deve permettere di applicare un aggiornamento dello stock#super[G]. Prende come parametro un oggetto `StockUpdateCmd` che contiene tutte le informazioni necessarie per l'aggiornamento dello stock#super[G].

==== ApplyStockUpdateService <WarehouseApplyStockUpdateService>

Si occupa di gestire la _business logic_ per l'applicazione degli aggiornamenti dello stock#super[G] nel microservizio _Warehouse_#super[G].

Implementa le seguenti interfacce (_Use Case_):

- *IApplyStockUpdateUseCase*, @WarehouseIApplyStockUpdateUseCase.

*Descrizione degli attributi della struttura:*

- *`applyStockUpdatePort port.IApplyStockUpdatePort`*: vedere la descrizione alla @WarehouseIApplyStockUpdatePort;
- *`idempotentPort port.IIdempotentPort`*: vedere la descrizione alla @WarehouseIIdempotentPort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewApplyStockUpdateService(applyStockUpdatePort port.IApplyStockUpdatePort, idempotentPort port.IIdempotentPort) *ApplyStockUpdateService`*: Costruttore della struttura. Le porte utilizzate vengono fornite come parametro al costruttore;

- *`ApplyStockUpdate(cmd port.StockUpdateCmd)`*: prende un _Command_ per la richiesta di applicazione di un aggiornamento dello stock#super[G] e utilizza la porta adibita allo scopo per svolgere la richiesta.

==== StockUpdateListener <WarehouseStockUpdateListener>

Lo *StockUpdateListener* gestisce l'_application logic_ per l'ascolto degli aggiornamenti dello stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`applyStockUpdateUseCase port.IApplyStockUpdateUseCase`*: rappresenta il caso d'uso#super[G] per l'applicazione degli aggiornamenti dello stock#super[G]; vedere la @WarehouseIApplyStockUpdateUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockUpdateListener(applyStockUpdateUseCase port.IApplyStockUpdateUseCase, mp MetricParams) *StockUpdateListener`*: costruttore della struttura. Inizializza l'attributo `applyStockUpdateUseCase` con il valore passato come parametro e la telemetria con quanto contenuto in `MetricParams`;

- *`ListenStockUpdate(ctx context.Context, msg jetstream.Msg) error`*: gestisce i messaggi per l'applicazione degli aggiornamenti dello stock#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== IApplyCatalogUpdateUseCase <WarehouseIApplyCatalogUpdateUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un aggiornamento del catalogo.

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyCatalogUpdate(CatalogUpdateCmd)`*: il metodo deve permettere di applicare un aggiornamento del catalogo.

==== ApplyCatalogUpdateService <WarehouseApplyCatalogUpdateService>

Si occupa di gestire la _business logic_ per l'applicazione degli aggiornamenti del catalogo nel microservizio _Warehouse_#super[G].

Implementa le seguenti interfacce (_Use Case_):

- *IApplyCatalogUpdateUseCase*, @WarehouseIApplyCatalogUpdateUseCase.

*Descrizione degli attributi della struttura:*

- *`applyCatalogUpdatePort port.IApplyCatalogUpdatePort`*: vedere la descrizione alla @WarehouseIApplyCatalogUpdatePort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewApplyCatalogUpdateService(applyCatalogUpdatePort port.IApplyCatalogUpdatePort) *ApplyCatalogUpdateService`*: Costruttore della struttura. La porta deve essere fornita come parametro al costruttore;

- *`ApplyCatalogUpdate(cmd port.CatalogUpdateCmd)`*: prende un _Command_ per la richiesta di applicazione di un aggiornamento del catalogo e utilizza la porta adibita allo scopo per svolgere la richiesta.

==== IConfirmOrderUseCase <WarehouseIConfirmOrderUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di confermare un ordine#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ConfirmOrder(context.Context, ConfirmOrderCmd) error`*: il metodo deve permettere di confermare un ordine#super[G], prendendo come parametri il contesto e un oggetto di tipo `ConfirmOrderCmd`. Deve restituire un errore in caso di fallimento.

==== IConfirmTransferUseCase <WarehouseIConfirmTransferUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di confermare un trasferimento#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ConfirmTransfer(context.Context, ConfirmTransferCmd) error`*: il metodo deve permettere di confermare un trasferimento#super[G], prendendo come parametri il contesto e un oggetto di tipo `ConfirmTransferCmd`. Deve restituire un errore in caso di fallimento.

==== ICreateReservationUseCase <WarehouseICreateReservationUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di creare una prenotazione.

*Descrizione dei metodi dell'interfaccia:*

- *`CreateReservation(context.Context, CreateReservationCmd) (CreateReservationResponse, error)`*: il metodo deve permettere di creare una prenotazione, prendendo come parametri il contesto e un oggetto di tipo `CreateReservationCmd`. Deve restituire un oggetto di tipo `CreateReservationResponse` contenente l'identificativo della prenotazione creata e un eventuale errore in caso di fallimento.

==== ManageReservationService <WarehouseManageReservationService>

Si occupa di gestire la _business logic_ per la gestione delle prenotazioni nel microservizio _Warehouse_#super[G].

Implementa le seguenti interfacce (_Use Case_):

- *ICreateReservationUseCase*, @WarehouseICreateReservationUseCase;
- *IApplyReservationUseCase*, @WarehouseIApplyReservationUseCase;
- *IConfirmOrderUseCase*, @WarehouseIConfirmOrderUseCase;
- *IConfirmTransferUseCase*, @WarehouseIConfirmTransferUseCase.

*Descrizione degli attributi della struttura:*

- *`createReservationEventPort port.IStoreReservationEventPort`*: rappresenta la porta per memorizzare gli eventi di creazione delle prenotazioni; vedere la @WarehouseIStoreReservationEventPort;
- *`applyReservationEventPort port.IApplyReservationEventPort`*: rappresenta la porta per applicare gli eventi di prenotazione; vedere la @WarehouseIApplyReservationEventPort;
- *`getReservationPort port.IGetReservationPort`*: rappresenta la porta per ottenere i dettagli di una prenotazione; vedere la @WarehouseIGetReservationPort;
- *`getStockPort port.IGetStockPort`*: rappresenta la porta per ottenere la quantità di una merce presente nel magazzino; vedere la @WarehouseIGetStockPort;
- *`createStockUpdatePort port.ICreateStockUpdatePort`*: rappresenta la porta per creare aggiornamenti dello stock#super[G]; vedere la @WarehouseICreateStockUpdatePort;
- *`idempotentPort port.IIdempotentPort`*: rappresenta la porta per gestire operazioni idempotenti; vedere la @WarehouseIIdempotentPort;
- *`cfg *config.WarehouseConfig`*: rappresenta la configurazione del microservizio _Warehouse_#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewManageReservationService(p ManageReservationServiceParams) *ManageReservationService`*: Costruttore della struttura. Gli attributi della struttura vengono inizializzati utilizzando la struttura *`ManageReservationServiceParams`*, che utilizza l'istruzione `fx.in` per permettere al _framework_ *fx* di fornire automaticamente le dipendenze necessarie;

- *`CreateReservation(ctx context.Context, cmd port.CreateReservationCmd) (CreateReservationResponse, error)`*: prende un comando per la creazione di una prenotazione e utilizza le porte adibite per svolgere la richiesta. Ritorna la risposta alla creazione della prenotazione o un errore in caso di fallimento;

- *`ApplyReservationEvent(cmd port.ApplyReservationEventCmd) error`*: prende un comando per applicare un evento di prenotazione e utilizza le porte adibite per svolgere la richiesta. Ritorna un errore in caso di fallimento;

- *`ConfirmOrder(ctx context.Context, cmd port.ConfirmOrderCmd) error`*: prende un comando per confermare un ordine#super[G] e utilizza le porte adibite per svolgere la richiesta. Ritorna un errore in caso di fallimento;

- *`ConfirmTransfer(ctx context.Context, cmd port.ConfirmTransferCmd) error`*: prende un comando per confermare un trasferimento#super[G] e utilizza le porte adibite per svolgere la richiesta. Ritorna un errore in caso di fallimento.

==== CatalogListener <WarehouseCatalogListener>

Il *CatalogListener* gestisce l'_Application Logic_ per l'ascolto degli aggiornamenti del catalogo nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`applyCatalogUpdateUseCase port.IApplyCatalogUpdateUseCase`*: rappresenta il caso d'uso#super[G] per l'applicazione degli aggiornamenti del catalogo; vedere la @WarehouseIApplyCatalogUpdateUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogListener(applyCatalogUpdateUseCase port.IApplyCatalogUpdateUseCase, mp MetricParams) *CatalogListener`*: costruttore della struttura. Inizializza l'attributo `applyCatalogUpdateUseCase` con il valore passato come parametro e la telemetria con quanto contenuto in `MetricParams`;

- *`ListenGoodUpdate(ctx context.Context, msg jetstream.Msg) error`*: gestisce i messaggi per l'applicazione degli aggiornamenti del catalogo. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== HealthCheckController <WarehouseHealthCheckController>
#figure(
  image("../../assets/warehouse/HealthCheckController.png", width: 55%),
  caption: "Warehouse - HealthCheckController",
)

Il *HealthCheckController* gestisce l'_Application Logic_ per le operazioni di controllo dello stato di salute del microservizio *Warehouse*#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewHealthCheckController() *HealthCheckController`*: costruttore della struttura. Inizializza gli attributi necessari per il controllo dello stato di salute;

- *`PingHandler(ctx context.Context, msg nats.Msg) error`*: gestisce le richieste di controllo dello stato di salute del microservizio. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== ReservationController <WarehouseReservationController>

Il *ReservationController* gestisce l'_Application Logic_ per le operazioni di creazione delle prenotazioni nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`createReservationUseCase port.ICreateReservationUseCase`*: rappresenta il caso d'uso#super[G] per la creazione delle prenotazioni; vedere la @WarehouseICreateReservationUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewReservationController(createReservationUseCase ICreateReservationUseCase, mp MetricParams) *ReservationController`*: costruttore della struttura. Inizializza l'attributo `createReservationUseCase` con il valore passato come parametro e la telemetria con quanto contenuto in `MetricParams`;

- *`CreateReservationHandler(ctx context.Context, msg nats.Msg) error`*: gestisce le richieste di creazione delle prenotazioni, trasformando i dati ricevuti in un comando e delegando l'operazione al caso d'uso#super[G]. Risponde con un messaggio di successo o errore.


==== ReservationEventListener <WarehouseReservationEventListener>

Il *ReservationEventListener* gestisce l'_Application Logic_ per l'ascolto degli eventi di prenotazione nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`applyReservationEventUseCase port.IApplyReservationUseCase`*: rappresenta il caso d'uso#super[G] per l'applicazione degli eventi di prenotazione; vedere la @WarehouseIApplyReservationUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewReservationEventListener(applyReservationEventUseCase IApplyReservationUseCase, mp MetricParams) *ReservationEventListener`*: costruttore della struttura. Inizializza l'attributo `applyReservationEventUseCase` con il valore passato come parametro e la telemetria con quanto contenuto in `MetricParams`;

- *`ListenReservationEvent(ctx context.Context, msg jetstream.Msg) error`*: gestisce i messaggi per l'applicazione degli eventi di prenotazione. Decodifica il messaggio ricevuto in un oggetto `ReservationEvent`, lo trasforma in un comando `ApplyReservationEventCmd` e delega l'operazione al caso d'uso#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== OrderUpdateListener <WarehouseOrderUpdateListener>

Il *OrderUpdateListener* gestisce l'_Application Logic_ per l'ascolto degli aggiornamenti degli ordini e dei trasferimenti nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`confirmOrderUseCase port.IConfirmOrderUseCase`*: rappresenta il caso d'uso#super[G] per la conferma degli ordini; vedere la @WarehouseIConfirmOrderUseCase;
- *`confirmTransferUseCase port.IConfirmTransferUseCase`*: rappresenta il caso d'uso#super[G] per la conferma dei trasferimenti; vedere la @WarehouseIConfirmTransferUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewOrderUpdateListener(confirmOrderUseCase port.IConfirmOrderUseCase, confirmTransferUseCase port.IConfirmTransferUseCase) *OrderUpdateListener`*: costruttore della struttura. Inizializza gli attributi `confirmOrderUseCase` e `confirmTransferUseCase` con i valori passati come parametri;

- *`ListenOrderUpdate(ctx context.Context, msg jetstream.Msg) error`*: gestisce i messaggi per l'aggiornamento degli ordini. Decodifica il messaggio ricevuto in un oggetto `OrderUpdate`, lo trasforma in un comando `ConfirmOrderCmd` e delega l'operazione al caso d'uso#super[G] `confirmOrderUseCase`. Ritorna un errore in caso l'operazione non venga completata correttamente;

- *`ListenTransferUpdate(ctx context.Context, msg jetstream.Msg) error`*: gestisce i messaggi per l'aggiornamento dei trasferimenti. Decodifica il messaggio ricevuto in un oggetto `TransferUpdate`, lo trasforma in un comando `ConfirmTransferCmd` e delega l'operazione al caso d'uso#super[G] `confirmTransferUseCase`. Ritorna un errore in caso l'operazione non venga completata correttamente.

