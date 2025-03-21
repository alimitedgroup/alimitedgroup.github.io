#import "../../lib/importantdocs.typ": *


#let ver = [0.7.0]

#show: body => importantdocs(
  data: datetime(day: 17, month: 03, year: 2025),
  tipo: [esterno],
  versione: ver,
  versioni: (
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

I microservizi comunicano tra loro tramite NATS#super[G] , un sistema di messaggistica publish-subscribe ad alte prestazioni. Questa soluzione permette:

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
- *testabilità*: è possibile sostituire le istanze reali degli oggetti richiesti con _mock_ durante i test#super[G] ;
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

Per via del linguaggio utilizzato, talvolta potrebbe non essere stato possibile utilizzare il concetto di _Information Hiding_, specie in caso l'oggetto in questione abbia necessità di essere serializzato in formato _Json_. Inoltre, nel linguaggio Go#super[G] ,la privatezza di un attributo resta comunque limitata al di fuori del _package_.

Se la descrizione di un oggetto è assente questo implica che tale oggetto è una *struttura vuota*, ovvero senza alcun attributo e funzione da lei solamente invocabile.

Infine, si ricorda che, nel linguaggio Go#super[G] ,un nome di funzione o attributo che inizia con lettera minuscola simboleggia che lo stesso è visibile solo all'interno dello stesso _package_.

=== Oggetti comuni tra microservizi

==== StockUpdateGood

#figure(
  image("../../assets/catalog/StockUpdate.png", width: 27%),
  caption: "StockUpdateGood",
)

Struttura utile per rappresentare le variazioni di quantità durante l'invio di questa informazione al microservizio *Catalog*.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce che ha subito una variazione di quantità;

- *`Quantity int64`*: rappresenta la nuova quantità della merce in questione;

- *`Delta int64`*: rappresenta la differenza di quantità per la merce in questione.

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
- *`issuer string`*: rappresenta l'issuer, che la _business logic_ genera al momento della generazione delle chiavi mediante la libreria uuid di Google.

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
- *`issuer string`*: rappresenta l'issuer, che la _business logic_ genera al momento della generazione delle chiavi mediante la libreria uuid di Google.

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
  image("../../assets/authenticator/GetTokenResponse.png", width: 40%),
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

==== IAuthPersistance <IAuthPersistance>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ del microservizio _Authenticator_.

*Descrizione dei metodi dell'interfaccia:*

- *`StorePemKeyPair(prk []byte, puk []byte, emit string) error`*: il metodo deve dare la possibilità di memorizzare una coppia di chiavi ECDSA in formato Pem e l'identificatore (uuid) che verrà poi associato come _issuer_ delle chiavi generate;
- *`GetPemPublicKey() (PemPublicKey, error)`*: il metodo deve dare la possibilità di ottenere l'oggetto `PemPublicKey` memorizzato. Se non presente, error deve essere diverso da `nil`;
- *`GetPemPrivateKey() (PemPrivateKey, error)`*: il metodo deve dare la possibilità di ottenere l'oggetto `PemPrivateKey` memorizzato. Se non presente, error deve essere diverso da `nil`;
- *`CheckKeyPairExistence() error`*: il metodo deve restituire un errore se non è memorizzata una coppia di chiavi, altrimenti deve restituire `nil`.

==== AuthRepository <AuthRepository>

Questa struttura implementa l'interfaccia *IAuthPersistance*, vedi la @IAuthPersistance.

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

- *`repo persistence.IAuthPersistance`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ di Authenticator. Per ulteriori informazioni si veda la @IAuthPersistance.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewAuthAdapter(repo persistence.IAuthPersistance) *AuthAdapter`*: costruttore dell'oggetto. Prende l'oggetto che implementa la _persistence logic_ come parametro;
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

- *`mb *broker.NatsMessageBroker`*: un'istanza di un _message broker_ di NATS#super[G] ,necessario per la pubblicazione delle chiavi e dell'_issuer_;

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPublisher(mb *broker.NatsMessageBroker) *AuthPublisher`*: costruttore della struttura, prende un _message broker_ di NATS#super[G] come parametro;
- *`PublishKey(puk crypto.PublicKey, issuer string) error`*: permette di pubblicare la chiave e l'issuer passati come parametro in un apposito JetStream di NATS#super[G] ,ritornando un errore se l'operazione non va a buon fine.

