#import "../../lib/importantdocs.typ": *


#let ver = [0.3.0]

#show: body => importantdocs(
  data: datetime(day: 25, month: 02, year: 2025),
  tipo: [esterno],
  versione: ver,
  versioni: (
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
  verificatore: ((p.emanuele),),
  redattori: (
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

Le tecnologie adottate sono state organizzate in categorie, in base al loro ruolo all'interno dell'architettura: linguaggi di programmazione per lo sviluppo del codice, strumenti per la comunicazione tra microservizi, soluzioni per la containerizzazione e il _deployment_, e piattaforme per il monitoraggio del sistema.

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


== Tecnologie per la containerizzazione e _deployment_

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
    [*Docker*], [], [Docker è una piattaforma di containerizzazione che consente di impacchettare applicazioni e le loro dipendenze in container leggeri e portabili. Grazie alla sua architettura basata su immagini e container, Docker permette di garantire consistenza tra ambienti di sviluppo, test e produzione, semplificando il deployment e la scalabilità delle applicazioni. È particolarmente utile per microservizi e sistemi distribuiti, migliorando l'efficienza nell'uso delle risorse e la velocità di distribuzione del software.],
  ),
  caption: [Tecnologie per la containerizzazione e _deployment_],
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

L'architettura di deployment#super[G] adottata per il sistema è basata su *microservizi*, come richiesto dal capitolato#super[G] .\
Questa scelta consente una maggiore scalabilità, resilienza e indipendenza nello sviluppo e nel _deployment_ dei componenti software.

Ogni microservizio è indipendente e responsabile#super[G] di un insieme specifico di funzionalità#super[G].

I microservizi comunicano tra loro tramite NATS#super[G] , un sistema di messaggistica publish-subscribe ad alte prestazioni. Questa soluzione permette:

- Comunicazione asincrona, sincrona ed _event-driven_, riducendo l'accopiamento tra i servizi;

- Maggiore scalabilità, in quanto i messaggi possono essere gestiti in parallelo;

- Affidabilità nella trasmissione dei dati grazie alla capacità di gestire il _buffering_ e il re-invio dei messaggi in caso di errore.


Oltre a NATS#super[G], i microservizi possono esporre API#super[G] REST per le comunicazioni con il _client_.


Il _deployment_ dei microservizi avviene in ambienti containerizzati tramite Docker#super[G] .
Questo garantisce:

- Scalabilità dinamica, adattando le risorse ai carichi di lavoro;

- Isolamento dei servizi, evitando impatti negativi tra componenti;

- Gestione semplificata del ciclo di vita dei servizi.

Questa architettura#super[G] consente di ottenere un sistema altamente scalabile, resiliente e facilmente manutenibile, ottimizzato per ambienti distribuiti e carichi di lavoro variabili.

=== _Client_ monolitico

Il _client_ è progettato come un'applicazione monolitica che funge da interfaccia unificata verso i diversi microservizi del _backend_#super[G] .Questa scelta architetturale offre diversi vantaggi:

- Esperienza utente coerente: un'interfaccia unificata garantisce consistenza nell'interazione con le diverse funzionalità#super[G] del sistema;

- Semplificazione della gestione dello stato: la gestione delle sessioni utente e della sincronizzazione dei dati sono facilitate;

- Ottimizzazione delle comunicazioni: il _client_ gestisce in modo efficiente le chiamate verso i diversi microservizi, mascherando la complessità dell'architettura distribuita all'utente finale.

== Design pattern

=== Dependency injection

==== Descrizione del pattern
Il pattern _Dependency Injection_ è un design pattern strutturale che consente di implementare l'Inversione del Controllo per gestire le dipendenze tra gli oggetti.\
Invece di creare direttamente le dipendenze all'interno delle classi o dei componenti, queste vengono "iniettate" dall'esterno. In questo modo, un componente dichiara le sue dipendenze senza doversi preoccupare di come crearle, permettendo così una maggiore modularità e un disaccoppiamento tra i diversi componenti del sistema.
Esistono principalmente due tipi di _dependency injection_:

- _Constructor Injection_: le dipendenze vengono passate attraverso il costruttore;
- _Setter Injection_: le dipendenze vengono impostate tramite metodi setter.

Nel progetto viene utilizzata la *Constructor Injection*.

==== Motivazioni dell'utilizzo del pattern
L'utilizzo del pattern _Dependency Injection_ nel progetto porta numerosi vantaggi:

- *disaccoppiamento*: i componenti sono meno legati tra loro, facilitando la manutenzione e l'estensione del codice;
- *testabilità*: è possibile sostituire le dipendenze reali con mock durante i test;
- *modularità*: i componenti possono essere sviluppati, testati e utilizzati in modo indipendente;
- *flessibilità*: è più semplice sostituire un'implementazione con un'altra senza modificare il codice client;
- *gestione centralizzata*: tutte le dipendenze sono configurate e gestite in un unico punto (nel nostro caso, attraverso *Fx*);
- separazione delle responsabilità: ogni componente ha responsabilità ben definite.

==== Framework Fx di _Uber_
*Fx* è un framework di application _lifecycle_ e _dependency injection_ per _Go_ sviluppato da _Uber_.\
Permette di definire componenti e lascia al framework il compito di costruirli nell'ordine corretto e di avviare/arrestare l’applicazione.

===== Costrutti principali
I costrutti principali di Fx utilizzati nel progetto sono:

- *fx.Provide*: registra una funzione costruttore che crea e restituisce una dipendenza.;

- *fx.Supply*: inserisce direttamente valori nel container _Dependecy Injection_, utile per configurazioni;

- *fx.Invoke*: esegue una funzione dopo la costruzione di tutte le dipendenze;

- *fx.Options*: raggruppa più opzioni Fx;

- *fx.Lifecycle*: gestisce il ciclo di vita dell'applicazione con hook OnStart e OnStop;

- *fx.In/fx.Out*: strutture utilizzate per il parameter/result object pattern, utili per iniettare o fornire più dipendenze contemporaneamente.

Un aspetto importante del progetto è l'uso di file \*.module.go in cui vengono definiti moduli *Fx* per organizzare le dipendenze in modo gerarchico.\
Ogni modulo espone un'istanza _Module_ che aggrega tutte le opzioni Fx relative a quel componente.

//includere anche il fatto che esistono file *.module.go

==== Utilizzo del pattern nel progetto
Nel progetto, il pattern _Dependency Injection_ viene applicato in modo estensivo utilizzandolo praticamente in ogni componente dell'architettura.
Ogni microservizio utilizza *Fx* per gestire le proprie dipendenze, dalla configurazione fino ai componenti applicativi.
I servizi vengono costruiti dinamicamente all'avvio dell'applicazione, con tutte le dipendenze iniettate automaticamente.


=== Object adapter

==== Descrizione del pattern

=== Object adapter
==== Descrizione del pattern
Il pattern _Object Adapter_ è un design pattern strutturale che permette ad oggetti con interfacce incompatibili di collaborare.\
Questo pattern utilizza la composizione per "adattare" l'interfaccia di una classe a un'altra interfaccia attesa dai _client_.
L'adapter agisce come un intermediario, convertendo le richieste del client in chiamate compatibili con l'oggetto adattato.
A differenza del _Class Adapter_ (che utilizza l'ereditarietà), l'_Object Adapter_ mantiene un riferimento all'oggetto da adattare (_adaptee_), delegando a quest'ultimo le operazioni necessarie dopo aver effettuato le opportune conversioni.
La struttura tipica dell'Object Adapter include:
- una _Target Interface_ che definisce l'interfaccia che il client si aspetta di utilizzare;
- un _Adaptee_ che è l'oggetto con l'interfaccia incompatibile;
- un _Adapter_ che implementa l'interfaccia Target e mantiene un riferimento all'_Adaptee_.


==== Motivazioni dell'utilizzo del pattern
L'utilizzo del pattern _Object adapter_ nel progetto porta diversi vantaggi:

- *flessibilità maggiore*: l'_adapter_ può lavorare con qualsiasi sottoclasse dell'oggetto adattato;

- *riutilizzabilità*: l'_adapter_ può essere riutilizzato per adattare diverse implementazioni dell'interfaccia attesa;

- *manutenzione facilitata*: separando l'_adapter_ dall'oggetto concreto, eventuali modifiche all'oggetto non impattano direttamente sull'_adapter_.


==== Utilizzo del pattern nel progetto
Nel contesto dell'architettura esagonale adottata, gli _Object Adapter_ sono utilizzati principalmente negli strati esterni del sistema, come parte degli _Input e Output Adapter_:

- _Input Adapter_: implementati come _adapter_ che traducono le richieste esterne (come richieste HTTP o messaggi NATS) in chiamate alle _inbound ports_ del nucleo applicativo. Questi _adapter_ convertono i formati di richiesta esterni in oggetti di dominio comprensibili per il nucleo;
- _Output Adapter_: implementano le _outbound ports_ e adattano le chiamate del nucleo verso servizi esterni come sistemi di messaggistica o API di terze parti. Questi _adapter_ convertono gli oggetti di dominio in formati compatibili con i sistemi esterni.

== Microservizi sviluppati

Saranno ora esposti i microservizi sviluppati.

Sebbene *Go*#super[G] non abbia il concetto di "classe", comunque è possibile realizzare *strutture* e *funzioni* invocabili solo da quelle specifiche strutture, potendo così imitare, nel senso largo del termine, il funzionamento delle classi in un linguaggio di programmazione ad oggetti.

Si noti come dunque, in questo documento, i termini struttura e classe saranno utilizzati come sinonimi per il motivo sopra citato.

Per via del linguaggio utilizzato, talvolta potrebbe non essere stato possibile utilizzare il concetto di _Information Hiding_, specie in caso l'oggetto in questione abbia necessità di essere serializzato in formato _Json_. Inoltre, nel linguaggio Go#super[G] ,la privatezza di un attributo resta comunque limitata al di fuori del _package_.

Se la descrizione di un oggetto è assente questo implica che tale oggetto è una *struttura vuota*, ovvero senza alcun attributo e funzione da lei solamente invocabile.

Infine, si ricorda che, nel linguaggio Go#super[G] ,un nome di funzione o attributo che inizia con lettera minuscola simboleggia che lo stesso è visibile solo all'interno dello stesso _package_.

=== Oggetti comuni tra microservizi

==== StockUpdateGood

#figure(
  image("../../assets/catalog/StockUpdate.png", width: 20%),
  caption: "StockUpdateGood",
)

Struttura utile per rappresentare le variazioni di quantità durante l'invio di questa informazione al microservizio *Catalog*.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce che ha subito una variazione di quantità;

- *`Quantity int64`*: rappresenta la nuova quantità della merce in questione;

- *`Delta int64`*: rappresenta la differenza di quantità per la merce in questione.

==== GoodUpdateData

#figure(
  image("../../assets/catalog/GoodUpdateData.png", width: 25%),
  caption: "GoodUpdateData",
)

