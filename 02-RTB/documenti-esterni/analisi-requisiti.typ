#import "../../lib/importantdocs.typ": *
#import "../../lib/use-case.typ": *
#let ver = [0.28.0]

#show: body => importantdocs(
  data: datetime(day: 26, month: 01, year: 2025),
  tipo: [esterno],
  versione: ver,
  versioni: (
    (
      vers: "0.28.0",
      date: datetime(day: 26, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Correzioni minori e approfondimento requisiti funzionali.",
    ),
    (
      vers: "0.27.0",
      date: datetime(day: 17, month: 01, year: 2025),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Completato l'inserimento dei diagrammi per i Casi d'Uso relativi al Backend. Completati i requisiti e la sezione Riassunto",
    ),
    (
      vers: "0.26.0",
      date: datetime(day: 15, month: 01, year: 2025),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Terminati i Casi d'Uso relativi alle attività del Backend "
        + [(da @UC88 a @UC92)]
        + ". Cambiata la numerazione dal template per una corretta visualizzazione",
    ),
    (
      vers: "0.25.0",
      date: datetime(day: 15, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redatti Casi d'Uso riguardanti sincronizzazione merci, ordini e trasferimenti" + [(da @UC73 a @UC87)],
    ),
    (
      vers: "0.24.0",
      date: datetime(day: 12, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Proseguo sezione Requisiti: descritti tutti i requisiti obbligatori.",
    ),
    (
      vers: "0.23.0",
      date: datetime(day: 12, month: 01, year: 2025),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Terminata la redazione dei Casi d'Uso riguardanti la creazione e la modifica degli utenti, la ricezione dei tentativi di accesso e dell'eliminazione degli utenti "
        + [(da @UC67 a @UC72)],
    ),
    (
      vers: "0.22.0",
      date: datetime(day: 11, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Iniziata redazione sezione Requisiti",
    ),
    (
      vers: "0.21.0",
      date: datetime(day: 09, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "terminati Casi d'Uso relativi a backup del Sistema locale. Realizzati UC relativi a controllo accessi al Sistema "
        + [(da @UC61 a @UC66.1)],
    ),
    (
      vers: "0.20.0",
      date: datetime(day: 08, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Realizzati primi Casi d'Uso relativi a backup del Sistema locale " + [da @UC58 a @UC60],
    ),
    (
      vers: "0.19.0",
      date: datetime(day: 03, month: 01, year: 2025),
      autore: p.marco,
      verifica: p.samuele,
      descr: "completati diagrammi per ogni singolo Caso d'Uso. Migliorie generali",
    ),
    (
      vers: "0.18.0",
      date: datetime(day: 27, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Sistemazione diagrammi sino ad UC29.",
    ),
    (
      vers: "0.17.0",
      date: datetime(day: 26, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Sistemazione diagrammi sino ad UC15.",
    ),
    (
      vers: "0.16.0",
      date: datetime(day: 23, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturato ulteriormente l'indice per una maggiore fruibilità",
    ),
    (
      vers: "0.15.0",
      date: datetime(day: 15, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Ristrutturato l'indice per una sua corretta visualizzazione e fruibilità. Inseriti Casi d'Uso riguardanti gli ordini eseguiti "
        + [(da @UC56 a @UC57.1.1.1)],
    ),
    (
      vers: "0.14.0",
      date: datetime(day: 13, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Correzioni minori alla parte di introduzione del documento.",
    ),
    (
      vers: "0.13.0",
      date: datetime(day: 13, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo soglia minima e inclusioni/estensioni " + [(da @UC48 a @UC50)],
    ),
    (
      vers: "0.12.0",
      date: datetime(day: 13, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redatti Casi d'Uso relativi alle richieste al secondo per microservizi e Casi d'Uso correlati "
        + [(da @UC43 a @UC43.1.2)],
    ),
    (
      vers: "0.11.0",
      date: datetime(day: 12, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redatti Casi d'Uso relativi alla visualizzazione della singola notifica di rifornimento e Casi d'Uso riguardanti i trasferimenti, con inclusioni ed estensioni (da "
        + [@UC23 a @UC32.3.1.1 e da @UC39 a @UC39.2.1.1]
        + ")",
    ),
    (
      vers: "0.10.0",
      date: datetime(day: 12, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo all'esportazione ordini eseguiti e report di inventario ("
        + [da @UC44 a @UC47)],
    ),
    (
      vers: "0.9.0",
      date: datetime(day: 12, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo all'aggiornamento delle quantità disponibili di una merce (stock) e redatto Casi d'Uso relativi alla creazione/visualizzazione di una merce globale con rispettive inclusioni/estensioni (da "
        + [@UC18 a @UC22.1 e da @UC51 a @UC55]
        + ")",
    ),
    (
      vers: "0.8.0",
      date: datetime(day: 11, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Redatto Caso d'Uso relativo alla visualizzazione delle notifiche di rifornimento e Casi d'Uso relativi all'accettazione e al rifiuto di una notifica di rifornimento ("
        + [da @UC33 a @UC38 e da @UC40 e @UC42]
        + ")",
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 10, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Aggiunti Casi d'Uso su visualizzazione ordini non confermati con relative inclusioni/estensioni (fino a "
        + [@UC17]
        + ")",
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 09, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Aggiunti Casi d'Uso su cancellazione/conferma ordine non confermato e visualizzazione ordini sino e relative inclusioni/estensioni (fino a "
        + [@UC15]
        + ")",
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 08, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Aggiunti Casi d'Uso sulla creazione di un ordine, sull'aggiunta di merci ad un ordine e rispettive inclusioni/estensioni (fino a "
        + [@UC9]
        + ")",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 07, month: 12, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Redazione Capitolo 2 e Sezioni 3.1 e 3.2. Aggiunti Casi d'Uso relativi all'autenticazione (fino a "
        + [@UC2]
        + ")",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 05, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Rivoluzionata la struttura del documento secondo il template creato appositamente",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 13, month: 11, year: 2024),
      autore: p.sara,
      verifica: p.lorenzo,
      descr: "Aggiornamento indice - Aggiornamento contenuto: sezione Introduzione",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.loris,
      verifica: p.lorenzo,
      descr: "Creazione struttura e template documento",
    ),
  ),
  stato: [In redazione],
  responsabile: ((p.loris),),
  verificatore: ((p.samuele), (p.lorenzo)),
  redattori: (
    (p.matteo),
    (p.sara),
    (p.loris),
    (p.marco),
  ),
  descrizione: [Questo documento contiene l'_Analisi dei Requisiti_ descritta dal gruppo _ALimitedGroup_ per il capitolato C6 proposto da #M31],
  titolo: "Analisi dei Requisiti",
  body,
)

= Introduzione
== Scopo del documento

Il presente documento di _Analisi dei Requisiti#super[g]_ ha lo scopo di definire in maniera precisa e dettagliata i requisiti funzionali#super[g] e non funzionali del Sistema software da sviluppare.

Per tale scopo, il documento include una descrizione approfondita dei Casi d'Uso, che sono fonte dei requisiti infine elencati.
Verranno utilizzati, per agevolare la comprensione, i *Diagrammi dei Casi d'Uso* per visualizzare le interazioni tra attori e Sistema.

Il presente documento rappresenterà il riferimento di base per la progettazione, l'implementazione e il collaudo del prodotto finale, garantendo che il Sistema realizzato soddisfi pienamente le esigenze e le aspettative del committente.

I requisiti identificati sono classificati in:
- *Obbligatori*: irrinunciabili e imprescindibili per il corretto funzionamento del Sistema;
- *Desiderabili*: non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;
- *Opzionali*: relativamente utili oppure contrattabili per essere implementati in futuro.

Il documento di _Analisi dei Requisiti#super[g]_ viene redatto dagli _Analisti_ del team di progetto ed è rivolto ai seguenti principali destinatari:

- Il *_Committente_*, che potrà verificare che i requisiti siano stati correttamente interpretati e documentati secondo le sue specifiche;
- Il _Team di_ *_Progettisti_* e di *_Programmatori_*, che utilizzerà questo documento come guida fondamentale per la realizzazione del Sistema software;
- Il _Team_ di *_Verificatori_*, che baserà sull'Analisi dei Requisiti#super[g] la definizione dei casi di Test e la verifica del corretto funzionamento del prodotto.

Inoltre, il documento potrà essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori e Responsabili di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del Sistema.

== Prospettiva del prodotto
Il prodotto che _ALimitedGroup_ si promette di sviluppare è un Sistema efficace e scalabile per la gestione di magazzini.

Nello specifico, si vuole sviluppare un Sistema che sia in grado non solo di gestire un magazzino locale, ma che sia in grado di avere in tempo reale una visione globale di tutti i magazzini connessi al Sistema.
Per questo è necessario che il prodotto sia reattivo alle molteplici operazioni effettuate in ogni magazzino, potendo, in caso di carico molto importante, scalare i propri servizi per essere in grado di mantenere la reattività.
Fondamentale per il prodotto è la fornitura agli utilizzatori di consigli di approvvigionamento merci e la messa a disposizione di opzioni dedicate al trasferimento di merci tra magazzini connessi al Sistema.

== Funzioni del prodotto
Dal punto di vista dell'utilizzatore finale, il prodotto dovrà fornire le seguenti funzionalità:

- Avere una _Command Line Interface_ per interagire con le _API_#super[g] del Sistema
- Possibilità di realizzare un ordine con prodotti disponibili sia localmente che globalmente;
- Possibilità di realizzare trasferimenti tra magazzini;
- Possibilità di ricevere suggerimenti di riassortimento quando la disponibilità locale di merce sia sotto una certa soglia;
- Possibilità di modifica della soglia per il riassortimento per ogni merce;
- Possibilità di esportare gli ordini e i report di inventario;
- Possibilità di visualizzare in tempo reale il numero di richieste per ogni Servizio del Sistema;


Rispetto a quanto originariamente scritto nel #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[*Capitolato*] i requisiti obbligatori sono stati rimodulati in base a quanto riportato nel #link("https://alimitedgroup.github.io/VE%2019-11-2024%20v1.0.0.pdf")[*Verbale Esterno*] del *19 Ottobre 2024*. Nello specifico, non sono più obbligatori:

- Il riassortimento predittivo basato su _Machine Learning_;
- Il monitoraggio della telemetria;
- Il riconoscimento di traffico anomalo;
- La creazione di una _Graphic User Interface_ (a vantaggio di _API_#super[g] con la quale la _Command Line Interface_ dovrà interagire)

Nel seguente documento saranno comunque riportati tutti i requisiti, debitamente segnando a mezzo di nomenclatura i requisiti obbligatori, desiderabili e opzionali.

== Caratteristiche dell'utente

Gli utilizzatori finali del prodotto non sono specifici: l'obiettivo è soprattutto quello di fornire una progettazione efficace che permetta al proponente #M31 di sviluppare il prodotto in maniera definitiva.

In generale è possibile dire che gli Utenti finali sono tutti coloro che hanno bisogno di un Sistema scalabile, reattivo e semplice da utilizzare per la gestione di numerosi magazzini, principalmente dunque medie e grandi imprese.

== Definizioni, acronimi e abbreviazioni
Per tutte le _definizioni_, _acronimi_ e _abbreviazioni_ utilizzati in questo documento, si faccia riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti rilevanti per il progetto.

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto \ #link("https://alimitedgroup.github.io/norme-progetto.pdf")[https://alimitedgroup.github.io/norme-progetto.pdf]
- Capitolato d'appalto C6 _Sistema di Gestione di un Magazzino Distribuito_: \ https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf
=== Riferimenti informativi
- Standard IEEE: \ https://ieeexplore.ieee.org/document/720574
- Analisi dei requisiti: \ https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf
- Diagrammi Casi d'Uso: \ https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf
- Glossario: \ #link("alimitedgroup.github.io/Glossario.pdf")[alimitedgroup.github.io/Glossario.pdf]

#pagebreak()

= Casi d'uso
== Introduzione

I casi d'uso si compongono di un grafico UML e una descrizione testuale che permetta di comprendere al meglio cosa il prodotto deve fornire.
La descrizione testuale, in particolar modo, dovrà contenere le informazioni nella tabella qui presente, salvo i casi in cui lo specifico campo non risulti irrilevante per il caso d'uso#super[g] (ad esempio, un Caso d'Uso che non prevede la possibilità di errori non avrà Scenari secondari):

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      text(fill: white)[*Campo*],
      text(fill: white)[*Descrizione*],
    ),

    [*Attori*], [Sono coloro che interagiscono attivamente con il Sistema e svolgono l'azione indicata dal Caso d'Uso],
    [*Attori secondari*], [Sono coloro che interagiscono passivamente con il Sistema],
    [*Precondizioni*],
    [Lista di elementi che sono *necessari* affinché l'Attore possa compiere l'azione indicata dal caso d'uso],

    [*Postcondizioni*],
    [Lista di elementi che descrivono come il Sistema risulta essere internamente cambiato dopo che l'Attore ha effettuato l'azione prevista dal Caso d'Uso],

    // TODO: cosa si intende con descrizione "ragionevole"?
    [*Scenario principale*],
    [Descrizione ragionevole delle operazioni che l'attore deve fare per compiere l'azione descritta dal Caso d'Uso],

    [*Scenario secondario*],
    [Descrizione ragionevole degli eventi che possono accadere qualora una delle operazioni descritte nello *Scenario principale* non vada a buon fine],

    [*Inclusioni*],
    [Casi d'Uso ulteriori che l'Attore deve compiere per realizzare il Caso d'Uso attualmente descritto],

    [*Estensioni*],
    [Casi d'Uso ulteriori che possono realizzarsi durante l'esecuzione delle operazioni del Caso d'Uso principale],

    [*Trigger*],
    [Motivazioni che portano l'Attore a svolgere l'azione descritta dal Caso d'Uso. Non sempre disponibile in quanto il Caso d'Uso potrebbe essere incluso da un altro caso d'uso "principale"],
  ),
  caption: [Campi della descrizione testuale dei Casi d'Uso],
)
#pagebreak()
== Attori

Di seguito sono esposti gli attori utilizzati:
#v(1em)

#figure(
  image("../../assets/diagrams/attori.png", width: 50%),
  caption: [Diagramma degli attori principali],
)
#v(1em)

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      text(fill: white)[*Attore*],
      text(fill: white)[*Descrizione*],
    ),

    [*Dispositivo GSM*], [Rappresenta un dispositivo GSM registrato al Sistema e in grado di ricevere SMS],
    [*Client Email*], [Rappresenta un Client Email registrato al Sistema],
    [*Utente*], [Rappresenta un utente che vuole accedere al Sistema],
    [*Admin Locale*],
    [Rappresenta una tipologia di utente che ha eseguito l'accesso al Sistema con interessi nel singolo magazzino che superano quelle del normale utilizzatore],

    [*Admin Globale*],
    [Rappresenta una tipologia di utente che ha eseguito l'accesso al Sistema con interesse alla situazione globale (dunque comprendente tutti i magazzini)],

    [*Cliente*],
    [Rappresenta una tipologia di utente che ha eseguito l'accesso al Sistema con interesse nel singolo magazzino],

    [*Scheduler*],
    [Rappresenta uno Scheduler, la componente del Sistema che periodicamente avvia operazioni di sincronizzazione],
  ),
  caption: [Descrizione degli attori],
)

Vengono inoltre utilizzati i seguenti attori secondari:

#figure(
  image("../../assets/diagrams/attori-secondari.png", width: 7%),
  caption: [Diagramma degli attori secondari],
)

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      text(fill: white)[*Attore*],
      text(fill: white)[*Descrizione*],
    ),

    [*LLM*],
    [Rappresenta un _Large Language Model_ che fornisce consigli di rifornimento sfruttando il _Machine Learning_],
  ),
  caption: [Attori secondari],
)

== Lista casi d'uso
=== UC1: Autenticazione <UC1>
#use-case(
  attore: "Utente",
  pre: [- Il Sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema],
  post: [- L'utente ha eseguito l'accesso al Sistema ed è dallo stesso riconosciuto come Cliente, come Admin Locale o come Admin Globale],
  scenari: [
    - L'Utente seleziona la tipologia di utente $arrow$ @UC1.1[Vedi UC1.1, Sez.]
    - L'Utente inserisce l'Username $arrow$ @UC1.2[Vedi UC1.2, Sez.]
    - L'Utente inserisce la Password $arrow$ @UC1.3[Vedi UC1.3, Sez.]
  ],
  scenari_alternativi: [
    - L'utente inserisce Username, Password o tipologia di utente errati $arrow$ @UC2[Vedi UC2, Sez.]
  ],
  inclusioni: [
    - @UC1.1[UC1.1, Sez.]
    - @UC1.2[UC1.2, Sez.]
    - @UC1.3[UC1.3, Sez.]
  ],
  estensioni: [
    @UC2[UC2, Sez.]
  ],
  trigger: "L'Utente vuole autenticarsi al Sistema",
)[
  #use-case-diagram("1", "UC1 - Scelta tipologia utente")
]

#pagebreak()
Il Caso d'Uso UC1 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram(
  "1-incl",
  "Inclusioni del Caso d'Uso n.1: UC1.1, UC1.2, UC1.3",
)

==== UC1.1: Scelta tipologia utente <UC1.1>

#use-case(
  attore: "Utente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema,
    - L'Utente ha selezionato dal menu di voler effettuare l'autenticazione al Sistema
    - Il Sistema non conosce la tipologia di utente dell'Utente
  ],
  post: [
    - Il Sistema riceve la tipologia di utente in cui l'Utente si vuole autenticare
  ],
  scenari: [
    - L'Utente procede ad inserire un'opzione tra Admin Locale, Admin Globale o Cliente
  ],
  trigger: "L'Utente vuole autenticarsi al Sistema",
)[]

#pagebreak()
==== UC1.2: Inserimento Username <UC1.2>

#use-case(
  attore: "Utente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema,
    - L'Utente ha selezionato dal menu di voler effettuare l'autenticazione al Sistema
    - Il Sistema non conosce l'Username dell'Utente
  ],
  post: [
    - Il Sistema riceve l'Username con la quale l'Utente si vuole autenticare al Sistema
  ],
  scenari: [
    - L'Utente procede ad inserire il proprio Username
  ],
  trigger: "L'Utente vuole autenticarsi al Sistema",
)[]

==== UC1.3: Inserimento Password <UC1.3>

#use-case(
  attore: "Utente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'Utente non è autenticato con il Sistema,
    - L'Utente ha selezionato dal menu di voler effettuare l'autenticazione al Sistema
    - Il Sistema non conosce la Password dell'Utente
  ],
  post: [
    - Il Sistema riceve la Password con cui l'Utente si vuole autenticare
  ],
  scenari: [
    - L'utente procede ad inserire la propria Password
  ],
  trigger: "L'Utente vuole autenticarsi al Sistema",
)[]

=== UC2: Autenticazione non riuscita <UC2>
#use-case(
  attore: "Utente",
  pre: [- Il Sistema è attivo, in modalità online o offline;
    - L'attore principale non è autenticato al Sistema (@UC1[Vedi UC1, Sez.])
    - L'attore principale ha immesso in fase di autenticazione uno Username o una Password non corretta oppure ha selezionato una tipologia di utente sbagliata],
  post: [- Il Sistema annulla il tentativo di autenticazione
    - Il Sistema mostra un errore a schermo],
  scenari: [
    - Il Sistema ha ricevuto Username, Password e tipologia di utente, ma non è riuscito a verificare tali credenziali
  ],
)[]

=== UC3: Creazione di un ordine da confermare <UC3>
#use-case(
  attore: "Cliente",
  pre: [- Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente],
  post: [- Il Sistema memorizza l'esistenza di un nuovo ordine non confermato con le relative informazioni],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa alla creazione di un nuovo ordine da confermare
    - Il Cliente inserisce il nome del nuovo ordine da confermare $arrow$ @UC3.1[Vedi UC3.1, Sez.]
    - Il Cliente inserisce il nominativo del destinatario del nuovo ordine da confermare $arrow$ @UC3.2[Vedi UC3.2, Sez.]
    - Il Cliente inserisce l'indirizzo di spedizione del nuovo ordine da confermare $arrow$ @UC3.3[Vedi UC3.3, Sez.]
  ],
  trigger: [Il Cliente vuole creare un nuovo ordine da confermare],
  inclusioni: [
    - UC3.1 @UC3.1[Sez.]
    - UC3.2 @UC3.2[Sez.]
    - UC3.3 @UC3.3[Sez.]
  ],
)[
  #use-case-diagram("3", "UC3 - Creazione di un ordine da confermare")
]

Il Caso d'Uso UC3 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("3-incl", "Inclusioni del Caso d'Uso n.3: UC3.1, UC3.2, UC3.3")

==== UC3.1: Inserisci nome ordine <UC3.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler creare un nuovo ordine non confermato
    - Il Sistema non conosce il nome del nuovo ordine da confermare
  ],
  post: [
    - Il Sistema riceve il nome con cui il Cliente vuole che il nuovo ordine da confermare sia identificato
  ],
  scenari: [
    - Il Cliente procede ad inserire il nome del nuovo ordine non confermato
  ],
  trigger: "Il Cliente vuole creare un nuovo ordine da confermare",
)[]

==== UC3.2: Inserisci nominativo del destinatario <UC3.2>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler creare un nuovo ordine non confermato
    - Il Sistema non conosce il nominativo del destinatario del nuovo ordine da confermare
  ],
  post: [
    - Il Sistema riceve il nominativo del destinatario del nuovo ordine da confermare sia identificato
  ],
  scenari: [
    - Il Cliente procede ad inserire il nominativo del destinatario del nuovo ordine non confermato
  ],
  trigger: "Il Cliente vuole creare un nuovo ordine da confermare",
)[]

==== UC3.3: Inserisci indirizzo di spedizione <UC3.3>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler creare un nuovo ordine non confermato
    - Il Sistema non conosce l'indirizzo di spedizione del nuovo ordine da confermare
  ],
  post: [
    - Il Sistema riceve l'indirizzo di spedizione del nuovo ordine da confermare sia identificato
  ],
  scenari: [
    - Il Cliente procede ad inserire l'indirizzo di spedizione del nuovo ordine non confermato
  ],
  trigger: "Il Cliente vuole creare un nuovo ordine da confermare",
)[]

=== UC4: Aggiunta di una merce: ordine non confermato <UC4>
//NOTA: l'ordine globale e locale sono i medesimi, cambia solo questo UC4 che tuttavia rimane sostanzialmente lo stesso per l'ordine locale o globale, dunque nei requisiti si può derivare sia la selezione locale che quella globale
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [
    - Il Sistema aggiunge all'ordine selezionato le informazioni relative alla merce scelta e alla sua quantità
  ],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa all'aggiunta di una merce ad un ordine non confermato
    - Il Cliente seleziona la tipologia di merce da aggiungere all'ordine non confermato $arrow$ @UC5[Vedi UC5, Sez.]
    - Il Cliente seleziona la quantità di tale merce da aggiungere all'ordine non confermato $arrow$ @UC6[Vedi UC6, Sez.]
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di aggiunta $arrow$ @UC9[Vedi UC9, Sez.]
  ],
  scenari_alternativi: [
    - Il Cliente seleziona una merce non valida e/o una quantità non disponibile $arrow$ @UC7[Vedi UC7, Sez.]
    - Il Cliente cerca di aggiungere merce ad un ordine non confermato ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC8[Vedi UC8, Sez.]
  ],
  inclusioni: [
    - UC5 @UC5[Sez.]
    - UC6 @UC6[Sez.]
    - UC9 @UC9[Sez.]
  ],
  estensioni: [
    - UC7 @UC7[Sez.]
    - UC8 @UC8[Sez.]
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine non confermato",
)[
  #use-case-diagram("4", "UC4 - Aggiunta di una merce ad un ordine non confermato") \ \
]

Il Caso d'Uso UC4 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("4-incl", "Inclusioni del Caso d'Uso n.4: UC5, UC6 e UC9")

=== UC5: Scelta merce da aggiungere: ordine/trasferimento non confermato <UC5>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'attore principale ha selezionato dal menu di voler aggiungere merce ad un ordine o ad un trasferimento non confermato
    - Il Sistema non conosce la merce che il Cliente vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve l'ID della merce da aggiungere all'ordine o al trasferimento non confermato
  ],
  scenari: [
    - Il Cliente procede ad inserire l'ID della merce che vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine o ad un trasferimento non confermato",
)[]

#pagebreak()

=== UC6: Scelta q.tà merce da aggiungere: ordine/trasferimento non confermato <UC6>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente ha selezionato dal menu di voler aggiungere merce ad un ordine o ad un trasferimento non confermato
    - Il Sistema non conosce la quantità della tipologia di merce che il Cliente vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve la quantità della tipologia di merce da aggiungere all'ordine o al trasferimento non confermato
  ],
  scenari: [
    - Il Cliente procede ad inserire la quantità della tipologia di merce che vuole aggiungere all'ordine o al trasferimento non confermato
  ],
  trigger: "Il Cliente vuole aggiungere merce ad un ordine o ad un trasferimento non confermato",
)[]