==== UserData

#figure(
  image("../../assets/authenticator/UserData.png", width: 40%),
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

- *`NewAuthService(p AuthServiceParams) *AuthService`*: costruttore dell'oggetto. Le porte (_Use Case_) devono essere fornite come parametri al costruttore e, per farlo, si utilizza la struttura *`AuthServiceParams`*, struttura con i medesimi attributi di CatalogService con l'istruzione `fx.in` per permettere al _framework_ *fx* di fornire automaticamente le dipendenze necessarie;
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

- *`NewAuthController(tokenUseCase serviceportin.IGetTokenUseCase) *authController`*: costruttore dell'oggetto. Prende un oggetto che soddisfa `IGetTokenUseCase` come parametro;
- *`checkGetTokenRequest(dto *common.AuthLoginRequest) error`*: controlla la correttezza della richiesta per ottenere un Token e restituisce un errore in caso di risultato negativo o `nil` altrimenti;
- *`NewTokenRequest(ctx context.Context, msg *nats.Msg) error`*: si occupa di gestire una richiesta di ottenimento Token e rispondere alla stessa con il Token o con una stringa vuota se la procedura non va a buon fine.

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

- *`warehouseMap map[string]*catalogCommon.Warehouse`*: è una mappa che ha come chiave una *string* (l'identificativo del magazzino) e come valore un oggetto *Warehouse*#super[G] ,rappresentante un magazzino;
- *`goodMap map[string]*catalogCommon.Good`*: è una mappa che ha come chiave una *string* (l'identificatore della merce) e come valore un oggetto *Good*#super[G] ,rappresentante una merce;
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

- *`NewCatalogController(p CatalogControllerParams) *catalogController`*: costruttore della struttura. Gli attributi della struttura vengono inizializzati con i valori passati al costruttore;

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
  image("../../assets/warehouse/warehouse.png", width: 130%),
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

==== IStockRepository <IStockRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ degli stock#super[G] per il microservizio _Warehouse_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`GetStock(goodId string) int64`*: il metodo deve dare possibilità di ottenere la quantità di una merce presente nel magazzino;

- *`SetStock(goodId string, stock#super[G] int64)`*: il metodo deve dare la possibilità di impostare la quantità di una merce nel magazzino;

- *`AddStock(goodId string, stock#super[G] int64)`*: il metodo deve dare la possibilità di aggiungere una quantità di una merce ad un magazzino;

==== StockRepositoryImpl

Questa struttura implementa l'interfaccia *IStockRepository*, vedi la @IStockRepository.

*Descrizione degli attributi della struttura:*

- *`goodToStock map[string]int64`*: è una mappa che ha come chiave una *string* (l'identificativo della merce) e come valore un intero, rappresentante la quantità di stock#super[G] di quella merce;

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockRepositoryIml() *NewStockRepositoryIml`*: rappresenta il costruttore della struttura. Non prende alcun parametro, inizializzando gli attributi a mappe vuote;

- *`GetStock(goodId string) int64`*: restituisce la quantità di una merce presente nel magazzino;

- *`SetStock(goodId string, stock#super[G] int64)`*: imposta la quantità di una merce nel magazzino;

- *`AddStock(goodId string, stock#super[G] int64)`*: aggiunge una quantità di una merce ad un magazzino;

==== Good <WarehouseRepoGood>
#figure(
  image("../../assets/warehouse/Good.png", width: 25%),
  caption: "Warehouse - Good",
)
Rappresenta una merce registrata nel magazzino.
Vieni utilizzato dall'interfaccia ICatalogRepository, vedi @ICatalogRepository, per memorizzare le informazioni delle merci.

*Descrizione degli attributi della struttura:*
- *`ID string`*: attributo di tipo *string* che rappresenta l'Id della merce;
- *`Name string`*: attributo di tipo *string* che rappresenta il nome della merce;
- *`Description string`*: attributo di tipo *string* che rappresenta la descrizione della merce.


==== ICatalogRepository <ICatalogRepository>

Rappresenta l'interfaccia generica di un oggetto che implementa la _persistence logic_ delle informazioni del catalogo per il microservizio _Warehouse_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`GetGood(goodId string) *Good`*: il metodo deve dare la possibilità di ottenere i dati di una merce registrata nel magazzino tramite il suo ID;
- *`SetGood(goodId string, name string, description string) bool`*: il metodo deve dare la possibilità di aggiungere o modificare una merce nel magazzino.

==== CatalogRepositoryImpl

Questa struttura implementa l'interfaccia *ICatalogRepository*, vedi la @ICatalogRepository.

*Descrizione degli attributi della struttura:*

- *`goodMap map[string]Good`*: è una mappa che ha come chiave una *string* (l'identificatore della merce) e come valore un oggetto *Good*#super[G],rappresentante una merce.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogRepositoryImpl() *CatalogRepositoryImpl`*: rappresenta il costruttore della struttura. Non prende alcun parametro, inizializzando gli attributi a mappe vuote;
- *`GetGood(goodId string) *Good`*: restituisce i dati di una merce registrata nel magazzino tramite il suo ID;
- *`SetGood(goodId string, name string, description string) bool`*: aggiunge o modifica una merce nel magazzino con l'ID, nome e descrizione forniti.

==== CreateStockUpdateCmd <CreateStockUpdateCmd>
#figure(
  image("../../assets/warehouse/CreateStockUpdateCmd.png", width: 40%),
  caption: "Warehouse - CreateStockUpdateCmd",
)

Rappresenta il _Command_ per creare un aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`Type string`*: attributo di tipo *string* che rappresenta il tipo di aggiornamento dello stock#super[G] ;
- *`Goods []CreateStockUpdateGood`*: rappresenta una lista di oggetti `CreateStockUpdateGood` che contengono le quantità delle merci aggiornate.

==== CreateStockUpdateGood <CreateStockUpdateGood>
#figure(
  image("../../assets/warehouse/CreateStockUpdateGood.png", width: 30%),
  caption: "Warehouse - CreateStockUpdateGood",
)

Rappresenta una classe che viene utilizzata dal _Command_ per creare un aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodId string`*: attributo di tipo *string* che rappresenta l'identificativo della merce aggiornata;
- *`Quantity int64`*: attributo di tipo *int64* che rappresenta la quantità attuale della merce;
- *`QuantityDiff int64`*: attributo di tipo *int64* che rappresenta la differenza di quantità della merce rispetto all'ultimo stato.

==== ICreateStockUpdatePort <ICreateStockUpdatePort>

Rappresenta la porta che consente alla _business logic_ di comunicare con l'esterno per creare un aggiornamento dello stockRappresenta l'interfaccia generica di un oggetto che implementa la _Persistence Logic_ degli stock#super[G] per il microservizio _Warehouse_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`CreateStockUpdate(ctx: Context, cmd: CreateStockUpdateCmd) error`*: il metodo deve permettere di creare un aggiornamento dello stock#super[G].

==== PublishStockUpdateAdapter

Questa struttura implementa l'interfaccia *ICreateStockUpdatePort*, vedi la @ICreateStockUpdatePort.

_Adapter_ che mette in comunicazione la _business logic_ con il sistema di messaggistica per pubblicare gli aggiornamenti dello stockRappresenta l'interfaccia generica di un oggetto che implementa la _Persistence Logic_ degli stock#super[G] per il microservizio _Warehouse_#super[G].

*Descrizione degli attributi della struttura:*

- *`broker *NatsMessageBroker`*: rappresenta il broker di messaggistica NATS#super[G] utilizzato per pubblicare i messaggi;
- *`cfg *WarehouseConfig`*: rappresenta la configurazione del magazzino.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewPublishStockUpdateAdapter(broker: *NatsMessageBroker, cfg: *WarehouseConfig) *PublishStockUpdateAdapter`*: costruttore dell'adapter. Inizializza gli attributi `broker` e `cfg` con i valori passati come parametri.
- *`CreateStockUpdate(ctx: Context, cmd: CreateStockUpdateCmd) error`*: pubblica un aggiornamento dello stock#super[G] utilizzando il broker di messaggistica NATS#super[G].

==== GoodStock <GoodStock>
#figure(
  image("../../assets/warehouse/GoodStock.png", width: 25%),
  caption: "Warehouse - GoodStock",
)
Questa classe è utilizzata nella _business logic_.
Rappresenta una merce con la sua quantità presente nel magazzino.

*Descrizione degli attributi della struttura:*
- *`ID GoodId`*: attributo di tipo *GoodId* che rappresenta l'Id della merce;
- *`Quantity int64`*: attributo di tipo *int64* che rappresenta la quantità della merce nel magazzino.

==== IApplyStockUpdatePort <IApplyStockUpdatePort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento dello stock#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyStockUpdate(goods: []GoodStock) error`*: il metodo deve permettere di applicare un aggiornamento dello stock#super[G].

==== IGetStockPort <IGetStockPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere la quantità di una merce presente nel magazzino.

*Descrizione dei metodi dell'interfaccia:*

- *`GetStock(goodId: GoodId) GoodStock`*: il metodo deve permettere di ottenere la quantità di una merce presente nel magazzino.

==== StockPersistenceAdapter

_Adapter_ che mette in comunicazione la _business logic_ di Warehouse#super[G] con la _persistence logic_ dello stesso.

Implementa le seguenti interfacce (porte):

- *IApplyStockUpdatePort*, @IApplyStockUpdatePort;
- *IGetStockPort*, @IGetStockPort.

*Descrizione degli attributi della struttura:*

- *`stockRepo IStockRepository`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ di Warehouse#super[G]. Per le informazioni riguardo IStockRepository vedere la @IStockRepository.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockPersistenceAdapter(stockRepo: IStockRepository) *StockPersistenceAdapter`*: costruttore dell'_Adapter_. Inizializza l'attributo `stockRepo` con quello passato come parametro al costruttore;

- *`ApplyStockUpdate(goods: *GoodStock) error`*: converte l'aggiornamento dello stock#super[G] in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata;

- *`GetStock(goodId: GoodId) GoodStock`*: converte la richiesta di ottenimento della quantità di una merce in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata.

==== GoodInfo <GoodInfo>
#figure(
  image("../../assets/warehouse/GoodInfo.png", width: 20%),
  caption: "Warehouse - GoodInfo",
)
Questa classe è utilizzata nella _business logic_.
Rappresenta una merce con le sue informazioni.