Struttura utile per rappresentare una modifica alle informazioni di una merce o all'aggiunta di una merce.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce da aggiungere o da modificare;
- *`GoodNewName string`*: rappresenta il nome da dare alla merce in questione;
- *`GoodNewDescription string`*: rappresenta la descrizione da dare alla merce in questione.

==== GetGoodsDataResponseDTO

#figure(
  image("../../assets/catalog/GetGoodsDataResponseDTO.png", width: 35%),
  caption: "GetGoodsDataResponseDTO",
)

Rappresenta la risposta fornita alla richiesta di ottenimento informazioni sulle merci presenti nel Sistema.

*Descrizione degli attributi della struttura:*
- *`GoodMap map[string]catalogCommon.Good`*: è la mappa fornita in risposta alla richiesta. Come chiave ha una *string* che rappresenta l'id della merce, mentre come valore ha un oggetto descritto alla @Good
- *`Err string`*: quando compilato, esplicita l'errore riscontrato nell'elaborare la richiesta. Se nessun errore è presente, la stringa è vuota.

==== GetWarehouseResponseDTO

#figure(
  image("../../assets/catalog/GetWarehouseResponseDTO.png", width: 40%),
  caption: "GetWarehouseResponseDTO",
)

Rappresenta la risposta alla richiesta di ottenimento informazioni sull'inventario dei magazzini memorizzati nel Sistema.