=== UC7: Aggiunta merce non valida <UC7>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'attore principale ha eseguito l'operazione di aggiunta di una merce ad un ordine o ad un trasferimento non confermato
  ],
  post: [
    - L'operazione di aggiunta di una merce ad un ordine o ad un trasferimento non confermato viene annullata
  ],
  scenari: [
    - L'attore principale ha scelto la tipologia di merce da aggiungere all'ordine o al trasferimento non confermato, la quantità e l'ordine o trasferimento a cui aggiungere tale merce ma il Sistema ha verificato che la merce selezionata non esiste o eccede la quantità disponibile nel magazzino mittente
  ],
)[]

#pagebreak()

=== UC8: Nessun ordine non confermato disponibile <UC8>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu un'opzione che riguarda un ordine non confermato
  ],
  post: [
    - L'operazione riguardante un ordine non confermato viene annullata
  ],
  scenari: [
    - Il Cliente ha avviato un'operazione riguardante un ordine non confermato ma il Sistema non ha memorizzato alcun ordine non confermato per l'utente corrente
  ],
)[]


=== UC9: Seleziona ordine non confermato <UC9>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu un'opzione che riguarda un ordine non confermato
    - Il Sistema non conosce l'ordine non confermato su cui il Cliente vuole effettuare un'operazione
  ],
  post: [
    - Il Sistema riceve l'ordine non confermato sul quale il Cliente vuole operare
  ],
  scenari: [
    - L'utente procede ad inserire l'identificativo dell'ordine sul quale vuole eseguire l'operazione
  ],
  trigger: "Il Cliente vuole eseguire un'operazione su un ordine non confermato",
)[]

=== UC10: Cancella ordine non confermato <UC10>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [
    - Il Sistema cancella un ordine non confermato registrato nel Sistema
  ],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa alla cancellazione di un ordine non confermato
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di cancellazione $arrow$ @UC9[Vedi UC9, Sez.]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di cancellare un ordine non confermato ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC8[Vedi UC8, Sez.]
  ],
  inclusioni: [
    - UC9 @UC9[Sez.]
  ],
  estensioni: [
    - UC8 @UC8[Sez.]
  ],
  trigger: "Il Cliente vuole cancellare un ordine non confermato",
)[
  #use-case-diagram("10", "UC10 - Cancella ordine non confermato") \ \
]

Il Caso d'Uso UC10 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("10-incl", "Inclusione del Caso d'Uso n.10: UC9")
Per maggiori informazioni è possibile consultare la descrizione del Caso d'Uso sopra presente alla @UC9.

=== UC11: Conferma ordine non confermato <UC11>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [
    - Il Sistema conferma un ordine non confermato registrato nel Sistema e aggiorna le scorte di merci disponibili
  ],
  scenari: [
    - Il Cliente seleziona dal menu principale l'opzione relativa alla conferma di un ordine non confermato
    - Il Cliente seleziona l'ordine non confermato sulla quale effettuare l'operazione di conferma $arrow$ @UC9[Vedi UC9, Sez.]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di confermare un ordine non confermato ma la merce selezionata non esiste più oppure la quantità immessa eccede le risorse a disposizione $arrow$ @UC7[Vedi UC7, Sez.]
    - Il Cliente cerca di confermare un ordine non confermato ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC8[Vedi UC8, Sez.]
  ],
  inclusioni: [
    - UC9 @UC9[Sez.]
  ],
  estensioni: [
    - UC7 @UC7[Sez.]
    - UC8 @UC8[Sez.]
  ],
  trigger: "Il Cliente vuole confermare un ordine non confermato",
)[
  #use-case-diagram("11", "UC11 - Conferma ordine non confermato")
]

Il Caso d'Uso UC11 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("11-incl", "Inclusione del Caso d'Uso n.11: UC9")
Per maggiori informazioni è possibile consultare la descrizione del Caso d'Uso sopra presente alla @UC9.

=== UC12: Visualizza elenco ordini non confermati per l'utente corrente <UC12>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Il Sistema mostra a schermo l'elenco degli ordini non confermati per l'utente corrente],
  scenari: [
    - Il Cliente seleziona dal menu la voce relativa alla visualizzazione degli ordini non confermati registrati nel Sistema
    - Il Cliente visualizza a schermo la lista degli ordini non confermati registrati nel Sistema per l'utente corrente $arrow$ @UC12.1[Vedi UC12.1, Sez.]
  ],
  scenari_alternativi: [
    - Il Cliente cerca di visualizzare gli ordini non confermati ma nessun ordine non confermato è registrato nel Sistema per l'utente corrente $arrow$ @UC8[Vedi UC8, Sez.]
  ],
  inclusioni: [
    - UC12.1 @UC12.1[Sez.]
  ],
  estensioni: [
    - UC8 @UC8[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini non confermati registrati nel Sistema per l'utente corrente",
)[
  #use-case-diagram("12", "UC12 - Visualizza elenco ordini non confermati")
]

Il Caso d'Uso UC12 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("12-incl", "Inclusione del Caso d'Uso n.12: UC12.1")
Il presente Caso d'Uso presenta inoltre ulteriori due inclusioni, anch'esse qui di seguito descritte.

==== UC12.1: Visualizza elemento lista ordini non confermati <UC12.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini non confermati registrati nel Sistema per l'utente corrente
  ],
  post: [Il Sistema mostra, nel singolo elemento della lista ordini non confermati, ID, data creazione e nome dell'ordine],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - l'ID dell'ordine $arrow$ @UC13[Vedi UC13, Sez.]
      - La data di creazione dell'ordine $arrow$ @UC14[Vedi UC14, Sez.]
      - Il nome dell'ordine $arrow$ @UC15[Vedi UC15, Sez.]
  ],
  inclusioni: [
    - UC13 @UC13[Sez.]
    - UC14 @UC14[Sez.]
    - UC15 @UC15[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini non confermati registrati nel Sistema per l'utente corrente",
)[]

=== UC13: Visualizza ID ordine <UC13>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente o un ordine specifico nel dettaglio
  ],
  post: [Viene visualizzato l'ID dell'ordine],
  scenari: [
    - Viene visualizzato l'ID dell'ordine
  ],
)[]

=== UC14: Visualizza data creazione ordine <UC14>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente o un ordine specifico nel dettaglio
  ],
  post: [Viene visualizzata la data di creazione dell'ordine],
  scenari: [
    - Viene visualizzato la data di creazione dell'ordine
  ],
)[]

=== UC15: Visualizza nome ordine <UC15>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini registrati nel Sistema per l'utente corrente o un ordine specifico nel dettaglio
  ],
  post: [Viene visualizzato il nome dell'ordine],
  scenari: [
    - Viene visualizzato il nome dell'ordine
  ],
)[]

=== UC16: Visualizza ordine non confermato <UC16>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato ID, data creazione, nome e lista merci dell'ordine],
  scenari: [
    - Il Cliente seleziona da una lista di ordini non confermati la visualizzazione di un ordine specifico
    - Il Cliente visualizza del suddetto ordine:
      - ID dell'ordine $arrow$ @UC13[Vedi UC13, Sez.]
      - Data creazione dell'ordine non confermato $arrow$ @UC14[Vedi UC14, Sez.]
      - Nome dell'ordine $arrow$ @UC15[Vedi UC15, Sez.]
      - Lista delle merci $arrow$ @UC16.1[Vedi UC16.1, Sez.]
  ],
  inclusioni: [
    - UC13 @UC13[Sez.]
    - UC14 @UC14[Sez.]
    - UC15 @UC15[Sez.]
    - UC16.1 @UC16.1[Sez.]
  ],
  trigger: "Il Cliente vuole vedere un ordine non confermato specifico registrato nel Sistema per l'utente corrente",
)[
  #use-case-diagram("16", "UC16 - Visualizza ordine non confermato", width: 45%)
]

Il Caso d'Uso UC16 include quattro ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("16-incl", "Inclusione del Caso d'Uso n.16: UC13, UC14, UC15, UC16.1", width: 90%)
Per maggiori informazioni sui Casi d'Uso 13, 14 e 15 si rimanda alle rispettive descrizioni (@UC13, @UC14 e @UC15), mentre per il Caso d'Uso 16.1 sarà qui di seguito descritto assieme ai Casi d'Uso che lo stesso a sua volta include.

==== UC16.1: Visualizza lista merci ordine non confermato <UC16.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un ordine non confermato registrato nel Sistema per l'utente corrente nel dettaglio
  ],
  post: [Viene visualizzata la lista delle merci di un ordine non confermato],
  scenari: [
    - Il Cliente visualizza a schermo la lista della merce aggiunta all'ordine non confermato selezionato $arrow$ @UC16.1.1[Vedi UC16.1.1, Sez.]
  ],
  inclusioni: [
    - UC 16.1.1 @UC16.1.1[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini non confermati la lista delle merci che tali ordini contengono",
)[]

===== UC16.1.1: Visualizza elemento lista merce ordine non confermato <UC16.1.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un elenco di merci di un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzata la quantità e il nome della merce di un ordine non confermato],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - Q.tà di quella merce nell'ordine non confermato selezionato $arrow$ @UC16.1.1.1[Vedi UC16.1.1.1, Sez.];
      - Nome della merce $arrow$ @UC17[Vedi UC17, Sez.];
  ],
  inclusioni: [
    - UC16.1.1.1 @UC16.1.1.1[Sez.]
    - UC17 @UC17[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini non confermati la lista delle merci che tali ordini contengono",
)[]

====== UC16.1.1.1: Visualizza q.tà della merce ordine non confermato <UC16.1.1.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci di un ordine non confermato registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzata la quantità di una merce in un ordine non confermato],
  scenari: [
    - Viene visualizzata la quantità della singola merce nell'ordine non confermato selezionato
  ],
)[]

=== UC17: Visualizza nome merce <UC17>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin Globale
    - L'attore principale sta visualizzando una lista di merci
  ],
  post: [Viene visualizzato il nome di una merce],
  scenari: [
    - Viene visualizzata il nome della singola merce
  ],
)[]

=== UC18: Visualizza elenco delle merci nel Sistema <UC18>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato un elenco delle merci nel Sistema],
  scenari: [
    - Il Cliente seleziona dal menu l'opzione relativa alla visualizzazione dell'elenco delle merci memorizzate nel Sistema
    - Il Cliente visualizza a schermo la lista delle merci memorizzate nel Sistema $arrow$ @UC18.1[Vedi UC18.1, Sez.]
  ],
  inclusioni: [
    - UC18.1 @UC18.1[Sez.]
  ],
  trigger: "l'utente vuole visualizzare la lista delle merci memorizzate nel Sistema",
)[
  #use-case-diagram("18", "UC18 - Visualizza lista delle merci", width: 55%)
]

Il Caso d'Uso UC18 include un ulteriore Caso d'Uso come raffigurato nell'immagine alla pagina successiva.
#use-case-diagram("18-incl", "Inclusione del Caso d'Uso n.18: UC18.1", width: 75%)
Tale Caso d'Uso sarà descritto qui di seguito assieme alle sue inclusioni, sempre rappresentate in figura, ad eccezione del Caso d'Uso n. 17, la cui descrizione è disponibile alla @UC17.

==== UC18.1: Visualizza elemento lista delle merci <UC18.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando la lista delle merci memorizzate nel Sistema
  ],
  post: [Nell'elemento della lista delle merci viene visualizzato ID, nome, quantità complessiva in tutti i magazzini e quantità locale della singola merce],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - L'ID della merce $arrow$ @UC19[Vedi UC19, Sez.]
      - Il nome della merce $arrow$ @UC17[Vedi UC17, Sez.]
      - La quantità di merce complessiva in tutti i magazzini $arrow$ @UC20[Vedi UC20, Sez.]
      - La quantità di merce nel magazzino presso cui il Cliente ha fatto l'autenticazione $arrow$ @UC21[Vedi UC21, Sez.] \ \ \
  ],
  inclusioni: [
    - UC17 @UC17[Sez.]
    - UC19 @UC19[Sez.]
    - UC20 @UC20[Sez.]
    - UC21 @UC21[Sez.]
  ],
  trigger: "l'utente vuole visualizzare la lista delle merci presenti nel Sistema",
)[]

=== UC19: Visualizza ID merce <UC19>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin Globale
    - L'attore principale sta visualizzando una lista di merci
  ],
  post: [Viene visualizzato l'ID della merce],
  scenari: [
    - Viene visualizzata l'ID della singola merce
  ],
)[]

=== UC20: Visualizza quantità complessiva di una merce in tutti i magazzini <UC20>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci oppure una singola merce nel dettaglio
  ],
  post: [Viene visualizzata la quantità complessiva di una merce in tutti i magazzini],
  scenari: [
    - Il Cliente visualizza la quantità complessiva della merce in tutti i magazzini
  ],
)[]

=== UC21: Visualizza quantità di una merce nel magazzino attuale <UC21>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci oppure una singola merce nel dettaglio
  ],
  post: [Viene visualizzata la quantità complessiva di una merce nel magazzino attuale],
  scenari: [
    - Il Cliente visualizza la quantità della merce nel magazzino attuale
  ],
)[]

=== UC22: Visualizza merce <UC22>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Della merce selezionata, il Cliente visualizza ID, nome, quantità globale e locale e descrizione],
  scenari: [
    - Il Cliente seleziona da una lista di merci la visualizzazione di una merce in particolare
    - Il Cliente visualizza della merce selezionata:
      - l'ID della merce $arrow$ @UC19[Vedi UC19, Sez.]
      - Nome della merce $arrow$ @UC17[Vedi UC17, Sez.]
      - Q.tà della merce disponibile nel magazzino attuale $arrow$ @UC21[Vedi UC20, Sez.]
      - Q.tà della merce complessivamente disponibile in tutti i magazzini $arrow$ @UC20[Vedi UC20, Sez.]
      - Descrizione della merce $arrow$ @UC22.1[Vedi UC, Sez.]
  ],
  inclusioni: [
    - UC17 @UC17[Sez.]
    - UC19 @UC19[Sez.]
    - UC20 @UC20[Sez.]
    - UC21 @UC21[Sez.]
    - UC22.1 @UC22.1[Sez.]
  ],
  trigger: "l'utente vuole visualizzare i dettagli di una merce presente nel Sistema",
)[
  #use-case-diagram("22", "UC22 - Visualizza merce")
]

Il Caso d'Uso UC22 include cinque ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("22-incl", "Inclusioni del Caso d'Uso n.22: UC17, UC19, UC20, UC21 e UC22.1")
Tali Casi d'Uso saranno descritti qui di seguito ad eccezione degli UC n.17, 19, 20 e 21 reperibili, rispettivamente, alla @UC17, @UC19, @UC20 e @UC21.

==== UC22.1: Visualizza descrizione della merce <UC22.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando il dettaglio di una merce
  ],
  post: [Viene visualizzata la descrizione della merce],
  scenari: [
    - Il Cliente visualizza la descrizione della merce
  ],
)[]

=== UC23: Creazione di un trasferimento da confermare <UC23>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema memorizza l'esistenza di un nuovo trasferimento non confermato con le relative informazioni
  ],
  scenari: [
    - L'Admin Globale seleziona dal menù principale l'opzione relativa alla creazione di un nuovo trasferimento da confermare
    - L'Admin Globale sceglie il magazzino destinatario del nuovo trasferimento da confermare $arrow$ @UC23.2[Vedi UC23.2, Sez.]
    - L'Admin Globale sceglie il magazzino mittente del nuovo trasferimento da confermare $arrow$ @UC23.1[Vedi UC23.1, Sez.]
  ],
  trigger: [L'Admin Globale vuole creare un nuovo trasferimento da confermare],
  inclusioni: [
    - UC23.1 @UC23.1[Sez.]
    - UC23.2 @UC23.2[Sez.]
  ],
)[
  #use-case-diagram("23", "UC23 - Creazione di un trasferimento da confermare")
]

Il Caso d'Uso UC23 include due ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("23-incl", "Inclusioni del Caso d'Uso n.23: UC23.1 e UC23.2")
Tali Casi d'Uso saranno descritti qui di seguito:

==== UC23.1: Scelta del magazzino mittente: trasferimento non confermato <UC23.1>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato dal menu di voler creare un nuovo trasferimento
    - Il Sistema non conosce il magazzino mittente di un trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve l'identificativo del magazzino mittente del nuovo trasferimento
  ],
  scenari: [
    - L'Admin Globale procede ad inserire l'identificativo del magazzino mittente del nuovo trasferimento non confermato
  ],
  trigger: "L'Admin Globale vuole creare un nuovo trasferimento da confermare",
)[]

==== UC23.2: Scelta del magazzino ricevente: trasferimento non confermato <UC23.2>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato dal menù di voler creare un nuovo trasferimento
    - Il Sistema non conosce il magazzino destinatario di un trasferimento non confermato
  ],
  post: [
    - Il Sistema riceve l'identificativo del magazzino destinatario del nuovo trasferimento
  ],
  scenari: [
    - L'Admin Globale procede ad inserire l'identificativo del magazzino destinatario del nuovo trasferimento non confermato
  ],
  trigger: "L'Admin Globale vuole creare un nuovo trasferimento di merce tra magazzini da confermare",
)[]

=== UC24: Aggiunta merce ad un trasferimento non confermato <UC24>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato dal menu di voler aggiungere merce ad un trasferimento
    - Nel Sistema esiste almeno un trasferimento da confermare
  ],
  post: [
    - La merce selezionata è stata aggiunta ad un trasferimento
  ],
  scenari: [
    - L'Admin Globale seleziona la voce del menu relativa all'aggiunta di merce ad un trasferimento non confermato
    - L'Admin Globale seleziona il trasferimento non confermato a cui aggiungere merce $arrow$ @UC25[Vedi UC25, Sez.]
    - L'Admin Globale inserisce il nome della merce che vuole trasferire $arrow$ @UC5[Vedi UC5, Sez.]
    - L'Admin Globale inserisce la quantità della merce da trasferire $arrow$ @UC6[Vedi UC6, Sez.] \ \ \ \ \
  ],
  scenari_alternativi: [
    - L'Admin Globale ha scelto una quantità di merce per la merce selezionata superiore alla quantità disponibile nel magazzino mittente $arrow$ @UC7[Vedi UC7, Sez.]
    - L'Admin Globale ha selezionato di voler aggiungere merce ad un trasferimento non confermato ma nessun trasferimento non confermato è disponibile $arrow$ @UC27[Vedi UC27, Sez.]
  ],
  inclusioni: [
    - UC25 @UC25[Sez.]
    - UC5 @UC5[Sez.]
    - UC6 @UC6[Sez.]
  ],
  estensioni: [
    - UC7 @UC7[Sez.]
    - UC27 @UC27[Sez.]
  ],
  trigger: "L'Admin Globale vuole trasferire della merce da un magazzino all'altro",
)[
  #use-case-diagram("24", "UC24 - Aggiunta merce ad un trasferimento non confermato")
]