*Descrizione degli attributi della struttura:*
- *`ID GoodId`*: attributo di tipo *GoodId* che rappresenta l'Id della merce;
- *`Quantity int64`*: attributo di tipo *int64* che rappresenta la quantità della merce nel magazzino.

==== IApplyCatalogUpdatePort <IApplyCatalogUpdatePort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di applicare un aggiornamento del catalogo.

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyCatalogUpdate(good: GoodInfo) error`*: il metodo deve permettere di applicare un aggiornamento del catalogo.

==== IGetGoodPort <IGetGoodPort>

Rappresenta la porta che consente alla _business logic_ di comunicare alla _persistence logic_ la volontà di ottenere le informazioni di una merce.

*Descrizione dei metodi dell'interfaccia:*

- *`GetGood(goodId: GoodId) GoodInfo`*: il metodo deve permettere di ottenere le informazioni di una merce tramite il suo ID.

==== CatalogPersistenceAdapter

_Adapter_ che mette in comunicazione la _business logic_ di Warehouse#super[G] con la _persistence logic_ dello stesso.

Implementa le seguenti interfacce (porte):

- *IApplyCatalogUpdatePort*, @IApplyCatalogUpdatePort;
- *IGetGoodPort*, @IGetGoodPort.

*Descrizione degli attributi della struttura:*

- *`catalogRepo ICatalogRepository`*: l'_Adapter_ possiede un attributo alla struttura rappresentante la _persistence logic_ di Warehouse#super[G]. Per le informazioni riguardo ICatalogRepository vedere la @ICatalogRepository.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogPersistenceAdapter(catalogRepo: ICatalogRepository) *CatalogPersistenceAdapter`*: costruttore dell'_Adapter_. Inizializza l'attributo `catalogRepo` con quello passato come parametro al costruttore;