*Descrizione degli attributi della struttura:*

- *`WarehouseMap map[string]catalogCommon.Warehouse`*: mappa avente come chiave una *string* rappresentante l'id del magazzino, mentre valore un oggetto descritto alla @Warehouse
- *`Err string`*: quando compilato, esplicita l'errore riscontrato nell'elaborare la richiesta. Se nessun errore è presente, la stringa è vuota.

==== GetGoodsQuantityResponseDTO

#figure(
  image("../../assets/catalog/GetGoodsQuantityResponseDTO.png", width: 40%),
  caption: "GetGoodsQuantityResponseDTO",
)

Rappresenta la risposta alla richiesta di ottenimento informazioni sulla quantità globale delle merci.

*Descrizione degli attributi della struttura:*

- *`GoodMap map[string]int64`*: mappa avente come chiave una *string* che rappresenta l'id della merce, mentre come valore un *int64* che ne rappresenta la quantità;
- *`Err string`*: quando compilato, esplicita l'errore riscontrato nell'elaborare la richiesta. Se nessun errore è presente, la stringa è vuota.

=== Router dei microservizi

//descrizione generale delle classi router

=== Configurazioni dei microservizi

//descrizione generale delle classi config

=== `Main` dei microservizi

//descrivere cosa genericamente accade nel Main dei vari microservizi
#pagebreak()
=== Catalog <catalog>