Il Caso d'Uso UC24 include tre ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("24-incl", "Inclusioni del Caso d'Uso n.24: UC5 , UC6 e UC25")
Tali Casi d'Uso saranno descritti qui di seguito ad eccezione di UC5 e UC6, reperibili, rispettivamente, alla @UC5 e alla @UC6.

#pagebreak()

=== UC25: Seleziona trasferimento non confermato <UC25>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato dal menu di voler aggiungere merce ad un trasferimento non confermato o di confermarne/cancellarne uno
  ],
  post: [
    - Il Sistema memorizza il trasferimento non confermato alla quale aggiungere la merce o il trasferimento da confermare/cancellare
  ],
  scenari: [
    - L'Admin Globale inserisce l'ID del trasferimento non confermato alla quale aggiungere merce o che vuole confermare/cancellare
  ],
  trigger: "L'Admin Globale vuole trasferire della merce da un magazzino all'altro o confermare/cancellare un trasferimento non confermato",
)[]

=== UC26: Conferma trasferimento non confermato <UC26>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema memorizza un trasferimento come confermato e lo avvia nell'effettivo \ \ \
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu l'opzione relativa alla conferma di un trasferimento non confermato
    - L'Admin Globale seleziona il trasferimento non confermato da confermare $arrow$ @UC25[Vedi UC, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Globale ha selezionato il trasferimento non confermato ma la quantità della merce non è più disponibile nel magazzino mittente $arrow$ @UC7[Vedi UC7, Sez.]
    - L'Admin Globale ha selezionato di voler confermare un trasferimento non confermato ma nessun trasferimento non confermato è disponibile $arrow$ @UC27[Vedi UC27, Sez.]
  ],
  inclusioni: [
    - UC25 @UC25[Sez.]
  ],
  estensioni: [
    - UC7 @UC7[Sez.]
    - UC27 @UC27[Sez.]
  ],
  trigger: "L'Admin Globale vuole confermare un trasferimento non confermato",
)[
  #use-case-diagram("26", "UC26 - Conferma trasferimento non confermato")
]

Il Caso d'Uso UC26 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("26-incl", "Inclusione del Caso d'Uso n.26: UC25")
Tale Caso d'Uso è reperibile alla @UC25.

#pagebreak()

=== UC27: Nessun trasferimento non confermato disponibile <UC27>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - L'Utente ha selezionato dal menu un'opzione che riguarda un trasferimento non confermato
  ],
  post: [
    - L'operazione riguardante un trasferimento non confermato viene annullata
  ],
  scenari: [
    - Il Cliente ha avviato un'operazione riguardante un trasferimento non confermato ma il Sistema non ha memorizzato alcun trasferimento non confermato
  ],
)[]

=== UC28: Cancella trasferimento non confermato <UC28>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema cancella un trasferimento non ancora confermato
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu l'opzione relativa alla cancellazione di un trasferimento non confermato
    - L'Admin Globale seleziona il trasferimento non confermato da cancellare $arrow$ @UC25[Vedi UC, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Globale ha selezionato di voler cancellare un trasferimento non confermato ma nessun trasferimento non confermato è disponibile $arrow$ @UC27[Vedi UC27, Sez.] \ \
  ],
  inclusioni: [
    - UC25 @UC25[Sez.]
  ],
  estensioni: [
    - UC27 @UC27[Sez.]
  ],
  trigger: "L'Admin Globale vuole cancellare un trasferimento non confermato",
)[
  #use-case-diagram("28", "UC28 - Cancella trasferimento non confermato", width: 80%)
]

Il Caso d'Uso UC28 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("28-incl", "Inclusione del Caso d'Uso n.28: UC25")
Tale Caso d'Uso è reperibile alla @UC25.

=== UC29: Visualizza elenco dei trasferimenti <UC29>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [Viene visualizzato l'elenco dei trasferimenti \ \ ],
  scenari: [
    - L'Admin Globale seleziona dal menu principale l'opzione relativa alla visualizzazione dell'elenco completo dei trasferimenti nel Sistema
    - L'Admin Globale visualizza a schermo la lista di tutti i trasferimenti memorizzati nel Sistema $arrow$ @UC29.1[Vedi UC, Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare i trasferimenti, a prescindere dallo stato",
  inclusioni: [
    - UC29.1 @UC29.1[Sez.]
  ],
)[
  #use-case-diagram("29", "UC29 - Visualizza l'elenco dei trasferimenti")
]

Il Caso d'Uso UC29 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("29-incl", "Inclusione del Caso d'Uso n. 29: UC29.1", width: 79%)
Tale Caso d'Uso sarà qui di seguito descritto insieme alle sue inclusioni (sempre rappresentate nell'immagine precedente).

==== UC29.1: Visualizza elemento lista trasferimenti <UC29.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando la lista dei trasferimenti memorizzati nel Sistema
  ],
  post: [Per il singolo elemento della lista dei trasferimenti viene visualizzato ID e stato di tale trasferimento],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata deve presentare:
      - L'ID del trasferimento $arrow$ @UC30[Vedi UC30, Sez.]
      - Lo stato del trasferimento $arrow$ @UC31[Vedi UC31, Sez.]
  ],
  inclusioni: [
    - UC30 @UC30[Sez.]
    - UC31 @UC31[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare i trasferimenti, a prescindere dallo stato",
)[]

=== UC30: Visualizza ID trasferimento <UC30>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando una lista di trasferimenti o un trasferimento nello specifico
  ],
  post: [Viene visualizzato l'ID del trasferimento],
  scenari: [
    - L'Admin Globale visualizza l'ID del trasferimento
  ],
)[]

=== UC31: Visualizza stato trasferimento <UC31>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando una lista di trasferimenti o un trasferimento nello specifico
  ],
  post: [Viene visualizzato lo stato del trasferimento],
  scenari: [
    - L'Admin Globale visualizza lo stato del trasferimento
  ],
)[]

=== UC32: Visualizza trasferimento <UC32>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [Viene visualizzato un trasferimento nel dettaglio. Tale visualizzazione comprende l'ID, il magazzino mittente, il magazzino destinatario, lo stato e l'elenco della merce interessata dal trasferimento \ \ \ ],
  scenari: [
    - L'Admin Globale seleziona da una lista di trasferimenti l'opzione relativa alla visualizzazione di un trasferimento in particolare
    - L'Admin Globale visualizza del suddetto trasferimento:
      - L'ID del trasferimento $arrow$ @UC30[Vedi UC30, Sez.]
      - Il magazzino mittente del trasferimento $arrow$ @UC32.1[Vedi UC32.1, Sez.]
      - Il magazzino destinatario del trasferimento $arrow$ @UC32.2[Vedi UC32.2, Sez.]
      - Lo stato del trasferimento $arrow$ @UC31[Vedi UC31, Sez.]
      - L'elenco della merce interessata dal trasferimento $arrow$ @UC32.3[Vedi UC32.3, Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare i dettagli di un trasferimento specifico",
  inclusioni: [
    - UC30 @UC30[Sez.]
    - UC31 @UC31[Sez.]
    - UC32.1 @UC32.1[Sez.]
    - UC32.2 @UC32.2[Sez.]
    - UC32.3 @UC32.3[Sez.]
  ],
)[
  #use-case-diagram(
    "32",
    "UC32 - Visualizza il singolo trasferimento",
  )
]

Il Caso d'Uso UC32 include cinque ulteriori Casi d'Uso come rappresentato dalla seguente immagine:
#use-case-diagram("32-incl", "Inclusione del Caso d'Uso n.32: UC30, UC31, UC32.1, UC32.2 e UC32.3", width: 75%)
Tali Casi d'Uso saranno ora descritti ad eccezione degli UC30 e UC31 la cui descrizione è reperibile alla, rispettivamente, @UC30 e @UC31.

#pagebreak()

==== UC32.1: Visualizza magazzino mittente trasferimento <UC32.1>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un trasferimento nello specifico
  ],
  post: [Viene visualizzato il magazzino mittente di un trasferimento],
  scenari: [
    - L'Admin Globale visualizza il magazzino mittente del trasferimento
  ],
)[]

==== UC32.2: Visualizza magazzino destinatario trasferimento <UC32.2>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un trasferimento nello specifico
  ],
  post: [Viene visualizzato il magazzino destinatario di un trasferimento],
  scenari: [
    - L'Admin Globale visualizza il magazzino destinatario del trasferimento
  ],
)[]

==== UC32.3: Visualizza elenco merce trasferimento <UC32.3>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'utente ha selezionato dall'elenco dei trasferimenti un trasferimento da visualizzare nel dettaglio
  ],
  post: [Viene visualizzato l'elenco della merce interessata dal trasferimento],
  scenari: [
    - L'Admin Globale visualizza l'elenco della merce interessata dal trasferimento $arrow$ @UC32.3.1[Vedi UC32.3.1, Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare i dettagli di un trasferimento",
  inclusioni: [
    - UC32.3.1 @UC32.3.1[Sez.]
  ],
)[]

#pagebreak()

Il Caso d'Uso UC32.3 include un ulteriore Caso d'Uso come rappresentato dalla seguente immagine:
#use-case-diagram("32-incl-2", "Inclusione del Caso d'Uso n.32.3: UC32.3.1 e relative inclusioni", width: 70%)
Tale Caso d'Uso e le relative inclusioni saranno ora descritte ad eccezione dell'UC17, una cui descrizione è reperibile alla @UC17.

===== UC32.3.1: Visualizza elemento lista merce trasferimento <UC32.3.1>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di merce appartenente ad un rifornimento
  ],
  post: [Per il singolo elemento della lista della merce interessata dal trasferimento viene visualizzato nome e quantità della merce],
  scenari: [
    - Per ogni elemento della lista l'Admin Globale deve visualizzare:
      - Il nome della singola merce interessata dal trasferimento $arrow$ @UC17[Vedi UC17, Sez.]
      - La quantità della singola merce interessata dal trasferimento $arrow$ @UC32.3.1.1[Vedi UC32.3.1.1, Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare i dettagli della singola merce del trasferimento",
  inclusioni: [
    - UC17 @UC17[Sez.]
    - UC32.3.1.1 @UC32.3.1.1[Sez.]
  ],
)[]

#pagebreak()

====== UC32.3.1.1: Visualizza quantità singola merce
<UC32.3.1.1>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di merce appartenente ad un rifornimento
  ],
  post: [Viene visualizzata la quantità della singola merce interessata dal trasferimento],
  scenari: [
    - L'Admin Globale visualizza la quantità della singola merce interessata dal trasferimento
  ],
)[]

=== UC33: Visualizza elenco notifiche rifornimento <UC33>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [Viene visualizzato l'elenco delle notifiche di rifornimento],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa alla visualizzazione delle notifiche di rifornimento
    - L'Admin Globale visualizza a schermo la lista delle notifiche di rifornimento $arrow$ @UC34[Vedi UC34, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Globale cerca di visualizzare le notifiche di rifornimento ma nessuna notifica è presente $arrow$ @UC37[Vedi UC37, Sez.]
  ],
  inclusioni: [
    - UC34 @UC34[Sez.] \ \
  ],
  estensioni: [
    - UC37 @UC37[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare la lista delle notifiche di rifornimento",
)[
  #use-case-diagram("33", "UC33 - Visualizza elenco notifiche rifornimento")
]

Il Caso d'Uso UC33 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("33-incl", "Inclusione del Caso d'Uso n. 33: UC34", width: 75%)
Tale caso d'uso con le rispettive inclusioni saranno analizzati qui di seguito.

=== UC34: Visualizza elemento lista notifiche rifornimento <UC34>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando la lista delle notifiche di rifornimento (scaturite per via della soglia di guardia o per mezzo delle tecnologie di _Machine Learning_)
  ],
  post: [Per ogni elemento della lista delle notifiche di rifornimento viene visualizzato lo stato (ad esempio confermata o non confermata) e l'ID della notifica],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dall'Admin Globale dovrà contenere:
      - Lo stato della notifica (ad esempio confermata o non confermata) $arrow$ @UC35[Vedi UC35, Sez.]
      - L'ID della notifica $arrow$ @UC36[Vedi UC36, Sez.]
  ],
  inclusioni: [
    - UC35 @UC35[Sez.]
    - UC36 @UC36[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare la lista delle notifiche di rifornimento",
)[]

=== UC35: Visualizza stato notifica rifornimento <UC35>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - Il Cliente sta visualizzando una notifica di rifornimento, in elenco o in dettaglio
  ],
  post: [Viene visualizzato lo stato (ad esempio confermata o non confermata) della notifica di rifornimento],
  scenari: [
    - Viene visualizzato lo stato della notifica di rifornimento
  ],
)[]

=== UC36: Visualizza ID notifica rifornimento <UC36>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - Il Cliente sta visualizzando una notifica di rifornimento, in elenco o in dettaglio
  ],
  post: [Viene visualizzato l'ID della notifica di rifornimento],
  scenari: [
    - Viene visualizzato l'ID della notifica di rifornimento
  ],
)[]

=== UC37: Nessuna notifica di rifornimento <UC37>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato un'opzione relativa alle notifiche di rifornimento
  ],
  post: [Viene annullata l'operazione di visualizzazione delle notifiche di rifornimento e un errore apposito viene mostrato all'Admin Globale],
  scenari: [
    - L'Admin Globale ha selezionato un'opzione relativa alle notifiche di rifornimento ma nessuna notifica di rifornimento è disponibile per l'operazione da effettuare
  ],
)[]

=== UC38: Visualizza lista notifiche di rifornimento forniti da _Machine Learning_ <UC38>

#use-case(
  attore: "Admin Globale",
  attori_secondari: "LLM",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [Viene visualizzato l'elenco delle notifiche di rifornimento fornite da _Machine Learning_],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa alla visualizzazione delle notifiche di rifornimento fornite da _Machine Learning_
    - L'Admin Globale visualizza a schermo la lista delle notifiche di rifornimento fornite da _Machine Learning_ $arrow$ @UC34[Vedi UC34, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Globale cerca di visualizzare le notifiche di rifornimento fornite da _Machine Learning_ ma nessuna notifica è presente $arrow$ @UC37[Vedi UC37, Sez.]
  ],
  inclusioni: [
    - UC34 @UC34[Sez.]
  ],
  estensioni: [
    - UC37 @UC37[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare la lista delle notifiche di rifornimento suggerite da "
    + [_Machine Learning_]
    + ".",
)[#use-case-diagram(
    "38",
    "UC38 - Visualizza elenco notifiche di rifornimento con " + [_Machine Learning_],
  )]

\ \ \
Il Caso d'Uso UC38 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine: #use-case-diagram("38-incl","Inclusione del Caso d'Uso n.38: UC34")
Maggiori informazioni sono disponibili alla @UC34.

=== UC39: Visualizza notifica rifornimento <UC39>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Per la notifica selezionata viene visualizzato stato, ID, magazzino di destinazione e merce interessata dal rifornimento],
  scenari: [
    - L'Admin Globale ha selezionato da una lista di notifiche di rifornimento la visualizzazione di una notifica specifica
    - L'Admin Globale visualizza della suddetta notifica:
      - Lo stato della notifica (ad esempio confermata o non confermata) $arrow$ @UC35[Vedi UC35, Sez.]
      - L'ID della notifica $arrow$ @UC36[Vedi UC36, Sez.]
      - L'elenco della merce il cui rifornimento è consigliato $arrow$ @UC39.2[Vedi UC39.2, Sez.]
      - Magazzino di destinazione $arrow$ @UC39.1[Vedi UC39.1, Sez.]
  ],
  inclusioni: [
    - UC35 @UC35[Sez.]
    - UC36 @UC36[Sez.]
    - UC39.1 @UC39.1[Sez.]
    - UC39.2 @UC39.2[Sez.]
  ],
  trigger: "L'Admin Globale una notifica di rifornimento specifica registrata nel Sistema",
)[#use-case-diagram("39", "UC39 - Visualizza notifica di rifornimento")]

Il Caso d'Uso UC39 include quattro ulteriori Casi d'Uso come raffigurato nella seguente immagine: #use-case-diagram("39-incl","Inclusione del Caso d'Uso n.39: UC35, UC36, UC39.1 e UC39.2", width: 75%)
Riguardo UC34.1.1 e UC36 è possibile avere maggiori informazioni alla @UC35 e alla @UC36.

==== UC39.1: Visualizza magazzino di destinazione <UC39.1>

#use-case(
  attore: "Cliente, Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente o come Admin Globale
    - L'attore principale sta visualizzando il dettaglio di una notifica di rifornimento
  ],
  post: [Viene visualizzato il magazzino destinatario del trasferimento],
  scenari: [
    - Viene visualizzato il magazzino di destinazione
  ],
)[]

==== UC39.2: Visualizza elenco merce consigliata da rifornire <UC39.2>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [Viene visualizzato l'elenco della merce il cui rifornimento è consigliato],
  scenari: [
    - L'Admin Globale seleziona una notifica di rifornimento specifica
    - L'Admin Globale visualizza a schermo l'elenco delle merci il cui rifornimento è consigliato $arrow$ @UC39.2.1[Vedi UC39.2.1, Sez.]
  ],
  inclusioni: [
    - UC39.2.1 @UC39.2.1[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare una notifica di rifornimento nel dettaglio",
)[]

Il Caso d'Uso UC39.2 include un ulteriore caso d'uso come raffigurato nella seguente immagine: #use-case-diagram("39-incl-2","Inclusione del Caso d'Uso n.39.2: UC39.2.1", width: 79%)
Tale Caso d'Uso sarà esposto qui di seguito.

===== UC39.2.1: Visualizza elemento lista merce consigliata da rifornire <UC39.2.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di merce il cui rifornimento è consigliato
  ],
  post: [Per ogni elemento della lista delle merci il cui rifornimento è consigliato viene mostrato ID, nome e quantità della merce rispettiva],
  scenari: [
    - Per ogni elemento della lista viene visualizzato:
      - ID della merce $arrow$ @UC19[Vedi UC23, Sez.]
      - Nome della merce $arrow$ @UC17[Vedi UC17, Sez.]
      - Q.tà da rifornire $arrow$ @UC39.2.1.1[Vedi UC39.2.1.1, Sez.]
  ],
  inclusioni: [
    - UC19 @UC19[Sez.]
    - UC17 @UC17[Sez.]
    - UC39.2.1.1 @UC39.2.1.1[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare una notifica di rifornimento nel dettaglio",
)[]

Il Caso d'Uso UC39.2.1 include tre ulteriori Casi d'Uso come descritto sopra.
In merito a UC17 e UC19 è possibile avere maggiori informazioni, rispettivamente, alla @UC17 e alla @UC19, i rimanenti saranno invece esposti qui di seguito.


====== UC39.2.1.1: Visualizza quantità merce da rifornire <UC39.2.1.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando una lista di merci in una notifica di rifornimento
  ],
  post: [Viene visualizzata la quantità di merce il cui rifornimento è consigliato],
  scenari: [
    - Viene visualizzata la quantità da rifornire consigliata della singola merce
  ],
)[]

=== UC40: Accetta notifica di rifornimento <UC40>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema registra la notifica di rifornimento come accettata
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa all'accettazione delle notifiche di rifornimento
    - L'Admin Globale sceglie quale notifica di rifornimento accettare $arrow$ @UC41[Vedi UC41, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Globale vuole accettare una notifica di rifornimento ma il Sistema non ha registrata alcuna notifica di rifornimento da accettare$arrow$ @UC37[Vedi UC37, Sez.]
  ],
  inclusioni: [
    - UC41 @UC41[Sez.]
  ],
  estensioni: [
    - UC37 @UC37[Sez.]
  ],
  trigger: "L'Admin Globale vuole accettare una notifica di rifornimento",
)[
  #use-case-diagram("40", "UC40 - Accetta notifica di rifornimento")
]

Il Caso d'Uso UC40 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine:
#use-case-diagram("40-incl", "Inclusione del Caso d'Uso n.40: UC41")

=== UC41: Seleziona notifica di rifornimento <UC41>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta compiendo un'operazione riguardante le notifiche di rifornimento
  ],
  post: [
    - Il Sistema registra su quale notifica di rifornimento effettuare l'operazione voluta dall'Admin Globale
  ],
  scenari: [
    - L'Admin Globale procede ad inserire la notifica sulla quale vuole che l'operazione sia effettuata
  ],
  trigger: "L'Admin Globale vuole effettuare un'operazione su una notifica di rifornimento",
)[]

=== UC42: Rifiuta notifica di rifornimento <UC42>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema registra la notifica di rifornimento come rifiutata
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa al rifiuto delle notifiche di rifornimento
    - L'Admin Globale sceglie quale notifica di rifornimento rifiutare $arrow$ @UC41[Vedi UC41, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Globale vuole rifiutare una notifica di rifornimento ma il Sistema non ha registrata alcuna notifica di rifornimento da rifiutare $arrow$ @UC37[Vedi UC37, Sez.]
  ],
  inclusioni: [
    - UC41 @UC41[Sez.]
  ],
  estensioni: [
    - UC37 @UC37[Sez.]
  ],
  trigger: "L'Admin Globale vuole rifiutare una notifica di rifornimento",
)[
  #use-case-diagram("42", "UC42 - Rifiuta notifica di rifornimento")
]

Il Caso d'Uso UC42 include un ulteriore Caso d'Uso come mostrato nella seguente figura: #use-case-diagram("42-incl", "Inclusione del Caso d'Uso n.42: UC41", width: 60%)
Tale caso d'uso è disponibile per la consultazione alla @UC41.