- *`ApplyCatalogUpdate(good: GoodInfo) error`*: converte l'aggiornamento del catalogo in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata;

- *`GetGood(goodId: GoodId) GoodInfo`*: converte la richiesta di ottenimento delle informazioni di una merce in valori da fornire alla _persistence Logic_, quindi richiama la _persistence Logic_ ad eseguire l'operazione desiderata.

==== RemoveStockCmd <RemoveStockCmd>
#figure(
  image("../../assets/warehouse/RemoveStockCmd.png", width: 25%),
  caption: "Warehouse - RemoveStockCmd",
)

Questo _Command_ viene utilizzato per rappresentare la richiesta di rimozione di stock#super[G] ,e viene utilizzato dal caso d'uso#super[G] @IRemoveStockUseCase.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce a cui rimuovere stock#super[G] ;
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da rimuovere dalla merce.

==== IRemoveStockUseCase <IRemoveStockUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di rimuovere una quantità di una merce dal magazzino.

*Descrizione dei metodi dell'interfaccia:*

- *`RemoveStock(ctx: Context, cmd: RemoveStockCmd) error`*: il metodo deve permettere di rimuovere una quantità di una merce dal magazzino.

==== AddStockCmd <AddStockCmd>
#figure(
  image("../../assets/warehouse/AddStockCmd.png", width: 25%),
  caption: "Warehouse - AddStockCmd",
)