#figure(
  image("../../assets/catalog/Catalog.png", width: 125%),
  caption: "Componenti del microservizio Catalog",
)

Il microservizio *Catalog* viene utilizzato per tenere traccia dell'inventario globale e della situazione di ciascun singolo magazzino.

Il microservizio tiene traccia dell'aggiunta e della modifica delle informazioni delle merci, prestando attenzione anche all'aggiunta di _stock_ delle merci stesse.

È formato da tre componenti principali:

- *CatalogController*, che rappresenta l'_application logic_
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

- *`NewGood(ID string, name string, description string) *Good`*: rappresenta il costruttore della struttura, restituisce un *Good* inizializzato ai valori passati come parametro;
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

- *`warehouseId string`*: rappresenta l'id del magazzino dove la quantità della merce va modificata;

- *`goodId string`*: rappresenta l'id della merce la cui quantità va modificata;

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

- *`result error`*: viene qui memorizzato l'esito dell'operazione, se positivo (nil) o non.

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

- *`result error`*: viene qui memorizzato l'esito dell'operazione, se positivo (nil) o non.

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

- *`result error`*: viene qui memorizzato l'esito dell'operazione, se positivo (nil) o non.
- *`wrongID []string`*: rappresenta uno slice con gli id delle merci la cui modifica della quantità non è riuscita.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewSetMultipleGoodsQuantityResponse(err error, wrongID []string) *SetMultipleGoodsQuantityResponse`*: costruttore della Risposta. Gli attributi vengono inizializzati con i valori passati come parametri al costruttore;

- *`GetOperationResult() string`*: permette di ottenere dalla Risposta l'esito dell'operazione;

- *`GetWrongIDSlice() []string`*: permette di ottenere la _slice_ degli id la cui modifica non è riuscita.

==== CatalogRepository

Questa struttura implementa l'interfaccia *IGoodRepository*, vedi la @igoodrepository.

*Descrizione degli attributi della struttura:*

- *`warehouseMap map[string]*catalogCommon.Warehouse`*: è una mappa che ha come chiave una *string* (l'identificativo del magazzino) e come valore un oggetto *Warehouse*, rappresentante un magazzino;
- *`goodMap map[string]*catalogCommon.Good`*: è una mappa che ha come chiave una *string* (l'identificatore della merce) e come valore un oggetto *Good*, rappresentante una merce;
- *`goodStockMap map[string]int64`*: è una mappa che ha come chiave una *string* (l'identificatore della merce) e come valore un *int64* (la quantità di quella merce tra tutti i magazzini)
- *`mutex sync.Mutex`*: variabile utilizzata per il corretto funzionamento di alcuni metodi. Si rimanda alla #link("https://go.dev/tour/concurrency/9")[documentazione del linguaggio Go#super[G] ]per ulteriori informazioni

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogRepository() *CatalogRepository`*: rappresenta il costruttore della struttura. Non prende alcun parametro, inizializzando gli attributi a mappe vuote;

- *`GetGoods() map[string]catalogCommon.Good`*: restituisce la mappa delle merci internamente memorizzata;

- *`GetGoodsGlobalQuantity() map[string]int64`*: restituisce la mappa della quantità globale delle merci;

- *`GetWarehouses() map[string]catalogCommon.Warehouse`*: restituisce la mappa dei magazzini riconosciuti dal Sistema;