=== UC43: Visualizza elenco microservizi <UC43>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [Viene visualizzato l'elenco dei microservizi],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa alla visualizzazione dei microservizi
    - L'Admin Globale visualizza a schermo la lista dei microservizi del Sistema $arrow$ @UC43.1[Vedi UC43.1, Sez.]
  ],
  inclusioni: [
    - UC43.1 @UC43.1[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare l'elenco dei microservizi del Sistema",
)[#use-case-diagram("43", "UC43 - Visualizza elenco microservizi")]

Il Caso d'Uso UC39 include un ulteriore Caso d'Uso come raffigurato nella seguente immagine: #use-case-diagram("43-incl","Inclusioni del Caso d'Uso n.43: UC43.1")
Il presente Caso d'Uso sarà esposto, con le relative inclusioni, qui di seguito.

==== UC43.1: Visualizza elemento lista microservizi <UC43.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando una lista di microservizi
  ],
  post: [Per ogni elemento della lista dei microservizi viene visualizzato il numero di richieste al secondo],
  scenari: [
    - Ogni singolo elemento della lista visualizzata dall'Admin Globale dovrà contenere:
      - numero di richieste al secondo $arrow$ @UC43.1.1[Vedi UC43.1.1, Sez.]
      - nome del microservizio $arrow$ @UC43.1.2[Vedi UC43.1.2, Sez.]
  ],
  inclusioni: [
    - UC43.1.1 @UC43.1.1[Sez.]
    - UC43.1.2 @UC43.1.2[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare l'elenco dei microservizi del Sistema",
)[]

===== UC43.1.1: Visualizza numero richieste al secondo del microservizio <UC43.1.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un microservizio o un elenco di microservizi
  ],
  post: [Viene visualizzato il numero di richieste al secondo di un microservizio],
  scenari: [
    - Viene visualizzato il numero di richieste al secondo per il microservizio
  ],
)[]

#pagebreak()

===== UC43.1.2: Visualizza nome del microservizio <UC43.1.2>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un microservizio o un elenco di microservizi
  ],
  post: [Viene visualizzato il nome del microservizio],
  scenari: [
    - Viene visualizzato il nome del microservizio
  ],
)[]

=== UC44: Esportazione ordini <UC44>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il file _.csv_ viene generato correttamente e scaricato sul dispositivo dell'Admin Globale riportando fedelmente gli ordini eseguiti
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa all'esportazione degli ordini eseguiti
  ],
  scenari_alternativi: [
    - L'Admin Globale cerca di esportare gli ordini eseguiti ma non ci sono dati da esportare $arrow$ @UC45[Vedi UC45, Sez.]
  ],
  estensioni: [
    - UC45 @UC45
  ],
  trigger: "L'Admin Globale richiede l'esportazione degli ordini eseguiti tramite l'apposita funzionalità.",
)[
  #use-case-diagram("44", "UC44 - Esportazione ordini")
]

#pagebreak()

=== UC45: Nessun ordine da esportare <UC45>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato dal menu la voce relativa all'esportazione degli ordini eseguiti
  ],
  post: [
    -Il Sistema invia una notifica informando che non c'è alcun ordine da esportare
  ],
  scenari: [
    - L'Admin Globale seleziona dal menù la voce relativa all'esportazione degli ordini eseguiti ma nessun ordine è stato eseguito
  ],
)[]

=== UC46: Esportazione report inventario <UC46>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il file _.csv_ viene generato correttamente e scaricato sul dispositivo dell'Admin Globale riportando accuratamente lo stato attuale dell'inventario
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa all'esportazione del report dell'inventario
  ],
  scenari_alternativi: [
    - L'Admin Globale cerca di esportare l'inventario ma non ci sono dati da esportare $arrow$ @UC47[Vedi UC47, Sez.]
  ],
  estensioni: [
    - UC47 @UC47
  ],
  trigger: "L'Admin Globale richiede l'esportazione del report dell'inventario tramite l'apposita funzionalità.",
)[
  #use-case-diagram("46", "UC46 - Esportazione report inventario")
]

=== UC47: Nessun dato inventario <UC47>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato dal menu la voce relativa all'esportazione del report dell'inventario
  ],
  post: [
    -Il Sistema invia una notifica informando che non c'è alcun dato dell'inventario disponibile
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa all'esportazione del report dell'inventario ma nessun dato è disponibile
  ],
)[]

=== UC48: Creazione di una soglia minima per una merce <UC48>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - La soglia minima impostata viene salvata correttamente nel Sistema
  ],
  scenari: [
    - L'Admin Globale accede dal menù alla sezione gestione inventario.
    - L'Admin seleziona la merce per cui vuole impostare una soglia minima @UC49[Vedi UC49, Sez.]
    - L'Admin inserisce il valore della soglia minima desiderata @UC48.1[Vedi UC48.1, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Globale inserisce una soglia minima non valida $arrow$ @UC50[Vedi UC50, Sez.]
  ],
  inclusioni: [
    - UC49 @UC49[Sez.]
    - UC48.1 @UC48.1[Sez.]
  ],
  estensioni: [
    - UC50 @UC50[Sez.]
  ],
  trigger: "L'Admin Globale richiede di impostare una soglia minima per una specifica merce.",
)[
  #use-case-diagram("48", "UC48 - Creazione di una soglia minima per una merce", width: 70%)
]

Il Caso d'Uso 48 include due ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("48-incl","Inclusioni del Caso d'Uso n.48: UC48.1 e UC49").
Tali Casi d'Uso saranno di seguito esposti.

==== UC48.1: Inserisci soglia minima <UC48.1>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale accede dal menù alla sezione gestione inventario
    - L'Admin ha selezionato la merce per cui vuole impostare una soglia minima
  ],
  post: [
    - Il Sistema conosce la soglia minima da impostare.
  ],
  scenari: [
    - L'Admin inserisce il valore della soglia minima desiderata
  ],
)[]

=== UC49: Selezione merce <UC49>
#use-case(
  attore: "Admin Globale, Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale o locale;
    - L'Attore principale sta eseguendo un'operazione di modifica di una merce
  ],
  post: [
    - Il Sistema conosce la merce sulla quale effettuare l'operazione di modifica;
  ],
  scenari: [
    - L'Attore principale seleziona la merce per cui vuole impostare una soglia minima
  ],
)[#use-case-diagram("49", "UC49 - Selezione merce")]

=== UC50: Soglia minima non valida <UC50>
#use-case(
  attore: "Admin Globale",
  pre: [
    - L'Admin Globale accede dal menù alla sezione gestione inventario.
    - L'Admin seleziona la merce per cui vuole impostare una soglia minima.
    - L'Admin inserisce una soglia minima
  ],
  post: [
    - Il Sistema annulla l'operazione.
  ],
  scenari: [
    - L'Admin Globale inserisce una soglia minima non valida relativa ad una specifica merce.
  ],
)[/*#use-case-diagram("50", "UC50 - Soglia minima non valida") presente sopra*/]

//Sistema Matteo (su) Sistema Marco (giù)
// MARCO

=== UC51: Aggiunta stock di una merce <UC51>
#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - La merce selezionata è pre-esistente, ovvero non bisogna farne la creazione
  ],
  post: [
    - Il Sistema registra l'aggiunta di stock a quella determinata merce
  ],
  scenari: [
    - L'Admin Locale seleziona la merce a cui verrà aggiornata la quantità (stock) $arrow$ @UC49[Vedi UC49, Sez.]
    - L'Admin Locale seleziona la quantità da aggiungere a tale merce $arrow$ @UC51.1[Vedi UC51.1, Sez.]
  ],
  inclusioni: [
    - UC49 @UC49[Sez.]
    - UC51.1 @UC51.1[Sez.]
  ],
  trigger: "L'Admin Locale vuole aggiornare la quantità (stock) per una determinata merce ",
)[
  #use-case-diagram("51", "UC51 - Aggiunta stock di una merce")
]

Il Caso d'Uso 51 include due ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("51-incl","Inclusioni del Caso d'Uso n.51: UC49 e UC51.1")
L'UC49 è consultabile alla @UC49, UC51.1 sarà invece ora esposto.

==== UC51.1: Seleziona q.tà da aggiungere alla merce esistente <UC51.1>
#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - l'Admin Locale ha avviato un'operazione di aggiornamento dello stock di una merce
  ],
  post: [
    - Il Sistema conosce la quantità di stock da aggiungere
  ],
  scenari: [
    - L'Admin Locale seleziona la quantità da aggiungere.
  ],
)[]

=== UC52: Creazione merce <UC52>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - La merce che verrà creata non può essere in nessun modo già esistente all'interno del Sistema
  ],
  post: [
    - Il Sistema registra la creazione di una nuova merce
    - Il Sistema comunica all'Admin Globale la corretta esecuzione del processo di creazione
    - Il Sistema comunica a tutti i magazzini locali la creazione di una nuova merce
  ],
  scenari: [
    - L'Admin Globale seleziona l'opzione di creazione di una nuova merce nel Sistema dal menù principale;
    - L'Admin Globale inserisce il nome della nuova merce $arrow$ @UC53[Vedi UC53, Sez.]
    - L'Admin Globale inserisce la descrizione della nuova merce $arrow$ @UC54[Vedi UC54, Sez.]
  ],
  inclusioni: [
    - UC53 @UC53[Sez.]
    - UC54 @UC54[Sez.]
  ],
  trigger: "L'Admin Globale vuole aggiungere al Sistema una nuova merce tramite il processo di creazione",
)[
  #use-case-diagram("52", "UC52 - Creazione di una nuova merce", width: 40%)
]

Il Caso d'Uso 52 include due ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("52-incl","Inclusioni del Caso d'Uso n.52: UC53 e UC54")
Saranno di seguito esposti.

=== UC53: Inserimento nome merce <UC53>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta eseguendo un'operazione di creazione di una nuova merce o di modifica di una esistente
  ],
  post: [
    - Il Sistema conosce il nome da assegnare alla merce
  ],
  scenari: [
    - L'Admin Globale inserisce il nome da assegnare alla nuova merce
  ],
)[/*#use-case-diagram("53", "UC53 - Inserimento nome merce") già presente sopra*/]

=== UC54: Inserimento descrizione merce <UC54>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta eseguendo un'operazione di creazione di una nuova merce
  ],
  post: [
    - Il Sistema conosce la descrizione da assegnare alla merce
  ],
  scenari: [
    - L'Admin Globale inserisce la descrizione da assegnare alla nuova merce
  ],
)[/*#use-case-diagram("54", "UC54 - Inserimento descrizione merce") già presente sopra*/]

=== UC55: Aggiornamento informazioni di una merce <UC55>
#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'Utente è riconosciuto come Admin Globale
  ],
  post: [
    - il Sistema registra il cambiamento effettuato
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa alla modifica di una merce esistente
    - L'Admin Globale seleziona la merce da modificare @UC49[Vedi UC49, Sez.]
    - L'Admin Globale seleziona il nome da assegnare @UC53[Vedi UC53, Sez.]
    - L'Admin Globale seleziona la descrizione da assegnare @UC54[Vedi UC54, Sez.]
  ],
  inclusioni: [
    - UC49 @UC49[Sez.]
    - UC53 @UC53[Sez.]
    - UC54 @UC54[Sez.]
  ],
  trigger: "L'Admin Globale vuole modificare le informazioni di una merce nel Sistema",
)[
  #use-case-diagram("55", "UC55 - Aggiornamento informazioni di una merce")
]

Il Caso d'Uso 55 include tre ulteriori Casi d'Uso, come raffigurato nella seguente immagine: #use-case-diagram("55-incl","Inclusioni del Caso d'Uso n.55: UC49, UC53 e UC54", width: 75%)
Sono stati esposti alla @UC49, @UC53 e alla @UC54 rispettivamente.

=== UC56: Visualizza elenco ordini eseguiti <UC56>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato l'elenco degli ordini eseguiti],
  scenari: [
    - Il Cliente seleziona dal menu la voce relativa alla visualizzazione degli ordini eseguiti registrati nel Sistema
    - Il Cliente visualizza a schermo la lista degli ordini eseguiti registrati nel Sistema $arrow$ @UC56.1[Vedi UC56.1, Sez.]
  ],
  inclusioni: [
    - UC56.1 @UC56.1[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini eseguiti registrati nel Sistema per l'utente corrente",
)[#use-case-diagram("56", "UC56 - Visualizza elenco ordini eseguiti")]

Il Caso d'Uso UC56 include cinque ulteriori Casi d'Uso come raffigurato nell'immagine alla pagina successiva.
#use-case-diagram("56-incl", "Inclusioni del Caso d'Uso n.56: UC56.1", width: 75%)
Tale Caso d'Uso e relative inclusioni saranno ora esposte (salvo non siano già state esposte precedentemente).

==== UC56.1: Visualizza singolo elemento lista ordini eseguiti <UC56.1>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di ordini eseguiti registrati nel Sistema per l'utente corrente
  ],
  post: [Per ogni elemento della lista degli ordini eseguiti viene visualizzato ID, data e nome dell'ordine],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - l'ID dell'ordine $arrow$ @UC13[Vedi UC13, Sez.]
      - La data di creazione dell'ordine $arrow$ @UC14[Vedi UC14, Sez.]
      - Il nome dell'ordine $arrow$ @UC15[Vedi UC15, Sez.]
  ],
  inclusioni: [
    - UC13 @UC13[Sez.]
    - UC14 @UC14[Sez.]
    - UC15 @UC15[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare gli ordini eseguiti registrati nel Sistema per l'utente corrente",
)[]

=== UC57: Visualizza ordine eseguito <UC57>

#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
  ],
  post: [Viene visualizzato un ordine eseguito con le seguenti informazioni: ID, data creazione, nome e lista delle merci di tale ordine],
  scenari: [
    - Il Cliente ha selezionato da una lista di ordini eseguiti la visualizzazione di un ordine specifico
    - Il Cliente visualizza del suddetto ordine:
      - ID dell'ordine $arrow$ @UC13[Vedi UC13, Sez.]
      - Data creazione dell'ordine eseguito $arrow$ @UC14[Vedi UC14, Sez.]
      - Nome dell'ordine $arrow$ @UC15[Vedi UC15, Sez.]
      - Lista delle merci $arrow$ @UC57.1[Vedi UC57.1, Sez.]
  ],
  inclusioni: [
    - UC13 @UC13[Sez.]
    - UC14 @UC14[Sez.]
    - UC15 @UC15[Sez.]
    - UC57.1 @UC57.1[Sez.]
  ],
  trigger: "Il Cliente vuole vedere un ordine eseguito specifico registrato nel Sistema per l'utente corrente",
)[#use-case-diagram("57", "UC57 - Visualizza ordine eseguito", width: 60%)]

Il Caso d'Uso UC57 include cinque ulteriori Casi d'Uso come raffigurato nella seguente immagine:
#use-case-diagram(
  "57-incl",
  "Inclusioni del Caso d'Uso n.57: UC13, UC14, UC15, UC57.1 e relative inclusioni",
  width: 79%,
)
Per maggiori informazioni sui Casi d'Uso 13, 14 e 15 si rimanda alle rispettive descrizioni (@UC13, @UC14 e @UC15), mentre per il Caso d'Uso UC57.1 sarà qui di seguito descritto assieme ai Casi d'Uso che lo stesso a sua volta include.

==== UC57.1: Visualizza lista merci ordine eseguito <UC57.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un ordine eseguito registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzata la lista delle merci in un ordine eseguito],
  scenari: [
    - Il Cliente visualizza a schermo la lista della merce aggiunta all'ordine eseguito selezionato $arrow$ @UC57.1.1[Vedi UC57.1.1, Sez.]
  ],
  inclusioni: [
    - UC52.1.1 @UC57.1.1[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini eseguiti la lista delle merci che tali ordini contengono",
)[]

#pagebreak()

===== UC57.1.1: Visualizza singolo elemento lista merci ordine eseguito <UC57.1.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando un elenco di merci di un ordine eseguito registrato nel Sistema per l'utente corrente
  ],
  post: [Per ogni elemento della lista delle merci di un ordine eseguito viene mostrata quantità e nome della merce],
  scenari: [
    - Ogni singolo elemento della lista attualmente visualizzata dal Cliente deve presentare:
      - Q.tà di quella merce nell'ordine eseguito selezionato $arrow$ @UC57.1.1.1[Vedi UC57.1.1.1, Sez.]
      - Nome della merce $arrow$ @UC17[Vedi UC17, Sez.]
  ],
  inclusioni: [
    - UC57.1.1.1 @UC57.1.1.1[Sez.]
    - UC17 @UC17[Sez.]
  ],
  trigger: "Il Cliente vuole visualizzare per gli ordini eseguiti la lista delle merci che tali ordini contengono",
)[]

====== UC57.1.1.1: Visualizza q.tà elemento lista merci ordine eseguito <UC57.1.1.1>
#use-case(
  attore: "Cliente",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Cliente
    - Il Cliente sta visualizzando una lista di merci di un ordine eseguito registrato nel Sistema per l'utente corrente
  ],
  post: [Viene visualizzata la quantità della singola merce],
  scenari: [
    - Viene visualizzata la quantità della singola merce nell'ordine eseguito selezionato
  ],
)[]

/*
APPUNTI VARI
Invio SMS, E-Mail e notifiche interne da parte del BE. -> opzionale ma fatto dal BE. Le notifiche sono già state modellate.
L'attore potrebbe essere un dispositivo GSM e un client Email che riceve la notifica, questo rivolterebbe effettivamente il fatto di esser fatto dal BE
Legato a questo c'è il fatto che l'Admin Locale e quello Globale vogliono registrare un Sistema GSM e un client email presso il Sistema

I requisiti del BE sono più di aggiornamento e l'attore potrebbe essere uno Scheduler. Esempi sono aggiorna informazioni merci disponibili, aggiorna informazioni notifiche rifornimento, aggiorna elenco transazioni (ordini/trasferimenti) non completate, invia conferma ordini, invia conferma transazioni (ordini/trasferimenti), invia notifica email, invia notifica sms, crea backup regolare ecc.
*/

#pagebreak()

=== UC58: Creazione Backup <UC58>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
  ],
  post: [
    - Il Sistema crea un Backup dei dati localmente presenti nel Sistema;
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa alla creazione di un Backup;
  ],
  trigger: "L'Admin Locale vuole creare un Backup del Sistema",
)[#use-case-diagram("58", "UC58 - Creazione Backup")]

=== UC59: Attiva Backup periodico <UC59>

#use-case(
  attore: "Admin Locale",
  attori_secondari: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - Non sono presenti altri Backup periodici attivi
  ],
  post: [
    - Il Sistema comunica allo Scheduler la scelta dell'Admin Locale di realizzare periodicamente un Backup
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa all'attivazione di un Backup periodico;
    - L'Admin Locale inserisce la periodicità $arrow$ @UC59.1[Vedi UC59.1, Sez.]
  ],
  scenari_alternativi: [
    - L'Admin Locale vuole attivare un Backup periodico ma la periodicità inserita non è valida $arrow$ @UC60
  ],
  inclusioni: [
    - UC59.1 @UC59.1[Sez.]
  ],
  estensioni: [
    - UC60 @UC60[Sez.]
  ],
  trigger: "L'Admin Locale vuole attivare un Backup periodico del Sistema",
)[#use-case-diagram("59", "UC59 - Attiva Backup periodico")]

Il Caso d'Uso 59 include un ulteriore Caso d'Uso come mostrato di seguito:
#use-case-diagram("59-incl", "Inclusioni del Caso d'Uso n.59: UC59.1")
Tale Caso d'Uso sarà ora esposto.

==== UC59.1: Inserisci periodicità Backup periodico <UC59.1>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di attivare un Backup periodico
  ],
  post: [
    - Il Sistema conosce la periodicità del Backup periodico;
  ],
  scenari: [
    - L'Admin Locale inserisce la periodicità (in ore) del Backup;
  ],
  trigger: "L'Admin Locale vuole fornire la periodicità con cui effettuare un Backup periodico",
)[]

=== UC60: Periodicità non valida <UC60>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di attivare un Backup periodico
    - L'Admin Locale ha immesso una periodicità non valida (ad esempio negativa)
  ],
  post: [
    - Il Sistema annulla l'operazione di attivazione di un Backup periodico
  ],
  scenari: [
    - Il Sistema ha ricevuto la periodicità inserita dall'Admin Locale, ma questa non è valida (ad esempio perché negativa)
  ],
)[]

=== UC61: Elimina Backup periodico <UC61>

#use-case(
  attore: "Admin Locale",
  attori_secondari: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
  ],
  post: [
    - Il Sistema comunica allo Scheduler la scelta dell'Admin Locale di non realizzare periodicamente un Backup
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa all'eliminazione (disattivazione) di un Backup periodico;
  ],
  scenari_alternativi: [
    - L'Admin Locale vuole eliminare (disattivare) un Backup periodico ma nessun Backup periodico è attivo $arrow$ @UC62
  ],
  estensioni: [
    - UC62 @UC62
  ],
  trigger: "L'Admin Locale vuole eliminare il Backup periodico del Sistema",
)[#use-case-diagram("61", "UC61 - Elimina Backup periodico")]

=== UC62: Nessun Backup periodico attivo <UC62>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di disattivare il Backup periodico
  ],
  post: [
    - Il Sistema annulla l'operazione di eliminazione del Backup periodico
  ],
  scenari: [
    - Il Sistema ha ricevuto la richiesta di disattivazione del Backup periodico, ma nessun Backup periodico è attivo
  ],
)[]