Questo _Command_ viene utilizzato per rappresentare la richiesta di aggiunta di stock#super[G] ,e viene utilizzato dal caso d'uso#super[G] @IAddStockUseCase.

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce a cui aggiungere stock#super[G] ;
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da aggiungere alla merce.


==== IAddStockUseCase <IAddStockUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di aggiungere una quantità di una merce al magazzino.

*Descrizione dei metodi dell'interfaccia:*

- *`AddStock(ctx: Context, cmd: AddStockCmd) error`*: il metodo deve permettere di aggiungere una quantità di una merce al magazzino.

==== ManageStockService

Si occupa di gestire la _business logic_ per l'aggiunta e la rimozione di stock#super[G] nel microservizio _Warehouse_#super[G].

*Descrizione degli attributi della struttura:*

- *`createStockUpdatePort ICreateStockUpdatePort`*: vedere la descrizione alla @ICreateStockUpdatePort;
- *`getGoodPort IGetGoodPort`*: vedere la descrizione alla @IGetGoodPort;
- *`getStockPort IGetStockPort`*: vedere la descrizione alla @IGetStockPort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewManageStockService(createStockUpdatePort: ICreateStockUpdatePort, getGoodPort: IGetGoodPort, getStockPort: IGetStockPort) *ManageStockService`*: Costruttore della struttura. Le porte devono essere fornite come parametri al costruttore;

- *`RemoveStock(ctx: Context, cmd: RemoveStockCmd) error`*: prende un _Command_ per la richiesta di rimozione di stock#super[G] e utilizza la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione;

- *`AddStock(ctx: Context, cmd: AddStockCmd) error`*: prende un _Command_ per la richiesta di aggiunta di stock#super[G] e utilizza la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione.

==== AddStockRequestDTO <AddStockRequestDTO>
#figure(
  image("../../assets/warehouse/AddStockRequestDTO.png", width: 25%),
  caption: "Warehouse - AddStockRequestDTO",
)

Questo DTO viene utilizzato per rappresentare la richiesta di aggiunta di stock#super[G] ,e viene utilizzato dal controller @StockController

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce a cui aggiungere stock#super[G] ;
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da aggiungere alla merce.

==== RemoveStockRequestDTO <RemoveStockRequestDTO>
#figure(
  image("../../assets/warehouse/RemoveStockRequestDTO.png", width: 25%),
  caption: "Warehouse - RemoveStockRequestDTO",
)

Questo DTO viene utilizzato per rappresentare la richiesta di rimozione di stock#super[G] ,e viene utilizzato dal controller @StockController

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'id della merce da cui rimuovere stock#super[G] ;
- *`Quantity int64`*: rappresenta la quantità di stock#super[G] da rimuovere dalla merce.

==== StockController <StockController>

Lo *StockController* gestisce l'_application logic_ per le operazioni di aggiunta e rimozione di stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`broker NatsMessageBroker`*: rappresenta il broker di messaggistica NATS#super[G] utilizzato per ricevere i messaggi;
- *`addStockUseCase IAddStockUseCase`*: rappresenta il caso d'uso#super[G] per l'aggiunta di stock#super[G] ;
- *`removeStockUseCase IRemoveStockUseCase`*: rappresenta il caso d'uso#super[G] per la rimozione di stock#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockController(broker: NatsMessageBroker, addStockUseCase: IAddStockUseCase, removeStockUseCase: IRemoveStockUseCase) *StockController`*: costruttore della struttura. Inizializza gli attributi `broker`, `addStockUseCase` e `removeStockUseCase` con i valori passati come parametri;