- *`SetGoodQuantity(warehouseID string, goodID string, newQuantity int64) error`*: imposta la quantità della merce con id *goodID* del magazzino con id *warehouseID* alla quantità memorizzata nel parametro *newQuantity*. In caso la merce sia nuova, questa viene automaticamente aggiunta, ma senza nome e descrizione. Ritorna sempre *nil*;

- *`addWarehouse(warehouseID string)`*: aggiunge magazzino al sistema con id pari a *warehouseID*. Questa operazione è effettuata automaticamente quando si cerca di aggiunge _stock_ ad un magazzino non ancora registrato;

- *`AddGood(goodID string, name string, description string) error`*: aggiunge una merce al Sistema con id *goodID*, nome *name* e descrizione *description*. Se la merce è già presente nel Sistema, chiama automaticamente la funzione `changeGoodData` per modificarne le informazioni. Ritorna sempre *nil*;

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

Rappresenta la porta che consente alla _Business Logic_ di comunicare alla _Persistence Logic_ la volontà di voler aggiungere o modificare i dati di una merce.

*Descrizione dei metodi dell'interfaccia:*

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: il metodo deve dare la possibilità di aggiungere e/o modificare i dati di una merce.

==== IGetGoodsInfoPort <IGetGoodsInfoPort>

Rappresenta la porta che consente alla _Business Logic_ di comunicare alla _Persistence Logic_ la volontà di ottenere i dati delle merci registrate nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: il metodo deve permettere di richiedere i dati sulle merci registrate nel Sistema e di ottenerle in risposta.

==== IGetGoodsQuantityPort <IGetGoodsQuantityPort>

Rappresenta la porta che consente alla _Business Logic_ di comunicare alla _Persistence Logic_ la volontà di ottenere le informazioni sulla quantità delle merci registrate nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: il metodo deve permettere di richiedere i dati sulla quantità delle merci registrate nel Sistema e di ottenerle in risposta.

==== IGetWarehousesInfoPort <IGetWarehousesInfoPort>

Rappresenta la porta che consente alla _Business Logic_ di comunicare alla _Persistence Logic_ la volontà di ottenere le informazioni sull'inventario dei magazzini registrati nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetWarehouses(*servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: il metodo deve permettere di richiedere le informazioni sull'inventario dei magazzini registrati nel Sistema e ottenere tali informazioni in risposta.

==== ISetGoodQuantityPort <ISetGoodQuantityPort>

Rappresenta la porta che consente alla _Business Logic_ di comunicare alla _Persistence Logic_ la volontà di impostare la quantità di una merce.

*Descrizione dei metodi dell'interfaccia:*

- *`SetGoodQuantity(agqc *servicecmd.SetGoodQuantityCmd) *serviceresponse.SetGoodQuantityResponse`*: il metodo deve permettere di modificare la quantità di una merce.

==== CatalogAdapter

Adapter che mette in comunicazione la _Business Logic_ di catalog con la _Persistence Logic_ dello stesso.

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

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: converte il _Command_ per l'aggiunta o modifica dati merce in valori da fornire alla _Persistence Logic_, quindi richiama la _Persistence Logic_ ad eseguire l'operazione desiderata;

- *`SetGoodQuantity(agqc *servicecmd.SetGoodQuantityCmd) *serviceresponse.SetGoodQuantityResponse`*:converte il _Command_ per la modifica della quantità di una merce in valori da fornire alla _Persistence Logic_, quindi richiama la _Persistence Logic_ ad eseguire l'operazione desiderata;

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: converte il _Command_ per ottenere la quantità delle varie merci registrate nel Sistema in valori da fornire alla _Persistence Logic_, quindi richiama la _Persistence Logic_ ad eseguire l'operazione desiderata;

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: converte il _Command_ per ottenere le informazioni sulle varie merci registrate nel Sistema in valori da fornire alla _Persistence Logic_, quindi richiama la _Persistence Logic_ ad eseguire l'operazione desiderata;