=== UC63: Ripristino dati da ultimo Backup effettuato <UC63>

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
  ],
  post: [
    - Il Sistema avvia il ripristino del Backup
  ],
  scenari: [
    - L'Admin Locale seleziona dal menu principale l'opzione relativa al ripristino dell'ultimo Backup effettuato;
  ],
  scenari_alternativi: [
    - L'Admin Locale ha selezionato dal menu principale l'opzione relativa al ripristino dell'ultimo Backup effettuato, ma nessun Backup è presente $arrow$ UC64[Vedi UC64, Sez.];
  ],
  estensioni: [
    - UC64 @UC64
  ],
  trigger: "L'Admin Locale vuole ripristinare il Sistema all'ultimo Backup effettuato",
)[#use-case-diagram("63", "UC63 - Ripristino dati da ultimo Backup effettuato")]

=== UC64: Errore nessun Backup trovato <UC64> //

#use-case(
  attore: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Locale
    - L'Admin Locale ha scelto di ripristinare l'ultimo Backup effettuato
    - Non è presente alcun Backup
  ],
  post: [
    - Il Sistema annulla l'operazione di ripristino dell'ultimo Backup effettuato
  ],
  scenari: [
    - Il Sistema ha ricevuto la richiesta di ripristino dell'ultimo Backup effettuato da parte dell'Admin Locale, ma non esiste alcun Backup
  ],
)[]

=== UC65: Visualizzazione elenco attività di accesso <UC65>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - L'Admin Globale visualizza la lista delle attività di accesso
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa alla visualizzazione delle attività di accesso
    - L'Admin Globale visualizza a schermo la lista delle attività di accesso $arrow$ @UC65.1[Vedi UC65.1, Sez.]
  ],
  inclusioni: [
    - UC65.1 @UC65.1[Sez.]
  ],
  trigger: "L'Admin Globale vuole visualizzare le attività di accesso",
)[#use-case-diagram("65", "UC65 - Visualizzazione elenco attività di accesso")]

Il Caso d'Uso 65 include un ulteriore Caso d'Uso come mostrato di seguito:
#use-case-diagram("65-incl", "Inclusioni del Caso d'Uso n.65: 65.1 e relative inclusioni", width: 75%)
Tale Caso d'Uso sarà ora esposto assieme alle relative inclusioni.

==== UC65.1: Visualizza elemento lista attività di accesso <UC65.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Il Sistema mostra, per ogni elemento della lista della attività di accesso, indirizzo IP del luogo di accesso, ID del tentativo di accesso e stato dell'accesso (riuscito, bloccato o negato)
  ],
  scenari: [
    - Ogni elemento della lista delle attività di accesso deve presentare:
      - Indirizzo IP del luogo di accesso @UC65.1.1[Vedi UC65.1.1, Sez.]
      - ID del tentativo di accesso @UC65.1.2[Vedi UC65.1.2, Sez.]
      - Stato dell'accesso @UC65.1.3[Vedi UC65.1.3, Sez.]
  ],
  inclusioni: [
    - UC65.1.1 @UC65.1.1[Sez.]
    - UC65.1.2 @UC65.1.2[Sez.]
    - UC65.1.3 @UC65.1.3[Sez.]
  ],
)[]

===== UC65.1.1: Visualizza indirizzo IP del tentativo di accesso <UC65.1.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Viene visualizzato l'indirizzo IP del luogo in cui è stato effettuato il tentativo di accesso
  ],
  scenari: [
    - Viene visualizzato l'indirizzo IP del luogo in cui è stato effettuato il tentativo di accesso
  ],
)[]

===== UC65.1.2: Visualizza ID del tentativo di accesso <UC65.1.2>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Viene visualizzato l'ID del tentativo di accesso
  ],
  scenari: [
    - Viene visualizzato l'ID del tentativo di accesso
  ],
)[]

===== UC65.1.3: Visualizza stato del tentativo di accesso <UC65.1.3>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale sta visualizzando un elenco di attività di accesso
  ],
  post: [
    - Viene visualizzato lo stato del tentativo di accesso
  ],
  scenari: [
    - Viene visualizzato lo stato del tentativo di accesso (riuscito, bloccato o negato)
  ],
)[]

=== UC66: Blocca tentativo di accesso <UC66>

#use-case(
  attore: "Admin Globale" + [\ \ \ ],
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema blocca l'indirizzo IP da cui è stato effettuato il tentativo di accesso selezionato
  ],
  scenari: [
    - L'Admin Globale seleziona dal menu la voce relativa al blocco di una attività di accesso
    - L'Admin Globale inserisce l'ID del tentativo di accesso il cui indirizzo IP deve essere bloccato $arrow$ @UC66.1[Vedi UC66.1, Sez.]
  ],
  inclusioni: [
    - UC66.1 @UC66.1[Sez.]
  ],
  trigger: "L'Admin Globale vuole annullare un tentativo di accesso",
)[#use-case-diagram("66", "UC66 - Blocca tentativo di accesso")]

Il Caso d'Uso 66 include un ulteriore Caso d'Uso come mostrato di seguito:
#use-case-diagram("66-incl", "Inclusione del Caso d'Uso n.66: UC66.1")
Tale Caso d'Uso sarà ora esposto.

==== UC66.1: Inserisci ID tentativo di accesso da bloccare <UC66.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato di voler bloccare un tentativo di accesso
  ],
  post: [
    - Il Sistema conosce l'ID del tentativo di accesso il cui indirizzo IP deve essere bloccato
  ],
  scenari: [
    - L'Admin Globale inserisce l'ID del tentativo di accesso, il cui indirizzo IP deve essere bloccato
  ],
  trigger: "L'Admin Globale vuole bloccare un tentativo di accesso tramite l'identificativo unico",
)[]

=== UC67: Ricezione E-mail evento critico <UC67>
#use-case(
  attore: "Client Email",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
  ],
  post: [
    - Il Client Email riceve una email dal Sistema con le informazioni critiche
  ],
  scenari: [
    - Il Sistema rileva un'informazione critica da segnalare agli Utenti registrati
    - Il Sistema invia un'email ai Client email registrati
  ],
  trigger: "L'Admin Globale/Locale riceve la notifica via e-mail di un evento critico",
)[#use-case-diagram("67", "UC67 - Ricezione E-mail evento critico")]

=== UC68: Ricezione SMS evento critico <UC68>

#use-case(
  attore: "Dispositivo GSM",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
  ],
  post: [
    - Il dispositivo GSM riceve una un sms dal Sistema con le informazioni richieste
  ],
  scenari: [
    - Il Sistema rileva un'informazione critica da segnalare agli Utenti registrati
    - Il Sistema invia un sms ai dispositivi GSM registrati
  ],
  trigger: "L'Admin Globale/Locale riceve la notifica via sms di un evento critico",
)[#use-case-diagram("68", "UC68 - Ricezione SMS evento critico")]

=== UC69: Aggiungi nuovo utente <UC69>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato di voler aggiungere un nuovo utente nel Sistema
  ],
  post: [
    - Il Sistema aggiunge correttamente un nuovo utente nel Sistema.
  ],
  scenari: [
    - L'Admin Globale aggiunge il nuovo utente nel Sistema:
      - L'Admin Globale inserisce il nome per il nuovo utente $arrow$ @UC69.1[Vedi UC69.1, Sez.]
      - L'Admin Globale inserisce la password per il nuovo utente $arrow$ @UC69.2[Vedi UC69.2, Sez.]
      - L'Admin Globale inserisce il ruolo per il nuovo utente $arrow$ @UC69.3[Vedi UC69.3, Sez.]
  ],
  inclusioni: [
    - UC69.1 @UC69.1[Sez.]
    - UC69.2 @UC69.2[Sez.]
    - UC69.3 @UC69.3[Sez.]
  ],
  trigger: "L'Admin Globale aggiunge un nuovo utente all'interno del Sistema",
)[#use-case-diagram("69", "UC69 - Aggiungi nuovo utente")]

Il Caso d'Uso 69 include tre ulteriori Casi d'Uso come mostrato nella seguente figura:
#use-case-diagram("69-incl", "Inclusione del Caso d'Uso n.69: UC69.1, UC69.2, UC69.3")
Tali casi d'uso saranno ora esposti.
==== UC69.1: Inserisci nome nuovo utente <UC69.1>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale vuole inserire il nome per un nuovo utente nel Sistema
  ],
  post: [
    - Il Sistema aggiunge correttamente il nome per il nuovo utente nel Sistema.
  ],
  scenari: [
    - L'Admin Globale vuole inserire il nome per il nuovo utente all'interno del Sistema
  ],
  trigger: "L'Admin Globale inserisce il nome per il nuovo utente all'interno del Sistema",
)[]

==== UC69.2: Inserisci password nuovo utente <UC69.2>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale vuole inserire la password per un nuovo utente nel Sistema
  ],
  post: [
    - Il Sistema aggiunge correttamente la password per il nuovo utente nel Sistema.
  ],
  scenari: [
    - L'Admin Globale vuole inserire la password per il nuovo utente all'interno del Sistema
  ],
  trigger: "L'Admin Globale inserisce la password per il nuovo utente all'interno del Sistema",
)[]

==== UC69.3: Inserisci ruolo nuovo utente <UC69.3>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale vuole inserire il ruolo un nuovo utente nel Sistema
  ],
  post: [
    - Il Sistema aggiunge correttamente il ruolo per il nuovo utente nel Sistema.
  ],
  scenari: [
    - L'Admin Globale vuole inserire il ruolo per il nuovo utente all'interno del Sistema
  ],
  trigger: "L'Admin Globale inserisce il ruolo per il nuovo utente all'interno del Sistema",
)[]

=== UC70: Elimina utente <UC70>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale ha selezionato di voler eliminare un utente pre-esistente nel Sistema
  ],
  post: [
    - Il Sistema elimina correttamente l'utente selezionato dal Sistema.
  ],
  scenari: [
    - L'Admin Globale seleziona l'utente che vuole eliminare dal Sistema $arrow$ @UC71[Vedi UC71, Sez.]
  ],
  inclusioni: [
    - UC71 @UC71[Sez.]
  ],
  trigger: "L'Admin Globale vuole eliminare un determinato utente registrato all'interno del Sistema",
)[#use-case-diagram("70", "UC70 - Elimina utente")]

Il Caso d'Uso 70 include un ulteriore caso d'uso come mostrato nella seguente immagine:
#use-case-diagram("70-incl", "Inclusione del Caso d'Uso n.70: UC71")
Tale Caso d'Uso sarà ora esposto.

=== UC71 - Seleziona nome utente <UC71>

#use-case(
  attore: "Admin Globale",
  attori_secondari: "Admin Locale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
  ],
  post: [
    - Il Sistema conosce il nome utente dell'utente sulla quale effettuare l'operazione
  ],
  scenari: [
    - L'Admin Globale inserisce il nome dell'utente sulla quale vuole effettuare un'operazione.
  ],
  trigger: "L'Admin Globale vuole selezionare il nome utente di un determinato fruitore del Sistema",
)[]

=== UC72 - Promuovi ruolo utente <UC72>

#use-case(
  attore: "Admin Globale",
  pre: [
    - Il Sistema è attivo, in modalità online o offline
    - L'utente è riconosciuto dal Sistema come Admin Globale
    - L'Admin Globale vuole modificare il ruolo e i relativi permessi di un certo utente nel Sistema
  ],
  post: [
    - Il Sistema modifica correttamente i ruoli e i permessi per l'utente selezionato.
  ],
  scenari: [
    - L'Admin Globale seleziona il nome dell'utente a cui verrà promosso il ruolo $arrow$ @UC71[Vedi UC71, Sez.]
  ],
  inclusioni: [
    - UC71 @UC71
  ],
  trigger: "L'Admin Globale vuole modificare il ruolo di un determinato utente registrato nel Sistema",
)[]

//requisiti attività backend: suggerisco di usare Scheduler come attore
=== UC73: Sincronizza elenco merci disponibili <UC73>
#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
  ],
  post: [
    - Il Sistema sincronizza l'elenco delle merci disponibili
  ],
  scenari: [
    - Lo Scheduler inizia l'attività di sincronizzazione dell'elenco merci disponibili, sincronizzando le informazioni di ogni singola merce $arrow$ @UC74[Vedi UC74, Sez.]
  ],
  inclusioni: [
    - UC74 @UC74[Sez.]
  ],
  trigger: "Lo Scheduler deve, periodicamente, sincronizzare le informazioni sull'elenco merci nel Sistema",
)[#use-case-diagram("73", "UC73 - Sincronizza elenco merci disponibili", width: 55%)]

L'UC73 include i seguenti Casi D'Uso, come mostrato nella figura presente nella pagina successiva.
#use-case-diagram("73-incl", "Inclusioni del Caso d'Uso n.73: UC74 e relative inclusioni", width: 85%)
Tali Casi d'Uso con relative inclusioni saranno ora esposti.

=== UC74: Sincronizza singola merce <UC74>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci o di una merce singola è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sulla singola merce
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione delle seguenti informazioni riguardanti la singola merce:
      - Q.tà delle merce localmente disponibile $arrow$ @UC74.2[Vedi UC74.1, Sez.]
      - Q.tà delle merce globalmente disponibile in tutti i magazzini $arrow$ @UC74.2[Vedi UC74.2, Sez.]
      - Nome della merce $arrow$ @UC74.3[Vedi UC74.3, Sez.]
      - Descrizione della merce $arrow$ @UC74.4[Vedi UC74.4, Sez.]
      - ID della merce $arrow$ @UC75[Vedi UC75, Sez.]
  ],
  inclusioni: [
    - UC74.1 @UC74.1[Sez.]
    - UC74.2 @UC74.2[Sez.]
    - UC74.3 @UC74.3[Sez.]
    - UC74.4 @UC74.4[Sez.]
    - UC75 @UC75[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le informazioni sulla singola merce",
)[]

#pagebreak()

==== UC74.1: Sincronizza quantità merce locale <UC74.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - La sincronizzazione di una merce specifica è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sulla quantità locale di una merce
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento delle informazioni sulla quantità locale di una merce
    - Lo Scheduler avvia la sincronizzazione delle informazioni sulla quantità localmente disponibile di una merce
  ],
  trigger: "Lo Scheduler deve sincronizzare la quantità locale di una singola merce",
)[]

==== UC74.2: Sincronizza quantità merce globale <UC74.2>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - La sincronizzazione di una merce specifica è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sulla quantità globale di una merce
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento delle informazioni sulla quantità globale di una merce
    - Lo Scheduler avvia la sincronizzazione delle informazioni sulla quantità globalmente disponibile di una merce
  ],
  trigger: "Lo Scheduler deve sincronizzare la quantità globale di una singola merce",
)[]

==== UC74.3: Sincronizza nome merce <UC74.3>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - La sincronizzazione di una merce specifica è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sul nome di una merce
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento del nome della merce
    - Lo Scheduler avvia la sincronizzazione del nome della merce
  ],
  trigger: "Lo Scheduler deve sincronizzare il nome di una singola merce",
)[]

==== UC74.4: Sincronizza descrizione merce <UC74.4>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - La sincronizzazione di una merce specifica è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sulla descrizione di una merce
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento della descrizione della merce
    - Lo Scheduler avvia la sincronizzazione della descrizione della merce
  ],
  trigger: "Lo Scheduler deve sincronizzare la descrizione di una singola merce",
)[]

=== UC75: Sincronizza ID merce <UC75>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - La sincronizzazione di una merce specifica è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sull'ID di una merce
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento dell'ID della merce
    - Lo Scheduler avvia la sincronizzazione dell'ID della merce
  ],
  trigger: "Lo Scheduler deve sincronizzare l'ID di una singola merce",
)[]