- *`RemoveStockHandler(ctx: Context, msg: Msg) error`*: gestisce i messaggi per la rimozione di stock#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente;

- *`AddStockHandler(ctx: Context, msg: Msg) error`*: gestisce i messaggi per l'aggiunta di stock#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== StockUpdateCmd <StockUpdateCmd>

#figure(
  image("../../assets/warehouse/StockUpdateCmd.png", width: 30%),
  caption: "Warehouse - StockUpdateCmd",
)

Rappresenta il comando per aggiornare lo stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`ID string`*: rappresenta l'identificativo univoco del comando di aggiornamento dello _stock_#super[G] ;
- *`Type string`*: rappresenta il tipo di aggiornamento dello _stock_#super[G] ;
- *`OrderID string`*: rappresenta l'identificativo dell'ordine associato all'aggiornamento dello _stock_#super[G] ;
- *`TransferID string`*: rappresenta l'identificativo del trasferimento#super[G] associato all'aggiornamento dello _stock_#super[G] ;
- *`Timestamp int64`*: rappresenta il _timestamp_ dell'aggiornamento dello _stock_#super[G] ;
- *`Goods []StockUpdateGood`*: rappresenta una lista di oggetti `StockUpdateGood` che contengono le informazioni sulle merci aggiornate.

==== StockUpdateGood

#figure(
  image("../../assets/warehouse/StockUpdateGood.png", width: 35%),
  caption: "Warehouse - StockUpdateGood",
)

Rappresenta una merce aggiornata nel comando di aggiornamento dello stock#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodID string`*: rappresenta l'identificativo della merce aggiornata;
- *`Quantity int64`*: rappresenta la nuova quantità della merce aggiornata;
- *`Delta int64`*: rappresenta la differenza di quantità della merce rispetto all'ultimo stato.

==== IApplyStockUpdateUseCase <IApplyStockUpdateUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un aggiornamento dello _stock_#super[G].

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyStockUpdate(ctx: Context, cmd: StockUpdateCmd) error`*: il metodo deve permettere di applicare un aggiornamento dello stock#super[G].

==== ApplyStockUpdateService

Si occupa di gestire la _business logic_ per l'applicazione degli aggiornamenti dello stock#super[G] nel microservizio _Warehouse_#super[G].

*Descrizione degli attributi della struttura:*

- *`applyStockUpdatePort IApplyStockUpdatePort`*: vedere la descrizione alla @IApplyStockUpdatePort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewApplyStockUpdateService(applyStockUpdatePort: IApplyStockUpdatePort) *ApplyStockUpdateService`*: Costruttore della struttura. La porta deve essere fornita come parametro al costruttore;

- *`ApplyStockUpdate(ctx: Context, cmd: StockUpdateCmd) error`*: prende un _Command_ per la richiesta di applicazione di un aggiornamento dello stock#super[G] e utilizza la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione.

==== StockUpdateListener

Lo *StockUpdateListener* gestisce l'_application logic_ per l'ascolto degli aggiornamenti dello stock#super[G] nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`applyStockUpdateUseCase IApplyStockUpdateUseCase`*: rappresenta il caso d'uso#super[G] per l'applicazione degli aggiornamenti dello stock#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewStockUpdateListener(applyStockUpdateUseCase: IApplyStockUpdateUseCase) *StockUpdateListener`*: costruttore della struttura. Inizializza l'attributo `applyStockUpdateUseCase` con il valore passato come parametro;