- *`GetWarehouses(*servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: converte il _Command_ per ottenere le informazioni sui magazzini registrati nel Sistema in valori da fornire alla _Persistence Logic_, quindi richiama la _Persistence Logic_ ad eseguire l'operazione desiderata.

==== IService <IService>

Interfaccia che descrive i metodi che devono essere implementati da una struttura che si propone di soddisfare la _Business Logic_ del microservizio Catalog.

*Descrizione dei metodi dell'interfaccia:*

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: il metodo deve permettere di aggiungere o modificare le informazioni di una merce;

- *`SetMultipleGoodsQuantity(cmd *servicecmd.SetMultipleGoodsQuantityCmd) *serviceresponse.SetMultipleGoodsQuantityResponse`*: il metodo deve permettere di aggiornare la quantità di un gruppo di merci;

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: il metodo deve permettere di richiedere la quantità delle merci registrate nel Sistema e ottenerne la risposta;

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: il metodo deve permettere di richiedere le informazioni sulle merci memorizzate nel sistema e ottenerne la risposta;

- *`GetWarehouses(gwc *servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: il metodo deve permettere di richiedere le informazione sull'inventario dei magazzini memorizzati nel Sistema e ottenerne la risposta.

==== IGetGoodsInfoUseCase <IGetGoodsInfoUseCase>

Rappresenta l'interfaccia che permette, all'_Application Logic_ di comunicare alla _Business Logic_ la volontà di ottenere informazioni sulle merci memorizzate.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: il metodo deve permettere di richiedere le informazioni sulle merci memorizzate nel sistema e ottenerne la risposta.

==== IGetGoodsQuantityUseCase <IGetGoodsQuantityUseCase>

Rappresenta l'interfaccia che permette, all'_Application Logic_ di comunicare alla _Business Logic_ la volontà di ottenere informazioni sulla quantità delle merci memorizzate.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: il metodo deve permettere di richiedere la quantità delle merci registrate nel Sistema e ottenerne la risposta.

==== IGetWarehousesUseCase <IGetWarehousesUseCase>

Rappresenta l'interfaccia che permette, all'_Application Logic_ di comunicare alla _Business Logic_ la volontà di ottenere informazioni sull'inventario dei magazzini memorizzati nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`GetWarehouses(gwc *servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: il metodo deve permettere di richiedere le informazione sull'inventario dei magazzini memorizzati nel Sistema e ottenerne la risposta.

==== ISetMultipleGoodsQuantityUseCase <ISetMultipleGoodsQuantityUseCase>

Rappresenta l'interfaccia che permette, all'_Application Logic_ di comunicare alla _Business Logic_ la volontà di impostare la quantità di varie merci.

*Descrizione dei metodi dell'interfaccia:*

- *`SetMultipleGoodsQuantity(cmd *servicecmd.SetMultipleGoodsQuantityCmd) *serviceresponse.SetMultipleGoodsQuantityResponse`*: il metodo deve permettere di aggiornare la quantità di un gruppo di merci.

==== IUpdateGoodDataUseCase <IUpdateGoodDataUseCase>

Rappresenta l'interfaccia che permette, all'_Application Logic_ di comunicare alla _Business Logic_ la volontà di modificare le informazioni di una merce nel Sistema.

*Descrizione dei metodi dell'interfaccia:*

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: il metodo deve permettere di aggiungere o modificare le informazioni di una merce.

==== CatalogService

Si occupa di gestire la _Business Logic_ del microservizio _Catalog_ e implementa, per questo motivo, *IService* (@IService).

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

- *`NewCatalogService(p CatalogServiceParams) *CatalogService`*: Costruttore della struttura. Le porte (_Use Case_) devono essere fornite come parametri al costruttore;

- *`AddOrChangeGoodData(agc *servicecmd.AddChangeGoodCmd) *serviceresponse.AddOrChangeResponse`*: prende un _Command_ per la richiesta di aggiunta o cambiamento informazioni di una merce e attiva la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione;

- *`SetMultipleGoodsQuantity(cmd *servicecmd.SetMultipleGoodsQuantityCmd)`*: prende un _Command_ per la richiesta di modifica quantità di un gruppo di merce e trasmette la richiesta per ciascuna di tali merci alla porta adibita allo scopo. Richiama la funzione *`checkErrinSlice`* per controllare l'esito di ciascuna delle operazioni;

- *`checkErrinSlice(errorSlice []error) []int`*: controlla la _slice_ passata come parametro per comprendere se un'operazione di modifica quantità merce non è andata a buon fine. Ritorna una _slice_ con le posizioni nella _slice_ contenente le merci da modificare in cui è stato riscontrato un esito negativo;

- *`GetGoodsQuantity(ggqc *servicecmd.GetGoodsQuantityCmd) *serviceresponse.GetGoodsQuantityResponse`*: prende un _Command_ per la richiesta delle informazioni sulla quantità delle merci memorizzate nel Sistema e ne chiede esecuzione mediante l'apposita porta. Ritorna quindi la risposta;

- *`GetGoodsInfo(ggqc *servicecmd.GetGoodsInfoCmd) *serviceresponse.GetGoodsInfoResponse`*: prende un _Command_ per la richiesta delle informazioni sulle merci memorizzate nel Sistema. Inoltra la richiesta alla porta opportuna e ritorna quindi la risposta;

- *`GetWarehouses(gwc *servicecmd.GetWarehousesCmd) *serviceresponse.GetWarehousesResponse`*: prende un _Command_ per la richiesta delle informazioni sull'inventario dei magazzini memorizzati nel Sistema. Procede ad inoltrare la richiesta sulla porta opportuna e ritorna quindi la risposta.

==== CatalogController

Si occupa di gestire l'_Application Logic_ del microservizio Catalog.

*Descrizione degli attributi della struttura:*

- *`getGoodsInfoUseCase serviceportin.IGetGoodsInfoUseCase`*: la descrizione è disponibile alla @IGetGoodsInfoUseCase;
- *`getGoodsQuantityUseCase serviceportin.IGetGoodsQuantityUseCase`*: la descrizione è disponibile alla @IGetGoodsQuantityUseCase;
- *`getWarehouseInfoUseCase serviceportin.IGetWarehousesUseCase`*: la descrizione è disponibile alla @IGetWarehousesUseCase;
- *`setMultipleGoodsQuantityUseCase serviceportin.ISetMultipleGoodsQuantityUseCase`*: la descrizione è disponibile alla @ISetMultipleGoodsQuantityUseCase;
- *`updateGoodDataUseCase serviceportin.IUpdateGoodDataUseCase`*: la descrizione è disponibile alla @IUpdateGoodDataUseCase.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogController(p CatalogControllerParams) *catalogController`*: costruttore della struttura. Gli attributi della struttura vengono inizializzati con i valori passati al costruttore;

- *`getGoodsRequest(ctx context.Context, msg *nats.Msg) error`*: metodo utilizzato per recuperare le richieste di ottenimento informazioni sulle merci presenti nel Sistema. La richiesta arriva direttamente mediante un messaggio su *NATS*#super[G] .Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`getWarehouseRequest(ctx context.Context, msg *nats.Msg) error`*: metodo utilizzato per recuperare le richieste di ottenimento informazioni sui magazzini presenti nel Sistema e il loro inventario. La richiesta arriva direttamente mediante un messaggio su *NATS*#super[G] .Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`getGoodsGlobalQuantityRequest(ctx context.Context, msg *nats.Msg) error`*: metodo utilizzato per recuperare le richieste di ottenimento informazioni sulla quantità globalmente disponibile delle merci memorizzate nel Sistema. La richiesta arriva direttamente mediante un messaggio su *NATS*#super[G] .Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`setGoodDataRequest(ctx context.Context, msg jetstream.Msg)`*: metodo utilizzato per recuperare le richieste di aggiunta merce o modifica informazioni su una merce. La richiesta arriva direttamente mediante un messaggio su *NATS JetStream*. Utilizza il metodo `checkSetGoodDataRequest` per verificare se l'elaborazione della richiesta è sensata. Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`checkSetGoodDataRequest(request *stream.GoodUpdateData) error`*: controlla le richieste di aggiornamento dati o aggiunta merce. Ritorna un errore se la richiesta non è valida;
- *`setGoodQuantityRequest(ctx context.Context, msg jetstream.Msg) error`*: metodo utilizzato per recuperare i messaggi relativi a richieste di aggiornamento della quantità di una merce. La richiesta arriva direttamente mediante un messaggio su *NATS JetStream*. Utilizza il metodo `checkSetGoodQuantityRequest` per verificare se l'elaborazione della richiesta è sensata. Ritorna un errore in caso l'operazione non venga completata correttamente;
- *`checkSetGoodQuantityRequest(request *stream.StockUpdate) error`*: controlla le richieste di aggiornamento quantità di una merce. Ritorna un errore se la richiesta non è valida.