=== UC76: Sincronizza aggiunta merce <UC76> //include sync singola merce

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - Il Sistema ha registrato l'aggiunta di una nuova merce
  ],
  post: [
    - Il Sistema sincronizza i dati aggiornati sulla merce
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dei dati sulla nuova merce $arrow$ @UC74[Vedi UC74, Sez.]
  ],
  inclusioni: [
    - UC74 @UC74[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le informazioni su una nuova merce",
)[#use-case-diagram("76", "UC76 - Sincronizza aggiunta merce")]

Il Caso d'Uso 76 include un ulteriore Caso d'Uso come mostrato in figura:
#use-case-diagram("76-incl", "Inclusioni del Caso d'Uso n.76: UC74")
Le informazioni su tale Caso d'Uso sono reperibili alla @UC74

=== UC77: Sincronizza eliminazione merce <UC77> //include sync singola merce

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - Il Sistema ha registrato l'eliminazione di una merce \ \
  ],
  post: [
    - Il Sistema sincronizza i dati aggiornati sulla merce
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dei dati sulla merce eliminata $arrow$ @UC74[Vedi UC74, Sez.]
  ],
  inclusioni: [
    - UC74 @UC74[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le informazioni su una merce eliminata",
)[#use-case-diagram("77", "UC77 - Sincronizza eliminazione merce")]

Il Caso d'Uso 77 include un ulteriore Caso d'Uso come mostrato in figura:
#use-case-diagram("77-incl", "Inclusioni del Caso d'Uso n.77: UC74")
Le informazioni su tale Caso d'Uso sono reperibili alla @UC74

=== UC78: Sincronizza modifica informazioni merce <UC78> //include sync singola merce

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco delle merci è in corso
    - Il Sistema ha registrato l'eliminazione di una merce \ \
  ],
  post: [
    - Il Sistema sincronizza i dati aggiornati sulla merce
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dei dati sulla merce modificata $arrow$ @UC74[Vedi UC74, Sez.]
  ],
  inclusioni: [
    - UC74 @UC74[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le informazioni su una merce modificata",
)[#use-case-diagram("78", "UC78 - Sincronizza modifica informazioni merce")]

Il Caso d'Uso 78 include un ulteriore Caso d'Uso come mostrato in figura:
#use-case-diagram("78-incl", "Inclusioni del Caso d'Uso n.78: UC74")
Le informazioni su tale Caso d'Uso sono reperibili alla @UC74

=== UC79: Sincronizza elenco ordini <UC79>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
  ],
  post: [
    - Il Sistema sincronizza l'elenco di tutti gli ordini
  ],
  scenari: [
    - Lo Scheduler inizia l'attività di sincronizzazione di tutti gli ordini, sincronizzando le informazioni di ogni singolo ordine $arrow$ @UC79.1[Vedi UC79.1, Sez.]
  ],
  inclusioni: [
    - UC79.1 @UC79.1[Sez.]
  ],
  trigger: "Lo Scheduler deve, periodicamente, sincronizzare le informazioni sull'elenco merci nel Sistema",
)[#use-case-diagram("79", "UC79 - Sincronizza elenco ordini")]

Il Caso d'Uso 79 include ulteriori Casi d'Uso come mostrato in figura:
#use-case-diagram("79-incl", "Inclusioni del Caso d'Uso n.79: UC79.1 e relative inclusioni", width: 100%)
Tale Caso d'Uso e relative inclusioni saranno ora esposte.

==== UC79.1: Sincronizza singolo ordine <UC79.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sul singola ordine
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione delle seguenti informazioni riguardanti la singola merce:
      - ID dell'ordine $arrow$ @UC80[Vedi UC80, Sez.]
      - Data creazione dell'ordine $arrow$ @UC79.1.1[Vedi UC80.1, Sez.]
      - Nome dell'ordine $arrow$ @UC79.1.2[Vedi UC79.1.2, Sez.]
      - Liste delle merci previste nell'ordine @UC79.1.3[Vedi UC80.3, Sez.]
      - Stato dell'ordine @UC81[Vedi UC81, Sez.]
  ],
  inclusioni: [
    - UC79.1.1 @UC79.1.1[Sez.]
    - UC79.1.2 @UC79.1.2[Sez.]
    - UC79.1.3 @UC79.1.3[Sez.]
    - UC80 @UC80[Sez.]
    - UC81 @UC81[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le informazioni sul singolo ordine",
)[]

===== UC79.1.1: Sincronizza Data creazione singolo ordine <UC79.1.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini/trasferimenti è in corso
    - La sincronizzazione di un ordine/trasferimento specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sulla data di creazione di un ordine/trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento della data di creazione dell'ordine/trasferimento
    - Lo Scheduler avvia la sincronizzazione della data di creazione dell'ordine/trasferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare la data di creazione di un ordine/trasferimento",
)[]

===== UC79.1.2: Sincronizza Nome singolo ordine <UC79.1.2>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini/trasferimenti è in corso
    - La sincronizzazione di un ordine/trasferimento specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sul nome di un ordine/trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento del nome dell'ordine/trasferimento
    - Lo Scheduler avvia la sincronizzazione del nome dell'ordine/trasferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare il nome di un ordine/trasferimento",
)[]

===== UC79.1.3: Sincronizza lista merci singolo ordine <UC79.1.3>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini è in corso
    - La sincronizzazione di un ordine specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza l'elenco delle merci di un singolo ordine \ \ \
  ],
  scenari: [
    - Lo Scheduler inizia l'attività di sincronizzazione delle merci di un singolo ordine $arrow$ @UC82[Vedi UC83, Sez.]
  ],
  inclusioni: [
    - UC82 @UC82[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare la lista delle merci di un singolo ordine",
)[]

=== UC80: Sincronizza ID singolo ordine/trasferimento <UC80>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini/trasferimenti è in corso
    - La sincronizzazione di un ordine/trasferimento specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sull'ID di un ordine/trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento dell'ID dell'ordine/trasferimento
    - Lo Scheduler avvia la sincronizzazione dell'ID dell'ordine/trasferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare l'ID di un ordine/trasferimento",
)[]

=== UC81: Sincronizza stato ordine/trasferimento <UC81>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini/trasferimenti è in corso
    - La sincronizzazione di un ordine/trasferimento specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sullo stato di un ordine/trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento dello stato dell'ordine/trasferimento
    - Lo Scheduler avvia la sincronizzazione dello stato dell'ordine/trasferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare lo stato di un ordine/trasferimento",
)[]

=== UC82: Sincronizza singola merce ordine/trasferimento <UC82> //include sincronizza ID merce e 82.1

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini/trasferimenti è in corso
    - La sincronizzazione di un ordine/trasferimento specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sulla singola merce di un ordine/trasferimento \ \ \
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione della singola merce dell'ordine/trasferimento con:
      - ID della merce $arrow$ @UC75[Vedi UC75, Sez.];
      - Q.tà della merce $arrow$ @UC82.1[Vedi UC82.1, Sez.].
  ],
  inclusioni: [
    - UC75 @UC75[Sez.]
    - UC82.1 @UC82.1[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare lo stato della singola merce di un ordine/trasferimento",
)[]

Il Caso d'Uso 82 include due ulteriori Casi d'Uso come mostrato in figura:
#use-case-diagram("82-incl", "Inclusioni del Caso d'Uso n.82: UC75 e UC82.1")
Le informazioni riguardo il caso d'uso UC75 sono reperibili alla @UC75, mentre lo UC82.1 sarà di seguito esposto.

==== UC82.1: Sincronizza quantità merce ordine/trasferimento <UC82.1>
#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco degli ordini/trasferimenti è in corso
    - La sincronizzazione di un ordine/trasferimento specifico è in corso
    - La sincronizzazione di una singola merce dell'ordine/trasferimento specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sulla quantità di una singola merce di un ordine/trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento delle informazioni sulla quantità di una merce in un ordine/trasferimento
    - Lo Scheduler avvia la sincronizzazione della quantità della singola merce nell'ordine/trasferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare la quantità della singola merce di un ordine/trasferimento",
)[]

=== UC83: Sincronizza ordini confermati <UC83>
#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - Il Sistema ha registrato la conferma di un ordine
  ],
  post: [
    - Il Sistema sincronizza tutte le informazioni riguardanti gli ordini confermati
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dell'elenco degli ordini $arrow$ @UC79[Vedi UC79, Sez.]
  ],
  inclusioni: [
    - UC79 @UC79[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare gli ordini confermati",
)[#use-case-diagram("83", "UC83 - Sincronizza ordini confermati", width: 50%)]

Il Caso d'Uso n. 83 include un ulteriore Caso d'Uso come mostrato in figura:
#use-case-diagram("83-incl", "Inclusioni del Caso d'Uso n.83: UC79", width: 50%)
Le informazioni riguardanti tale Caso d'Uso sono disponibili alla @UC79.

=== UC84: Sincronizza ordini cancellati <UC84>
#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - Il Sistema ha registrato la cancellazione di un ordine
  ],
  post: [
    - Il Sistema sincronizza tutte le informazioni riguardanti gli ordini cancellati
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dell'elenco degli ordini $arrow$ @UC79[Vedi UC79, Sez.]
  ],
  inclusioni: [
    - UC79 @UC79[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare gli ordini cancellati",
)[#use-case-diagram("84", "UC84 - Sincronizza ordini cancellati", width: 50%)]

Il Caso d'Uso n. 84 include un ulteriore Caso d'Uso come mostrato in figura:
#use-case-diagram("84-incl", "Inclusioni del Caso d'Uso n.84: UC79", width: 50%)
Le informazioni riguardante il caso d'uso UC79, sono reperibili alla relativa sezione: @UC79.

=== UC85: Sincronizza elenco trasferimenti <UC85> //

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
  ],
  post: [
    - Il Sistema sincronizza tutte le informazioni dell'elenco dei trasferimenti
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione di ogni singolo trasferimento $arrow$ @UC85.1[Vedi UC85.1, Sez.]
  ],
  inclusioni: [
    - UC85.1 @UC85.1[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare l'elenco dei trasferimenti",
)[#use-case-diagram("85", "UC85 - Sincronizza elenco trasferimenti")]

Il Caso d'Uso n. 85 include un ulteriore Caso d'Uso come mostrato in figura:\
#use-case-diagram("85-incl", "Inclusioni del Caso d'Uso n.85: UC85.1 e relative inclusioni", width: 105%);
Le informazioni su tale Caso d'Uso e le relative inclusioni saranno ora esposte.

==== UC85.1: Sincronizza singolo trasferimento <UC85.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei trasferimenti è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni sul singolo trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione delle seguenti informazioni del singolo trasferimento:
      - ID del singolo trasferimento $arrow$ @UC80[Vedi UC80, Sez.]
      - Magazzino destinatario del trasferimento $arrow$ @UC85.1.1[Vedi UC85.1, Sez.]
      - Magazzino mittente del trasferimento $arrow$ @UC85.1.2[Vedi UC85.1.2, Sez.]
      - Stato del trasferimento $arrow$ @UC81[Vedi UC81, Sez.]
      - Lista delle merci del trasferimento $arrow$ @UC85.1.3[Vedi UC85.1.3, Sez.]
  ],
  inclusioni: [
    - UC80 @UC80[Sez.]
    - UC81 @UC81[Sez.]
    - UC85.1.1 @UC85.1.1[Sez.]
    - UC85.1.2 @UC85.1.2[Sez.]
    - UC85.1.2 @UC85.1.3[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le informazioni sul singolo trasferimento",
)[]

===== UC85.1.1: Sincronizza magazzino destinatario trasferimento <UC85.1.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei trasferimenti è in corso
    - La sincronizzazione di un trasferimento nel specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni riguardanti il magazzino destinatario del trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento delle informazioni sul magazzino destinatario del trasferimento
    - Lo Scheduler avvia la sincronizzazione delle informazioni riguardanti il magazzino destinatario del trasferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare il magazzino destinatario del trasferimento",
)[]

#pagebreak()

===== UC85.1.2: Sincronizza magazzino mittente trasferimento <UC85.1.2>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei trasferimenti è in corso
    - La sincronizzazione di un trasferimento nel specifico è in corso
  ],
  post: [
    - Lo Scheduler avvia il reperimento delle informazioni sul magazzino mittente del trasferimento
    - Il Sistema sincronizza le informazioni riguardanti il magazzino mittente del trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione delle informazioni riguardanti il magazzino mittente del trasferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare il magazzino mittente del trasferimento",
)[]

===== UC85.1.3: Sincronizza lista merci trasferimento <UC85.1.3>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei trasferimenti è in corso
    - La sincronizzazione di un trasferimento nel specifico è in corso
  ],
  post: [
    - Il Sistema sincronizza le informazioni riguardanti la lista delle merci del trasferimento
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione delle informazioni riguardanti ogni merce inclusa nel trasferimento $arrow$ @UC82[Vedi UC82, Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare la lista delle merci del trasferimento",
)[]

=== UC86: Sincronizza trasferimenti confermati <UC86>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei trasferimenti confermati è in corso
  ],
  post: [
    - Il Sistema sincronizza tutte le informazioni dell'elenco dei trasferimenti confermati
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dell'elenco dei trasferimenti $arrow$ @UC85[Vedi UC85, Sez.]
  ],
  inclusioni: [
    - UC85 @UC85[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare l'elenco di tutti i trasferimenti confermati",
)[#use-case-diagram("86", "UC86 - Sincronizza trasferimenti confermati")]

Il Caso d'Uso n. 86 include un ulteriore Caso d'Uso come mostrato in figura:\
#use-case-diagram("86-incl", "Inclusione nel Caso d'Uso n.86: UC85")
Le informazioni riguardanti il Caso d'Uso UC85 sono reperibili alla @UC85.

=== UC87: Sincronizza trasferimenti cancellati <UC87>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei trasferimenti cancellati è in corso
  ],
  post: [
    - Il Sistema sincronizza tutte le informazioni dell'elenco dei trasferimenti cancellati
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dell'elenco dei trasferimenti $arrow$ @UC85[Vedi UC85, Sez.]
  ],
  inclusioni: [
    - UC85 @UC85[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare l'elenco di tutti i trasferimenti cancellati",
)[#use-case-diagram("87", "UC87 - Sincronizza trasferimenti cancellati")]

Il Caso d'Uso n. 87 include un ulteriore Caso d'Uso come mostrato in figura:\
#use-case-diagram("87-incl", "Inclusione nel Caso d'Uso n.87: UC85")
Le informazioni riguardanti il Caso d'Uso incluso sono disponibili alla @UC85.

=== UC88: Sincronizza notifiche di rifornimento <UC88>

#use-case(
  attore: "Scheduler" + [ \ \ \ ],
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza tutte le informazioni delle notifiche di rifornimento
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione di ogni singola notifica di rifornimento $arrow$ @UC88.1[Vedi UC88.1, Sez.]
  ],
  inclusioni: [
    - UC88.1 @UC88.1[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare l'elenco delle notifiche di rifornimento",
)[#use-case-diagram("88", "UC88 - Sincronizza notifiche di rifornimento")]

Il Caso d'Uso n. 88 include un ulteriore Caso d'Uso come mostrato in figura:\
#use-case-diagram("88-incl", "Inclusione nel Caso d'Uso n.88: UC88.1 e relative inclusioni", width: 110%)
Le informazioni riguardanti il caso d'uso e le sue inclusioni verranno qui di seguito esposte.

==== UC88.1: Sincronizza singola notifica di rifornimento <UC88.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza tutte le informazioni della singola notifica di rifornimento
  ],
  scenari: [
    - Lo Scheduler, per ogni singola notifica, avvia la sincronizzazione delle seguenti informazioni:
      - ID della notifica di rifornimento $arrow$ @UC88.1.1[Vedi UC88.1.1, Sez.];
      - Magazzino destinatario della notifica di rifornimento $arrow$ @UC88.1.2[Vedi UC88.1.2, Sez.];
      - Stato della notifica di rifornimento $arrow$ @UC88.1.3[Vedi UC88.1.3, Sez.];
      - Elenco delle merce nella notifica di rifornimento $arrow$ @UC88.1.4[Vedi UC88.1.4, Sez.].
  ],
  inclusioni: [
    - UC88.1.1 @UC88.1.1[Sez.]
    - UC88.1.2 @UC88.1.2[Sez.]
    - UC88.1.3 @UC88.1.3[Sez.]
    - UC88.1.4 @UC88.1.4[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare la singola notifica di riferimento",
)[]

===== UC88.1.1: Sincronizza ID notifica rifornimento <UC88.1.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
    - La sincronizzazione di una singola notifica di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza l'ID della singola notifica di rifornimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento dell'ID della notifica di rifornimento
    - Lo Scheduler avvia la sincronizzazione dell'ID della notifica di riferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare l'ID della singola notifica di rifornimento",
)[]

===== UC88.1.2: Sincronizza magazzino destinatario notifica rifornimento <UC88.1.2>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
    - La sincronizzazione di una singola notifica di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza il magazzino destinatario della singola notifica di rifornimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento del magazzino destinatario del rifornimento
    - Lo Scheduler avvia la sincronizzazione del magazzino destinatario della notifica di riferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare il magazzino destinatario della singola notifica di rifornimento",
)[]

#pagebreak()

===== UC88.1.3: Sincronizza stato notifica rifornimento <UC88.1.3>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
    - La sincronizzazione di una singola notifica di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza lo stato della singola notifica di rifornimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento dello stato della notifica di rifornimento
    - Lo Scheduler avvia la sincronizzazione dello stato della notifica di riferimento
  ],
  trigger: "Lo Scheduler deve sincronizzare lo stato della singola notifica di rifornimento",
)[]

===== UC88.1.4: Sincronizza elenco merci notifica rifornimento <UC88.1.4>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
    - La sincronizzazione di una singola notifica di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza l'elenco delle merci della singola notifica di rifornimento
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione della singola merce nella notifica di rifornimento $arrow$ @UC88.1.4.1[Vedi UC88.1.4.1, Sez.]
  ],
  inclusioni: [
    - UC88.1.4.1 @UC88.1.4.1[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare l'elenco delle merci della singola notifica di rifornimento",
)[]

====== UC88.1.4.1: Sincronizza singola merce nella notifica <UC88.1.4.1> //include 75

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
    - La sincronizzazione di una singola notifica di rifornimento è in corso
    - La sincronizzazione dell'elenco merci di una notifica di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza la singola merce nella notifica di rifornimento
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione della singola merce nella notifica di rifornimento con, annesse, la seguente informazioni:
      - ID della merce $arrow$ @UC75[Vedi UC75, Sez.]
      - q.tà della merce da rifornire $arrow$ @UC88.1.4.1.1[Vedi UC88.1.4.1.1, Sez.]
  ],
  inclusioni: [
    - UC75 @UC75[Sez.]
    - UC88.1.4.1.1 @UC88.1.4.1.1[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare la singola merce nella notifica di rifornimento",
)[]

======= UC88.1.4.1.1: Sincronizza q.tà da rifornire merce notifica <UC88.1.4.1.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione delle notifiche di rifornimento è in corso
    - La sincronizzazione di una singola notifica di rifornimento è in corso
    - La sincronizzazione dell'elenco merci di una notifica di rifornimento è in corso
    - La sincronizzazione di una merce dell'elenco merci di una notifica di rifornimento è in corso
  ],
  post: [
    - Il Sistema sincronizza la q.tà della singola merce nella notifica di rifornimento
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento della q.tà da rifornire della merce nell'elenco della merce di una notifica di rifornimento
    - Lo Scheduler avvia la sincronizzazione della q.tà da rifornire per tale merce nella notifica di rifornimento
  ],
  trigger: "Lo Scheduler deve sincronizzare la q.tà singola merce nella notifica di rifornimento",
)[]

=== UC89: Sincronizza notifica rifornimento confermata <UC89>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - Il Sistema ha registrato la conferma di una notifica di rifornimento
  ],
  post: [
    - Il Sistema sincronizza le notifiche di rifornimento confermate
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dell'elenco delle notifiche di rifornimento $arrow$ @UC88[Vedi UC88, Sez.]
  ],
  inclusioni: [
    - UC88 @UC88[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le notifiche di rifornimento confermate",
)[#use-case-diagram("89", "UC89 - Sincronizza notifiche di rifornimento confermate")]

Il Caso d'Uso n. 89 include due ulteriori Casi d'Uso come mostrato in figura:\
#use-case-diagram("89-incl", "Inclusione nel Caso d'Uso n.89: UC88")
Le informazioni riguardanti il Caso d'Uso 88 sono reperibili alla @UC88.

=== UC90: Sincronizza notifica rifornimento cancellata <UC90>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - Il Sistema ha registrato la cancellazione di una notifica di rifornimento
  ],
  post: [
    - Il Sistema sincronizza le notifiche di rifornimento cancellate \ \ \
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione dell'elenco delle notifiche di rifornimento $arrow$ @UC88[Vedi UC88, Sez.]
  ],
  inclusioni: [
    - UC88 @UC88[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare le notifiche di rifornimento cancellate",
)[#use-case-diagram("90", "UC90 - Sincronizza notifiche di rifornimento cancellate")]

Il Caso d'Uso n. 90 include un ulteriore Caso d'Uso come mostrato in figura:\
#use-case-diagram("90-incl", "Inclusione nel Caso d'Uso n.90: UC88")
Le informazioni riguardanti il caso d'uso UC88 è reperibile alla @UC88.

=== UC91: Sincronizza elenco microservizi <UC91>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei microservizi è in corso
  ],
  post: [
    - Il Sistema sincronizza l'elenco dei microservizi \ \ \
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione del singolo microservizio, per tutti i microservizi $arrow$ @UC91.1[Vedi UC91.1, Sez.]
  ],
  inclusioni: [
    - UC91.1 @UC91.1[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare l'elenco dei microservizi",
)[#use-case-diagram("91", "UC91 - Sincronizza elenco microservizi")]

Il Caso d'Uso n. 91 include un ulteriore Caso d'Uso come mostrato in figura:\
#use-case-diagram("91-incl", "Inclusioni nel Caso d'Uso n.91: UC91.1 e relative inclusioni", width: 80%)
Le informazioni riguardanti il caso d'uso UC91.1, e le sue relative inclusioni, verranno di seguito esposte.

==== UC91.1: Sincronizza singolo microservizio <UC91.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei microservizi è in corso
  ],
  post: [
    - Il Sistema sincronizza il singolo microservizio
  ],
  scenari: [
    - Lo Scheduler avvia la sincronizzazione del singolo microservizio con, annesse, le seguenti informazioni:
      - Il nome di tale microservizio $arrow$ @UC91.1.1[Vedi UC91.1.1, Sez.]
      - Le richieste al secondo del microservizio $arrow$ @UC91.1.2[Vedi UC91.1.2, Sez.]
  ],
  inclusioni: [
    - UC91.1.1 @UC91.1.1[Sez.]
    - UC91.1.2 @UC91.1.2[Sez.]
  ],
  trigger: "Lo Scheduler deve sincronizzare il singolo microservizio",
)[]

===== UC91.1.1: Sincronizza nome del singolo microservizio <UC91.1.1>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei microservizi è in corso
    - La sincronizzazione di uno specifico microservizio è in corso
  ],
  post: [
    - Il Sistema sincronizza il nome del singolo microservizio
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento del nome del singolo microservizio
    - Lo Scheduler avvia la sincronizzazione del nome di tale microservizio
  ],
  trigger: "Lo Scheduler deve sincronizzare il nome del singolo microservizio",
)[]

===== UC91.1.2: Sincronizza richieste al secondo singolo microservizio <UC91.1.2>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - La sincronizzazione dell'elenco dei microservizi è in corso
    - La sincronizzazione di uno specifico microservizio è in corso
  ],
  post: [
    - Il Sistema sincronizza le richieste al secondo del singolo microservizio
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento delle richieste al secondo del singolo microservizio
    - Lo Scheduler avvia la sincronizzazione delle richieste al secondo di tale microservizio
  ],
  trigger: "Lo Scheduler deve sincronizzare le richieste al secondo del singolo microservizio",
)[]

=== UC92: Sincronizza soglia minima di allerta merce <UC92>