- *`ListenStockUpdate(ctx: Context, msg: Msg) error`*: gestisce i messaggi per l'applicazione degli aggiornamenti dello stock#super[G]. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== CatalogUpdateCmd <CatalogUpdateCmd>
#figure(
  image("../../assets/warehouse/CatalogUpdateCmd.png", width: 25%),
  caption: "CatalogUpdateCmd",
)

Rappresenta il comando per aggiornare le informazioni di un catalogo nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`GoodId string`*: rappresenta l'identificativo della merce da aggiornare;
- *`Name string`*: rappresenta il nuovo nome della merce;
- *`Description string`*: rappresenta la nuova descrizione della merce.

==== IApplyCatalogUpdateUseCase <IApplyCatalogUpdateUseCase>

Rappresenta l'interfaccia che permette all'_application logic_ di comunicare alla _business logic_ la volontà di applicare un aggiornamento del catalogo.

*Descrizione dei metodi dell'interfaccia:*

- *`ApplyCatalogUpdate(ctx: Context, cmd: CatalogUpdateCmd) error`*: il metodo deve permettere di applicare un aggiornamento del catalogo.

==== ApplyCatalogUpdateService

Si occupa di gestire la _business logic_ per l'applicazione degli aggiornamenti del catalogo nel microservizio _Warehouse_#super[G].

*Descrizione degli attributi della struttura:*

- *`applyCatalogUpdatePort IApplyCatalogUpdatePort`*: vedere la descrizione alla @IApplyCatalogUpdatePort.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewApplyCatalogUpdateService(applyCatalogUpdatePort: IApplyCatalogUpdatePort) *ApplyCatalogUpdateService`*: Costruttore della struttura. La porta deve essere fornita come parametro al costruttore;

- *`ApplyCatalogUpdate(ctx: Context, cmd: CatalogUpdateCmd) error`*: prende un _Command_ per la richiesta di applicazione di un aggiornamento del catalogo e utilizza la porta adibita allo scopo per svolgere la richiesta. Ritorna quindi l'esito dell'operazione.

==== CatalogListener

Il *CatalogListener* gestisce l'_Application Logic_ per l'ascolto degli aggiornamenti del catalogo nel microservizio *Warehouse*#super[G].

*Descrizione degli attributi della struttura:*

- *`applyCatalogUpdateUseCase IApplyCatalogUpdateUseCase`*: rappresenta il caso d'uso#super[G] per l'applicazione degli aggiornamenti del catalogo.

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewCatalogListener(applyCatalogUpdateUseCase: IApplyCatalogUpdateUseCase) *CatalogListener`*: costruttore della struttura. Inizializza l'attributo `applyCatalogUpdateUseCase` con il valore passato come parametro.

- *`ListenGoodUpdate(ctx: Context, msg: Msg) error`*: gestisce i messaggi per l'applicazione degli aggiornamenti del catalogo. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== HealthCheckController
#figure(
  image("../../assets/warehouse/HealthCheckController.png", width: 55%),
  caption: "Warehouse - HealthCheckController",
)

Il *HealthCheckController* gestisce l'_Application Logic_ per le operazioni di controllo dello stato di salute del microservizio *Warehouse*#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewHealthCheckController() *HealthCheckController`*: costruttore della struttura. Inizializza gli attributi necessari per il controllo dello stato di salute;

- *`PingHandler(ctx: Context, msg: Msg) error`*: gestisce le richieste di controllo dello stato di salute del microservizio. Ritorna un errore in caso l'operazione non venga completata correttamente.

==== ReservationController
#figure(
  image("../../assets/warehouse/ReservationController.png", width: 75%),
  caption: "Warehouse - ReservationController",
)

Il *ReservationController* gestisce l'_Application Logic_ per le operazioni di creazione delle prenotazioni nel microservizio *Warehouse*#super[G].

*Descrizione dei metodi invocabili dalla struttura:*

- *`NewReservationController() *ReservationController`*: costruttore della struttura. Inizializza gli attributi necessari per la gestione delle prenotazioni;

- *`CreateReservationHandler(ctx: Context, msg: Msg) error`*: gestisce le richieste di creazione delle prenotazioni. Ritorna un errore in caso l'operazione non venga completata correttamente.