#use-case(
  attore: "Scheduler",
  pre: [
    - Il Sistema è attivo, in modalità online
    - Il Sistema ha registrato un cambiamento alla soglia minima per una merce
  ],
  post: [
    - Il Sistema sincronizza la soglia minima di allerta per la merce la cui soglia è stata modificata
  ],
  scenari: [
    - Lo Scheduler avvia il reperimento dell'ID della merce la cui soglia è stata modificata
    - Lo Scheduler avvia il reperimento della nuova soglia per tale merce
    - Lo Scheduler avvia la sincronizzazione della soglia minima di allerta per tale merce
  ],
  trigger: "Lo Scheduler deve sincronizzare la soglia minima di allerta per le merci",
)[#use-case-diagram("92", "UC92 - Sincronizza soglia minima di allerta merce")]

#pagebreak()
= Requisiti

Verranno ora descritti i requisiti che _ALimitedGroup_ ha individuato, raggruppati per requisiti:
- *Funzionali*, ovvero requisiti che rappresentano qualcosa che il Sistema sviluppato deve avere per soddisfare un'aspettativa;
- *Qualità*, ovvero requisiti che devono essere soddisfatti per accertare la qualità di quanto realizzato;
- *Vincolo*, ovvero restrizioni poste al Sistema, quali, a titolo di esempio, sull'uso di alcune tecnologie;

Per la nomenclatura utilizzata si consiglia di leggere la Sez. 2.2.2.2 delle #link("")[*Norme di Progetto*] [PROSEGUIRE](inserisci link)

== Requisiti Funzionali

#show figure: set block(breakable: true)
#show table.cell.where(x: 0): strong
//#show table.cell.where(x: 1):
//#show table: block.with(stroke: (y: 1pt)
#figure(
  table(
    align: left,
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    stroke: (x, y) => (
      left: if (x > 0) { 0pt } else { 1pt },
      right: 1pt,
      top: if (y < 2) { 1pt } else { 0pt },
      bottom: 1pt,
    ),
    columns: 3,
    inset: 8pt,
    table.header(
      [#text(fill: white)[*Codice*]],
      [#text(fill: white)[*Descrizione*]],
      [#text(fill: white)[*Fonti*]],
    ),

    [R-1-F-Ob], [L'Utente deve poter autenticarsi presso il Sistema], [@UC1[UC1, Sez.]],
    [R-2-F-Ob],
    [L'Utente deve inserire la tipologia di utente (Cliente, Admin Globale o Admin Locale) per potersi autenticare al Sistema],
    [@UC1[UC1, Sez.] \ @UC1.1[UC1.1, Sez.]],

    [R-3-F-De],
    [L'Utente deve inserire il proprio Username per potersi autenticare],
    [@UC1[UC1, Sez.] \ @UC1.2[UC1.2, Sez.]],

    [R-4-F-De],
    [L'Utente deve inserire la propria Password per potersi autenticare],
    [@UC1[UC1, Sez.] \ @UC1.3[UC1.3, Sez.]],

    [R-5-F-Ob],
    [L'Utente deve ricevere un errore in seguito ad un tentativo di accesso/autenticazione non riuscito],
    [@UC2[UC2, Sez.]],

    [R-6-F-Ob], [Il Cliente deve poter creare un ordine che può confermare in seguito.], [@UC3[UC3, Sez.]],
    [R-7-F-Ob],
    [Il Cliente deve inserire il nome dell'ordine al momento della creazione di un nuovo ordine da confermare],
    [@UC3[UC3, Sez.] \ @UC3.1[UC3.1, Sez.]],

    [R-8-F-Ob],
    [Il Cliente deve inserire il nominativo del destinatario dell'ordine al momento della creazione di un nuovo ordine da confermare],
    [@UC3[UC3, Sez.] \ @UC3.2[UC3.2, Sez.]],

    [R-9-F-Ob],
    [Il Cliente deve inserire l'indirizzo di spedizione dell'ordine al momento della creazione di un nuovo ordine da confermare],
    [@UC3[UC3, Sez.] \ @UC3.3[UC3.3, Sez.]],

    [R-10-F-Ob],
    [Il Cliente deve poter aggiungere merce ad un ordine non ancora confermato, indipendentemente se si tratta di un ordine di natura locale (limitata al magazzino corrente) o globale],
    [@UC4[UC4, Sez.]],

    [R-11-F-Ob],
    [Il Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, deve selezionare la merce che vuole aggiungere ad un ordine non ancora confermato],
    [@UC4[UC4, Sez.] \ @UC5[UC5, Sez.]],

    [R-12-F-Ob],
    [Il Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, deve inserire il quantitativo della merce che vuole aggiungere ad un ordine non ancora confermato],
    [@UC4[UC4, Sez.] \ @UC6[UC6, Sez.]],

    [R-13-F-Ob],
    [Il Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, deve selezionare l'ordine non ancora confermato alla quale vuole aggiungere la merce],
    [@UC4[UC4, Sez.] \ @UC9[UC9, Sez.]],

    [R-14-F-Ob],
    [Il Cliente deve ricevere un errore qualora la merce aggiunta all'ordine non risulti essere valida (ovvero la quantità della merce è insufficiente oppure la merce non esiste)],
    [@UC7[UC7, Sez.]],

    [R-15-F-Ob],
    [Il Cliente deve ricevere un errore quando sta cercando di fare un'operazione su un ordine non confermato (quale l'aggiunta di merce, la cancellazione od una conferma) ma nessun ordine non confermato è disponibile],
    [@UC8[UC8, Sez.]],

    [R-16-F-Ob],
    [Il Cliente deve poter cancellare un ordine non ancora confermato, selezionando quale ordine cancellare],
    [@UC10[UC10, Sez.] \ @UC9[UC9, Sez.]],

    [R-17-F-Ob],
    [Il Cliente deve poter confermare un ordine non ancora confermato, selezionando quale ordine cancellare],
    [@UC11[UC11, Sez.] \ @UC9[UC9, Sez.]],

    [R-18-F-Ob],
    [Il Cliente deve poter visualizzare l'elenco degli ordini non confermati per l'utente attualmente autenticato.],
    [@UC12[UC12, Sez.]],

    [R-19-F-Ob],
    [Il Cliente deve poter visualizzare l'ID di ciascun ordine nella lista degli ordini non confermati],
    [@UC12.1[UC12.1, Sez.] \ @UC13[UC13, Sez.]],

    [R-20-F-Ob],
    [Il Cliente deve poter visualizzare la data di creazione di ciascun ordine nella lista degli ordini non confermati],
    [@UC12.1[UC12.1, Sez.] \ @UC14[UC14, Sez.]],

    [R-21-F-Ob],
    [Il Cliente deve poter visualizzare il nome di ciascun ordine nella lista degli ordini non confermati],
    [@UC12.1[UC12.1, Sez.] \ @UC15[UC15, Sez.]],

    [R-22-F-Ob], [Il Cliente deve poter consultare i dettagli di un ordine non confermato.], [@UC16[UC16, Sez.]],
    [R-23-F-Ob],
    [Il Cliente, visualizzando un ordine non confermato nel dettaglio, deve visualizzarne l'ID],
    [@UC16[UC16, Sez.] \ @UC13[UC13, Sez.]],

    [R-24-F-Ob],
    [Il Cliente, visualizzando un ordine non confermato nel dettaglio, deve visualizzarne la data di creazione],
    [@UC16[UC16, Sez.] \ @UC14[UC14, Sez.]],

    [R-25-F-Ob],
    [Il Cliente, visualizzando un ordine non confermato nel dettaglio, deve visualizzarne il nome],
    [@UC16[UC16, Sez.] \ @UC15[UC15, Sez.]],

    [R-26-F-Ob],
    [Il Cliente, visualizzando un ordine non confermato nel dettaglio, deve visualizzarne la lista delle merci],
    [@UC16[UC16, Sez.] \ @UC16.1[UC16.1, Sez.]],

    [R-27-F-Ob],
    [Il Cliente, visualizzando l'elenco merce di un ordine non confermato, deve poter visualizzare la quantità della merce;],
    [@UC16.1.1[UC16.1.1, Sez.] \ @UC16.1.1.1[UC16.1.1.1, Sez.]],

    [R-28-F-Ob],
    [Il Cliente, visualizzando l'elenco merce di un ordine non confermato, deve poter visualizzare il nome della merce],
    [@UC16.1.1[UC16.1.1, Sez.] \ @UC17[UC17, Sez.]],

    [R-29-F-Ob],
    [Il Cliente deve poter visualizzare la lista delle merci nel Sistema.],
    [@UC18[UC18, Sez.]],

    [R-30-F-Ob], [Il Cliente visualizzando la lista delle merci nel Sistema, deve poter visualizzare l'ID di ciascuna delle merci], [@UC18.1[UC18.1, Sez.] \ @UC19[UC19, Sez.]],
    [R-31-F-Ob], [Il Cliente visualizzando la lista delle merci nel Sistema, deve poter visualizzare il nome di ciascuna delle merci], [@UC18.1[UC18.1, Sez.] \ @UC17[UC17, Sez.]],
    [R-32-F-Ob], [Il Cliente visualizzando la lista delle merci nel Sistema, deve poter visualizzare la quantità della merce complessiva in tutti i magazzini di ciascuna delle merci], [@UC18.1[UC18.1, Sez.] \ @UC20[UC20, Sez.]],
    [R-33-F-Ob], [Il Cliente visualizzando la lista delle merci nel Sistema, deve poter visualizzare la quantità della merce attualmente presente nel magazzino di ciascuna delle merci], [@UC18.1[UC18.1, Sez.] \ @UC21[UC21, Sez.]],

    [R-34-F-Ob],
    [Il Cliente deve poter visualizzare una merce nel Sistema nel dettaglio],
    [@UC22[UC22, Sez.]],

    [R-35-F-Ob], [Il Cliente visualizzando una merce specifica nel Sistema, deve poter visualizzare l'ID di ciascuna delle merci], [@UC22[UC22, Sez.] \ @UC19[UC19, Sez.]],
    [R-36-F-Ob], [Il Cliente visualizzando una merce specifica nel Sistema, deve poter visualizzare il nome di ciascuna delle merci], [@UC22[UC22, Sez.] \ @UC17[UC17, Sez.]],
    [R-37-F-Ob], [Il Cliente visualizzando una merce specifica nel Sistema, deve poter visualizzare la quantità della merce complessiva in tutti i magazzini di ciascuna delle merci], [@UC22[UC22, Sez.] \ @UC20[UC20, Sez.]],
    [R-38-F-Ob], [Il Cliente visualizzando una merce specifica nel Sistema, deve poter visualizzare la quantità della merce attualmente presente nel magazzino di ciascuna delle merci], [@UC22[UC22, Sez.] \ @UC21[UC21, Sez.]],
    [R-39-F-Ob], [Il Cliente visualizzando una merce specifica nel Sistema, deve poter visualizzare la descrizione di ciascuna delle merci], [@UC22[UC22, Sez.] \ @UC22.1[UC22.1, Sez.]],

    [R-40-F-Ob],
    [L'Admin Globale deve poter creare un trasferimento da confermare in seguito.],
    [@UC23[UC23, Sez.]],

    [R-41-F-Ob],
    [L'Admin Globale, durante la creazione di un trasferimento da confermare in seguito, deve poter creare un trasferimento da confermare in seguito, deve selezionare il magazzino mittente],
    [@UC23[UC23, Sez.] \ @UC23.1[UC23.1, Sez.]],

    [R-42-F-Ob],
    [L'Admin Globale, durante la creazione di un trasferimento da confermare in seguito, deve selezionare il magazzino destinatario],
    [@UC23[UC23, Sez.] \ @UC23.2[UC23.2, Sez.]],

    [R-43-F-Ob],
    [L'Admin Globale deve poter aggiungere della merce ad un trasferimento non confermato],
    [@UC24[UC24, Sez.] \ @UC25[UC25, Sez.] \ @UC5[UC5, Sez.] \ @UC6[UC6, Sez.]],

    [R-44-F-Ob],
    [L'Admin Globale, durante l'operazione di aggiunta di merce ad un trasferimento non confermato, deve selezionare la merce da aggiungere],
    [@UC24[UC24, Sez.] \ @UC5[UC5, Sez.]],

    [R-145-F-Ob],
    [L'Admin Globale, durante l'operazione di aggiunta di merce ad un trasferimento non confermato, deve selezionare la quantità di merce da aggiungere],
    [@UC24[UC24, Sez.] \ @UC6[UC6, Sez.]],

    [R-46-F-Ob],
    [L'Admin Globale, durante l'operazione di aggiunta di merce ad un trasferimento non confermato, deve selezionare il trasferimento non confermato alla quale aggiungere la merce],
    [@UC24[UC24, Sez.] \ @UC25[UC25, Sez.]],

    [R-47-F-Ob],
    [L'Admin Globale deve poter confermare un trasferimento non ancora confermato, selezionando quale trasferimento confermare],
    [@UC26[UC26, Sez.] \ @UC25[UC25, Sez.]],

    [R-48-F-Ob],
    [L'Admin Globale deve ricevere un errore se la merce in un trasferimento che vuole confermare non è più disponibile in quantità sufficiente o non è più esistente nel Sistema],
    [@UC7[UC7, Sez.]],

    [R-49-F-Ob],
    [L'Admin Globale deve ricevere un errore qualora selezioni di voler aggiungere merce, confermare o cancellare un trasferimento non confermato ma nessun trasferimento non confermato risulta essere presente],
    [@UC27[UC27, Sez.]],

    [R-50-F-Ob],
    [L'Admin Globale deve poter cancellare un trasferimento non ancora confermato, selezionando quale trasferimento cancellare],
    [@UC28[UC28, Sez.] \ @UC25[UC25, Sez.]],

    [R-51-F-Ob],
    [L'Admin Globale deve poter visualizzare l'elenco di tutti i trasferimenti],
    [@UC29[UC29, Sez.]],

    [R-52-F-Ob],
    [L'Admin Globale deve poter visualizzare per ogni trasferimento dell'elenco di tutti i trasferimenti, l'ID del trasferimento],
    [@UC29.1[UC29.1, Sez.] \ @UC30[UC30, Sez.]],

    [R-53-F-Ob],
    [L'Admin Globale deve poter visualizzare per ogni trasferimento dell'elenco di tutti i trasferimenti, lo stato del trasferimento],
    [@UC29.1[UC29.1, Sez.] \ @UC31[UC31, Sez.]],

    [R-54-F-Ob],
    [L'Admin Globale deve poter visualizzare un singolo trasferimento nello specifico],
    [@UC32[UC32, Sez.]],

    [R-55-F-Ob], [L'Admin Globale, visualizzando un singolo trasferimento, deve visualizzare l'ID del trasferimento], [@UC32[UC32, Sez.] \ @UC30[UC30, Sez.]],
    [R-56-F-Ob], [L'Admin Globale, visualizzando un singolo trasferimento, deve visualizzare il magazzino mittente del trasferimento], [@UC32[UC32, Sez.] \ @UC32.1[UC32.1, Sez.]],
    [R-57-F-Ob], [L'Admin Globale, visualizzando un singolo trasferimento, deve visualizzare il magazzino di destinazione del trasferimento], [@UC32[UC32, Sez.] \ @UC32.2[UC32.2, Sez.]],
    [R-58-F-Ob], [L'Admin Globale, visualizzando un singolo trasferimento, deve visualizzare lo stato del trasferimento], [@UC32[UC32, Sez.] \ @UC31[UC31, Sez.]],
    [R-59-F-Ob], [L'Admin Globale, visualizzando un singolo trasferimento, deve visualizzare l'elenco della merce interessata dal trasferimento], [@UC32[UC32, Sez.] \ @UC32.3[UC32.3, Sez.]],

    [R-60-F-Ob],
    [L'Admin Globale, visualizzando un trasferimento nel dettaglio, deve visualizzare per ogni merce interessata il nome di tale merce],
    [@UC32.3.1[UC32.3.1, Sez.] \ @UC17[UC17, Sez.]],

    [R-61-F-Ob],
    [L'Admin Globale, visualizzando un trasferimento nel dettaglio, deve visualizzare per ogni merce interessata la quantità di tale merce],
    [@UC32.3.1[UC32.3.1, Sez.] \ @UC32.3.1.1[UC32.3.1.1, Sez.]],

    [R-62-F-Ob],
    [L'Admin Globale deve poter visualizzare l'elenco delle notifiche contenenti i consigli di rifornimento.],
    [@UC33[UC33, Sez.]],

    [R-63-F-Ob],
    [L'Admin Globale deve visualizzare, per ogni notifica nell'elenco delle notifiche di rifornimento, l'ID della notifica],
    [@UC34[UC34, Sez.] \ @UC36[UC36, Sez.]],

    [R-64-F-Ob],
    [L'Admin Globale deve visualizzare, per ogni notifica nell'elenco delle notifiche di rifornimento, lo stato della notifica (confermato, da confermare, rifiutato)],
    [@UC34[UC34, Sez.] \ @UC35[UC35, Sez.]],

    [R-65-F-Ob],
    [L'Admin Globale deve ricevere un messaggio di errore quando tenta di compiere un'azione sulle notifiche di rifornimento, ma nessuna notifica è disponibile],
    [@UC37[UC37, Sez.]],

    [R-66-F-De],
    [L'Admin Globale deve poter visualizzare le notifiche di rifornimento suggerite da un LLM, visualizzandone ID e stato (confermato, da confermare, rifiutato)],
    [@UC38[UC38, Sez.]],

    [R-67-F-Ob],
    [L'Admin Globale deve visualizzare, per ogni notifica nell'elenco delle notifiche di rifornimento da parte di un LLM, l'ID della notifica],
    [@UC34[UC34, Sez.] \ @UC36[UC36, Sez.]],

    [R-68-F-Ob],
    [L'Admin Globale deve visualizzare, per ogni notifica nell'elenco delle notifiche di rifornimento da parte di un LLM, lo stato della notifica (confermato, da confermare, rifiutato)],
    [@UC34[UC34, Sez.] \ @UC35[UC35, Sez.]],

    [R-69-F-Ob],
    [L'Admin Globale deve poter visualizzare una notifica di rifornimento nello specifico],
    [@UC39[UC39, Sez.]],

    [R-70-F-Ob], [L'Admin Globale, visualizzando una notifica di rifornimento nello specifico, deve visualizzarne l'ID], [@UC39[UC39, Sez.] \ @UC36[UC36, Sez.]],
    [R-71-F-Ob], [L'Admin Globale, visualizzando una notifica di rifornimento nello specifico, deve visualizzarne lo stato (confermato, da confermare, rifiutato)], [@UC39[UC39, Sez.] \ @UC35[UC35, Sez.]],
    [R-72-F-Ob], [L'Admin Globale, visualizzando una notifica di rifornimento nello specifico, deve visualizzarne il magazzino destinatario], [@UC39[UC39, Sez.] \ @UC39.1[UC39.1, Sez.]],
    [R-73-F-Ob], [L'Admin Globale, visualizzando una notifica di rifornimento nello specifico, deve visualizzarne l'elenco della merce], [@UC39[UC39, Sez.] \ @UC39.2[UC39.2, Sez.]],

    [R-74-F-Ob],
    [Per ciascuna merce il cui rifornimento è consigliato da una notifica di rifornimento, l'Admin Globale deve visualizzare, quando sta visualizzando una notifica in particolare, l'ID della merce],
    [@UC39.2.1[UC39.2.1, Sez.] \ @UC19[UC19, Sez.]],

    [R-75-F-Ob],
    [Per ciascuna merce il cui rifornimento è consigliato da una notifica di rifornimento, l'Admin Globale deve visualizzare, quando sta visualizzando una notifica in particolare, il nome della merce],
    [@UC39.2.1[UC39.2.1, Sez.] \ @UC17[UC17, Sez.]],

    [R-76-F-Ob],
    [Per ciascuna merce il cui rifornimento è consigliato da una notifica di rifornimento, l'Admin Globale deve visualizzare, quando sta visualizzando una notifica in particolare, la quantità della merce da rifornire],
    [@UC39.2.1[UC39.2.1, Sez.] \ @UC39.2.1.1[UC 39.2.1.1, Sez.]],

    [R-77-F-Ob],
    [L'Admin Globale deve poter accettare una notifica di rifornimento non ancora accettata, selezionando quale accettare],
    [@UC40[UC40, Sez.] \ @UC41[UC41, Sez.]],

    [R-78-F-Ob],
    [L'Admin Globale deve poter rifiutare una notifica di rifornimento non ancora accettata, selezionando quale rifiutare],
    [@UC42[UC42, Sez.] \ @UC41[UC41, Sez.]],

    [R-79-F-Ob],
    [L'Admin Globale deve poter visualizzare l'elenco dei microservizi],
    [@UC43[UC43, Sez.]],

    [R-80-F-Ob], [L'Admin Globale, visualizzando l'elenco dei microservizi, deve visualizzare il nome di ciascun microservizio], [@UC43.1[UC43.1, Sez.] \ @UC43.1.2[UC43.1.2, Sez.]],
    [R-82-F-Ob], [L'Admin Globale, visualizzando l'elenco dei microservizi, deve visualizzare il numero di richieste al secondo di ciascun microservizio], [@UC43.1[UC43.1, Sez.] \ @UC43.1.1[UC43.1.1, Sez.]],

    [R-83-F-Ob],
    [L'Admin Globale deve poter esportare gli ordini eseguiti su un file di tipo _.csv_],
    [@UC44[UC44, Sez.]],

    [R-84-F-Ob],
    [L'Admin Globale deve ricevere un errore quando tenta di esportare degli ordini in un file in formato _.csv_ ma nessun ordine da esportare è presente],
    [@UC45[UC45, Sez.]],

    [R-85-F-Ob],
    [L'Admin Globale deve poter esportare il report dell'inventario globale in un file in formato _.csv_],
    [@UC46[UC46, Sez.]],

    [R-86-F-Ob],
    [L'Admin Globale deve ricevere un errore quando cerca di esportare l'inventario ma nessun dato è disponibile],
    [@UC47[UC47, Sez.]],

    [R-87-F-Ob],
    [L'Admin Globale deve poter impostare una soglia minima di allerta per una merce],
    [@UC48[UC48, Sez.]],

    [R-88-F-Ob], [L'Admin Globale, impostando una soglia minima di allerta, deve selezionare la merce a cui assegnare la nuova soglia], [@UC48[UC48, Sez.] \ @UC49[UC49, Sez.]],
    [R-89-F-Ob], [L'Admin Globale, impostando una soglia minima di allerta, deve inserire la nuova soglia], [@UC48[UC48, Sez.] \ @UC48.1[UC48.1, Sez.]],

    [R-90-F-Ob],
    [L'Admin Globale deve ricevere un errore se la soglia minima di allerta che ha impostato non è valida (ad esempio perché negativa)],
    [@UC50[UC50, Sez.]],
    //
    [R-91-F-Ob],
    [L'Admin Locale deve poter manualmente aggiungere stock (quantità) di merce ad una merce esistente nel Sistema],
    [@UC51[UC51, Sez.]],

    [R-92-F-Ob], [L'Admin Locale, aggiungendo uno stock di merce, deve selezionare la merce a cui aggiungere lo stock], [@UC51[UC51, Sez.] \ @UC49[UC49, Sez.]],
    [R-93-F-Ob], [L'Admin Locale, aggiungendo uno stock di merce, deve inserire la quantità da aggiungere], [@UC51[UC51, Sez.] \ @UC51.1[UC51.1, Sez.]],

    [R-94-F-Ob],
    [L'Admin Globale deve poter creare (aggiungere) una merce nel Sistema],
    [@UC52[UC52, Sez.]],

    [R-95-F-Ob], [L'Admin Globale, creando (aggiungendo) una merce al Sistema, deve indicare il nome], [@UC52[UC52, Sez.] \ @UC53[UC53, Sez.]],
    [R-96-F-Ob], [L'Admin Globale, creando (aggiungendo) una merce al Sistema, deve indicare la descrizione], [@UC52[UC52, Sez.] \ @UC54[UC54, Sez.]],

    [R-97-F-Ob],
    [L'Admin Globale deve poter aggiornare le informazioni di una merce],
    [@UC55[UC55, Sez.]],

    [R-98-F-Ob], [L'Admin Globale, modificando una merce del Sistema, deve indicare quale merce modificare], [@UC55[UC55, Sez.] \ @UC49[UC49, Sez.]],
    [R-99-F-Ob], [L'Admin Globale, modificando una merce del Sistema, deve indicare il nome], [@UC55[UC55, Sez.] \ @UC53[UC53, Sez.]],
    [R-100-F-Ob], [L'Admin Globale, modificando una merce del Sistema, deve indicare la descrizione], [@UC55[UC55, Sez.] \ @UC54[UC54, Sez.]],

    [R-101-F-Ob],
    [Il Cliente deve poter visualizzare l'elenco degli ordini eseguiti],
    [@UC56[UC56, Sez.] \ @UC56.1[UC56.1, Sez.] \ @UC13[UC13, Sez.] \ @UC14[UC14, Sez.] \ @UC15[UC15, Sez.]],

    [R-102-F-Ob], [Il Cliente, per ciascun ordine nell'elenco degli ordini eseguiti, deve visualizzarne l'ID], [@UC56.1[UC56.1, Sez.] \ @UC13[UC13, Sez.]],
    [R-103-F-Ob], [Il Cliente, per ciascun ordine nell'elenco degli ordini eseguiti, deve visualizzarne la data di creazione], [@UC56.1[UC56.1, Sez.] \ @UC14[UC14, Sez.]],
    [R-104-F-Ob], [Il Cliente, per ciascun ordine nell'elenco degli ordini eseguiti, deve visualizzarne il nome], [@UC56.1[UC56.1, Sez.] \ @UC15[UC15, Sez.]],

    [R-105-F-Ob],
    [Il Cliente deve poter visualizzare il dettaglio di un ordine eseguito],
    [@UC57[UC57, Sez.]],

    [R-106-F-Ob], [Il Cliente, visualizzando un ordine eseguito nel dettaglio, deve visualizzarne l'ID], [@UC57[UC57, Sez.] \ @UC13[UC13, Sez.]],
    [R-107-F-Ob], [Il Cliente, visualizzando un ordine eseguito nel dettaglio, deve visualizzarne la data di creazione], [@UC57[UC57, Sez.] \ @UC14[UC14, Sez.]],
    [R-108-F-Ob], [Il Cliente, visualizzando un ordine eseguito nel dettaglio, deve visualizzarne il nome], [@UC57[UC57, Sez.] \ @UC15[UC15, Sez.]],
    [R-109-F-Ob], [Il Cliente, visualizzando un ordine eseguito nel dettaglio, deve visualizzarne la lista delle merci], [@UC57[UC57, Sez.] \ @UC57.1[UC57.1, Sez.]],

    [R-110-F-Ob],
    [Per ogni merce nella lista delle merci di un ordine eseguito, il Cliente deve visualizzare il nome della merce],
    [@UC57.1.1[UC57.1.1, Sez.] \ @UC17[UC17, Sez.]],
    [R-111-F-Ob],
    [Per ogni merce nella lista delle merci di un ordine eseguito, il Cliente deve visualizzare la quantità interessata dall'ordine],
    [@UC57.1.1[UC57.1.1, Sez.] \ @UC57.1.1.1[UC57.1.1.1, Sez.]],

    [R-112-F-De],
    [L'Admin Locale deve avere la possibilità di creare un Backup del proprio magazzino],
    [@UC58[UC58, Sez.]],

    [R-113-F-De],
    [L'Admin Locale deve avere la possibilità di attivare un Backup periodico del proprio magazzino, selezionandone la periodicità],
    [@UC59[UC59, Sez.] \ @UC59.1[UC59.1, Sez.]],

    [R-114-F-De],
    [L'Admin Locale deve ricevere un errore se la periodicità del Backup periodico che ha selezionato non è valida],
    [@UC60[UC60, Sez.]],

    [R-115-F-De], [L'Admin Locale deve poter eliminare la realizzazione del Backup periodico], [@UC61[UC61, Sez.]],

    [R-116-F-De],
    [L'Admin Locale deve ricevere un errore quando vuole eliminare la realizzazione di un Backup periodico ma non è attivo un Backup periodico],
    [@UC62[UC62, Sez.]],

    [R-117-F-De],
    [L'Admin Locale deve avere la possibilità di ripristinare i dati dell'ultimo Backup effettuato],
    [@UC63[UC63, Sez.]],

    [R-118-F-De],
    [L'Admin Locale deve ricevere un errore quando vuole ripristinare i dati dell'ultimo Backup effettuato ma nessun Backup è presente],
    [@UC64[UC64, Sez.]],

    [R-119-F-De],
    [L'Admin Globale deve poter visualizzare l'elenco delle attività di accesso],
    [@UC65[UC65, Sez.]],

    [R-120-F-De], [L'Admin Globale, visualizzando l'elenco delle attività di accesso, deve visualizzare l'Indirizzo IP del luogo di accesso di ciascuna], [@UC65.1[UC65.1, Sez.] \ @UC65.1.1[UC65.1.1, Sez.]],
    [R-121-F-De], [L'Admin Globale, visualizzando l'elenco delle attività di accesso, deve visualizzare l'ID di ciascuna], [@UC65.1[UC65.1, Sez.] \ @UC65.1.2[UC65.1.2, Sez.]],
    [R-122-F-De], [L'Admin Globale, visualizzando l'elenco delle attività di accesso, deve visualizzare lo stato di ciascuna (riuscito, bloccato o negato)], [@UC65.1[UC65.1, Sez.] \ @UC65.1.3[UC65.1.3, Sez.]],

    [R-123-F-De],
    [L'Admin Globale deve poter bloccare un tentativo di accesso, bloccando l'indirizzo IP dalla quale questo è avvenuto, inserendo l'ID del tentativo],
    [@UC66[UC66, Sez.] \ @UC66.1[UC66.1]],

    [R-124-F-De],
    [Gli Admin Globali devono ricevere notifiche email/sms per attività di opportuna importanza, quali il raggiungimento di scorte minime o la necessità di approvare un rifornimento],
    [@UC67[UC67, Sez.] \ @UC68[UC68, Sez.]],

    [R-125-F-De],
    [L'Admin Globale deve avere la possibilità di aggiungere un utente al deSistema],
    [@UC69[UC69, Sez.]],

    [R-126-F-De], [L'Admin Globale, aggiungendo un nuovo utente, deve inserirne il nome], [@UC69[UC69, Sez.] \ @UC69.1[UC69.1, Sez.]],
    [R-127-F-De], [L'Admin Globale, aggiungendo un nuovo utente, deve inserirne la Password], [@UC69[UC69, Sez.] \ @UC69.2[UC69.2, Sez.]],
    [R-128-F-De], [L'Admin Globale, aggiungendo un nuovo utente, deve inserirne il ruolo], [@UC69[UC69, Sez.] \ @UC69.3[UC69.3, Sez.]],

    [R-129-F-De], [L'Admin Globale deve poter eliminare un utente dal Sistema, selezionando quale], [@UC70[UC70, Sez.] \ @UC71[UC71, Sez.]],
    [R-130-F-De], [L'Admin Globale deve poter promuovere il ruolo di un utente, selezionando quale utente], [@UC72[UC72, Sez.] \ @UC71[UC71, Sez.]],

    [R-131-F-Ob],
    [Lo Scheduler deve poter avviare la sincronizzazione dell'elenco delle merci disponibile],
    [@UC73[UC73, Sez.]],

    [R-132-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle merci disponibili, deve avviare la sincronizzazione della quantità localmente disponibile per ciascuna merce], [@UC74[UC74, Sez. ] \ @UC74.1[UC74.1, Sez.]],
    [R-133-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle merci disponibili, deve avviare la sincronizzazione della quantità globalmente disponibile per ciascuna merce], [@UC74[UC74, Sez. ] \ @UC74.2[UC74.2, Sez.]],
    [R-134-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle merci disponibili, deve avviare la sincronizzazione del nome per ciascuna merce], [@UC74[UC74, Sez. ] \ @UC74.3[UC74.3, Sez.]],
    [R-135-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle merci disponibili, deve avviare la sincronizzazione della descrizione per ciascuna merce], [@UC74[UC74, Sez. ] \ @UC74.4[UC74.4, Sez.]],
    [R-136-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle merci disponibili, deve avviare la sincronizzazione dell'ID per ciascuna merce], [@UC74[UC74, Sez. ] \ @UC75[UC75, Sez.]],

    [R-137-F-Ob],
    [Lo Scheduler deve poter avviare la sincronizzazione di una nuova merce],
    [@UC76[UC76, Sez.]],

    [R-138-F-Ob], [Lo Scheduler, avviando la sincronizzazione della merce aggiunta, deve avviare la sincronizzazione della quantità localmente disponibile], [@UC74[UC74, Sez. ] \ @UC74.1[UC74.1, Sez.]],
    [R-139-F-Ob], [Lo Scheduler, avviando la sincronizzazione della merce aggiunta, deve avviare la sincronizzazione della quantità globalmente disponibile], [@UC74[UC74, Sez. ] \ @UC74.2[UC74.2, Sez.]],
    [R-140-F-Ob], [Lo Scheduler, avviando la sincronizzazione della merce aggiunta, deve avviare la sincronizzazione del nome], [@UC74[UC74, Sez. ] \ @UC74.3[UC74.3, Sez.]],
    [R-141-F-Ob], [Lo Scheduler, avviando la sincronizzazione della merce aggiunta, deve avviare la sincronizzazione della descrizione], [@UC74[UC74, Sez. ] \ @UC74.4[UC74.4, Sez.]],
    [R-142-F-Ob], [Lo Scheduler, avviando la sincronizzazione della merce aggiunta, deve avviare la sincronizzazione dell'ID], [@UC74[UC74, Sez. ] \ @UC75[UC75, Sez.]],


    [R-143-F-Ob],
    [Lo Scheduler deve poter avviare la sincronizzazione di una merce eliminata],
    [@UC77[UC77, Sez.]],

    [R-144-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce eliminata, deve avviare la sincronizzazione della quantità localmente disponibile], [@UC74[UC74, Sez. ] \ @UC74.1[UC74.1, Sez.]],
    [R-145-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce eliminata, deve avviare la sincronizzazione della quantità globalmente disponibile], [@UC74[UC74, Sez. ] \ @UC74.2[UC74.2, Sez.]],
    [R-146-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce eliminata, deve avviare la sincronizzazione del nome], [@UC74[UC74, Sez. ] \ @UC74.3[UC74.3, Sez.]],
    [R-147-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce eliminata, deve avviare la sincronizzazione della descrizione], [@UC74[UC74, Sez. ] \ @UC74.4[UC74.4, Sez.]],
    [R-148-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce eliminata, deve avviare la sincronizzazione dell'ID], [@UC74[UC74, Sez. ] \ @UC75[UC75, Sez.]],

    [R-149-F-Ob],
    [Lo Scheduler deve poter avviare la sincronizzazione di una merce modificata],
    [@UC78[UC78, Sez.]],

    [R-150-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce modificata, deve avviare la sincronizzazione della quantità localmente disponibile], [@UC74[UC74, Sez. ] \ @UC74.1[UC74.1, Sez.]],
    [R-151-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce modificata, deve avviare la sincronizzazione della quantità globalmente disponibile], [@UC74[UC74, Sez. ] \ @UC74.2[UC74.2, Sez.]],
    [R-152-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce modificata, deve avviare la sincronizzazione del nome], [@UC74[UC74, Sez. ] \ @UC74.3[UC74.3, Sez.]],
    [R-153-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce modificata, deve avviare la sincronizzazione della descrizione], [@UC74[UC74, Sez. ] \ @UC74.4[UC74.4, Sez.]],
    [R-154-F-Ob], [Lo Scheduler, avviando la sincronizzazione di una merce modificata, deve avviare la sincronizzazione dell'ID], [@UC74[UC74, Sez. ] \ @UC75[UC75, Sez.]],

    [R-155-F-Ob],
    [Lo Scheduler deve poter avviare la sincronizzazione dell'elenco degli ordini],
    [@UC79[UC79, Sez.]],

    [R-156-F-Ob], [Lo Scheduler, avviando la sincronizzazione degli ordini, deve sincronizzare per ciascun ordine la data di creazione], [ @UC79.1[UC79.1, Sez.] \ @UC79.1.1[UC79.1.1, Sez.]],
    [R-157-F-Ob], [Lo Scheduler, avviando la sincronizzazione degli ordini, deve sincronizzare per ciascun ordine il nome], [ @UC79.1[UC79.1, Sez.] \ @UC79.1.2[UC79.1.2, Sez.]],
    [R-158-F-Ob], [Lo Scheduler, avviando la sincronizzazione degli ordini, deve sincronizzare per ciascun ordine l'ID], [ @UC79.1[UC79.1, Sez.] \ @UC80[UC80, Sez]],
    [R-159-F-Ob], [Lo Scheduler, avviando la sincronizzazione degli ordini, deve sincronizzare per ciascun ordine lo stato], [ @UC79.1[UC79.1, Sez.] \ @UC81[UC81, Sez.]],
    [R-160-F-Ob], [Lo Scheduler, avviando la sincronizzazione degli ordini, deve sincronizzare per ciascun ordine la lista delle merci interessate], [ @UC79.1[UC79.1, Sez.] \ @UC79.1.3[UC79.1.3, Sez.]],

    [R-161-F-Ob],
    [Per ogni merce di un ordine da sincronizzare, lo Scheduler deve avviare la sincronizzazione dell'ID della merce],
    [@UC82[UC82, Sez.] \ @UC75[UC75, Sez.]],

    [R-162-F-Ob],
    [Per ogni merce di un ordine da sincronizzare, lo Scheduler deve avviare la sincronizzazione la quantità interessata della merce],
    [@UC82[UC82, Sez.] \ @UC82.1[UC82.1, Sez.]],

    [R-163-F-Ob],
    [Lo Scheduler deve poter avviare la sincronizzazione degli ordini confermati],
    [@UC83[UC83, Sez.]],

    [R-164-F-Ob], [Lo Scheduler, avviando la sincronizzazione degli ordini confermati, avvia la sincronizzazione di tutti gli ordini], [@UC79[UC79, Sez.]],

    [R-165-F-Ob],
    [Lo Scheduler deve poter avviare la sincronizzazione degli ordini cancellati],
    [@UC84[UC84, Sez.]],

    [R-166-F-Ob], [Lo Scheduler, avviando la sincronizzazione degli ordini cancellati, avvia la sincronizzazione di tutti gli ordini], [@UC79[UC79, Sez.]],

    [R-167-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione dell'elenco dei trasferimenti],
    [@UC85[UC85, Sez.]],

    [R-168-F-Ob], [Lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, deve sincronizzare il magazzino destinatario di ciascun trasferimento], [@UC85.1[UC85, Sez.] \ @UC85.1.1[UC85.1.1, Sez.]],
    [R-169-F-Ob], [Lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, deve sincronizzare il magazzino mittente di ciascun trasferimento], [@UC85.1[UC85, Sez.] \ @UC85.1.2[UC85.1.2, Sez.]],
    [R-170-F-Ob], [Lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, deve sincronizzare l'ID di ciascun trasferimento], [@UC85.1[UC85, Sez.] \ @UC80[UC80, Sez.]],
    [R-171-F-Ob], [Lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, deve sincronizzare lo stato di ciascun trasferimento], [@UC85.1[UC85, Sez.] \ @UC81[UC81, Sez.]],
    [R-172-F-Ob], [Lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, deve sincronizzare la lista delle merci di ciascun trasferimento], [@UC85.1[UC85, Sez.] \ @UC85.1.3[UC85.1.3, Sez.]],

    [R-173-F-Ob],
    [Per ogni merce di un trasferimento da sincronizzare, lo Scheduler deve avviare la sincronizzazione dell'ID della merce],
    [@UC82[UC82, Sez.] \ @UC75[UC75, Sez.]],

    [R-174-F-Ob],
    [Per ogni merce di un trasferimento da sincronizzare, lo Scheduler deve avviare la sincronizzazione la quantità interessata della merce],
    [@UC82[UC82, Sez.] \ @UC82.1[UC82.1, Sez.]],

    [R-175-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione dei trasferimenti confermati],
    [@UC86[UC86, Sez.]],

    [R-176-F-Ob],
    [Lo Scheduler, avviando la sincronizzazione dei trasferimenti confermati, deve avviare la sincronizzazione di tutti i trasferimenti],
    [@UC85[UC85, Sez.]],

    [R-177-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione dei trasferimenti cancellati],
    [@UC87[UC87, Sez.]],

    [R-178-F-Ob],
    [Lo Scheduler, avviando la sincronizzazione dei trasferimenti cancellati, deve avviare la sincronizzazione di tutti i trasferimenti],
    [@UC85[UC85, Sez.]],

    [R-179-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione delle notifiche di rifornimento],
    [@UC88[UC88, Sez.]],

    [R-180-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, deve sincronizzare per ciascuna notifica l'ID], [@UC88.1[UC88.1, Sez.] \ @UC88.1.1[UC88.1.1, Sez.]],
    [R-181-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, deve sincronizzare per ciascuna notifica il magazzino destinatario], [@UC88.1[UC88.1, Sez.] \ @UC88.1.2[UC88.1.2, Sez.]],
    [R-182-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, deve sincronizzare per ciascuna notifica lo stato], [@UC88.1[UC88.1, Sez.] \ @UC88.1.3[UC88.1.3, Sez.]],
    [R-183-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, deve sincronizzare per ciascuna notifica l'elenco], [@UC88.1[UC88.1, Sez.] \ @UC88.1.4[UC88.1.4, Sez.]],

    [R-184-F-Ob],
    [Per ogni merce facente parte di un elenco merci di un trasferimento, lo Scheduler deve sincronizzare l'ID della merce],
    [@UC88.1.4.1[UC88.1.4.1, Sez.] \ @UC75[UC75, Sez.]],

    [R-185-F-Ob],
    [Per ogni merce facente parte di un elenco merci di un trasferimento, lo Scheduler deve sincronizzare la quantità interessata della merce],
    [@UC88.1.4.1[UC88.1.4.1, Sez.] \ @UC88.1.4.1.1[UC88.1.4.1.1, Sez.]],

    [R-186-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione delle notifiche di rifornimento confermate],
    [@UC89[UC89, Sez.]],

    [R-187-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento confermate, deve sincronizzare tutte le notifiche di rifornimento], [@UC88[UC88, Sez.]],

    [R-188-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione delle notifiche di rifornimento cancellate],
    [@UC90[UC90, Sez.]],

    [R-189-F-Ob], [Lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento cancellate, deve sincronizzare tutte le notifiche di rifornimento], [@UC88[UC88, Sez.]],

    [R-190-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione dei dati dei microservizi],
    [@UC91[UC91, Sez.]],

    [R-191-F-Ob], [Lo Scheduler, avviando la sincronizzazione dei dati dei microservizi, deve avviare la sincronizzazione del nome di ciascun microservizio], [@UC91.1[UC91.1, Sez.] \ @UC91.1.1[UC91.1.1, Sez.]],
    [R-192-F-Ob], [Lo Scheduler, avviando la sincronizzazione dei dati dei microservizi, deve avviare la sincronizzazione delle richieste al secondo di ciascun microservizio], [@UC91.1[UC91.1, Sez.] \ @UC91.1.2[UC91.1.2, Sez.]],

    [R-193-F-Ob],
    [Lo Scheduler deve avviare la sincronizzazione della soglia minima di allerta per una merce quando aggiornata],
    [@UC92[UC92, Sez.]],
  ),
  caption: [Requisiti Funzionali],
)
== Requisiti di Qualità

#figure(
  table(
    align: left,
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    stroke: (x, y) => (
      left: if (x > 0) { 0pt } else { 1pt },
      right: 1pt,
      top: if (y < 2) { 1pt } else { 0pt },
      bottom: 1pt,
    ),
    columns: 3,
    inset: 8pt,
    table.header(
      [#text(fill: white)[*Codice*]],
      [#text(fill: white)[*Descrizione*]],
      [#text(fill: white)[*Fonti*]],
    ),

    [R-1-Q-Ob],
    [È necessario fornire un diagramma architetturale],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Documentazione"],

    [R-2-Q-Ob],
    [È necessario realizzare opportuni Test di sincronizzazione],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Test e Validazione"],

    [R-3-Q-De],
    [È necessario realizzare opportuni Test predittivi],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Test e Validazione"],

    [R-4-Q-Ob],
    [È necessario realizzare opportuni Test di unità],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Test e Validazione"],

    [R-5-Q-Ob],
    [È necessario realizzare opportuni Test di carico],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Test e Validazione"],

    [R-6-Q-Ob],
    [È necessario realizzare opportuni Test di scalabilità],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Test e Validazione"],

    [R-7-Q-Ob],
    [È necessario descrivere tutti i Test effettuati. Tale redazione sarà effettuata nel #link("")[Piano di Qualifica] (PROSEGUIRE) oppure in un _Test Book_ dedicato],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Documentazione"],

    [R-8-Q-Ob],
    [È necessario perseguire al raggiungimento degli obiettivi posti dal Piano di Qualifica[PROSEGUIRE](inserire link)],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto e Interno]],

    [R-9-Q-Ob],
    [È necessario rispettare tutte le norme presenti nelle Norme di Progetto[PROSEGUIRE](inserire link)],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Interno]],

    [R-10-Q-Ob],
    [È necessario versionare il codice con appositi _Software_ di versionamento.],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Requisiti non Funzionali"],
  ),
  caption: [Requisiti di Qualità],
)

In merito agli obiettivi da raggiungere con i vari Test, questi saranno concordati con #M31 e definiti nel Piano di Qualifica[PROSEGUIRE](inserire link) durante lo svolgimento della _Product Baseline (PB)_.

== Requisiti di Vincolo

#figure(
  table(
    align: left,
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    stroke: (x, y) => (
      left: if (x > 0) { 0pt } else { 1pt },
      right: 1pt,
      top: if (y < 2) { 1pt } else { 0pt },
      bottom: 1pt,
    ),
    columns: 3,
    inset: 8pt,
    table.header(
      [#text(fill: white)[*Codice*]],
      [#text(fill: white)[*Descrizione*]],
      [#text(fill: white)[*Fonti*]],
    ),

    [R-1-V-Ob],
    [È necessario utilizzare Git come _Software_ di versionamento],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Requisiti non Funzionali"],

    [R-2-V-Ob],
    [È necessario che il Sistema realizzato sia a microservizi],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Architettura"],

    [R-3-V-Ob],
    [È necessario l'utilizzo di Go per la realizzazione dei microservizi],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Tecnologie di Riferimento"],

    [R-4-V-Ob],
    [È necessario l'utilizzo di NATS per lo scambio di messaggi tra i microservizi],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Tecnologie di Riferimento"],

    [R-5-V-Ob],
    [È necessario l'utilizzo di PostgreSQL per la persistenza dei dati strutturati],
    [#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[Capitolato di Progetto],\ Sez. "Tecnologie di Riferimento"],
  ),
  caption: [Requisiti di Vincolo],
)

== Riassunto

#figure(
  table(
    align: horizon,
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    stroke: (x, y) => (
      left: if (x > 0) { 0pt } else { 1pt },
      right: 1pt,
      top: if (y < 2) { 1pt } else { 0pt },
      bottom: 1pt,
    ),
    columns: 4,
    inset: 8pt,
    table.header(
      [#text(fill: white)[*Tipologia*]],
      [#text(fill: white)[*Obbligatori*]],
      [#text(fill: white)[*Desiderabili*]],
      [#text(fill: white)[*Opzionali*]],
    ),

    [Funzionali], [171], [22], [0],
    [Qualità], [9], [1], [0],
    [Vincolo], [5], [0], [0],
  ),
  caption: [Riepilogo dei Requisiti],
)
