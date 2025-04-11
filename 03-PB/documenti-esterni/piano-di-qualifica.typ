#import "../../lib/importantdocs.typ": *
#import "../../lib/metriche.typ": *

#let ver = [1.4.0]

#show: body => importantdocs(
  data: datetime(day: 18, month: 02, year: 2025),
  tipo: [esterno],
  versione: ver,
  versioni: (
    (
      vers: "1.5.0",
      date: datetime(day: 2, month: 04, year: 2025),
      autore: p.sara,
      //verifica: p.matteo,
      descr: "Continuazione aggiornamento cruscotto misurazioni.",
    ),
    (
      vers: "1.4.0",
      date: datetime(day: 1, month: 04, year: 2025),
      autore: p.sara,
      //verifica: p.matteo,
      descr: "Aggiornamento cruscotto misurazioni.",
    ),
    (
      vers: "1.3.0",
      date: datetime(day: 31, month: 03, year: 2025),
      autore: p.matteo,
      verifica: p.loris,
      descr: "Stesura dei test di unità ed integrazione" + [ (@tu e @ti)] + ".",
    ),
    (
      vers: "1.2.0",
      date: datetime(day: 26, month: 03, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Aggiornamento test di accettazione e di sistema" + [ (@ta e @ts)] + ".",
    ),
    (
      vers: "1.1.0",
      date: datetime(day: 25, month: 02, year: 2025),
      autore: p.emanuele,
      verifica: p.matteo,
      descr: "Correzione di T-123-S.",
    ),
    (
      vers: "1.0.0",
      date: datetime(day: 18, month: 02, year: 2025),
      autore: p.matteo,
      verifica: p.sara,
      approvazione: p.samuele,
      descr: "Correzioni minori.",
    ),
    (
      vers: "0.10.0",
      date: datetime(day: 10, month: 01, year: 2025),
      autore: p.matteo,
      verifica: p.sara,
      descr: "Aggiunte misurazioni e sezione metodi di testing " + [(@dashboard e @test)],
    ),
    (
      vers: "0.9.0",
      date: datetime(day: 10, month: 01, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Aggiornamento qualità del processo e prodotto, soglie e tabelle " + [(@qtaprc e @qtaprd).],
    ),
    (
      vers: "0.8.0",
      date: datetime(day: 09, month: 01, year: 2025),
      autore: p.emanuele,
      verifica: p.matteo,
      descr: "Aggiunta sezione automiglioramento " + [(@automiglioramento).],
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 08, month: 01, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Aggiornamento sezione qualità di processo " + [(@qtaprc).],
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 04, month: 01, year: 2025),
      autore: p.emanuele,
      verifica: p.matteo,
      descr: "Aggiunta metriche qualità di prodotto e tabelle " + [(@qtaprd).],
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 3, month: 01, year: 2025),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Aggiornamento metriche di processo e tabelle " + [(@qtaprc).],
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 27, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Aggiornamento metriche di processo " + [(@qtaprc).],
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 19, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Aggiunte metriche di processo " + [(@qtaprc).],
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 11, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Aggiunta sezione introduzione " + [(@introduzione).],
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 5, month: 12, year: 2024),
      autore: p.sara,
      verifica: p.matteo,
      descr: "Prima redazione documento.",
    ),
  ),
  stato: [Approvato per RTB],
  responsabile: ((p.samuele),),
  verificatore: ((p.matteo), (p.sara)),
  redattori: (
    (p.emanuele),
    (p.matteo),
    (p.sara),
  ),
  descrizione: [Questo documento contiene il _Piano di Qualifica_ descritto dal gruppo _ALimitedGroup_ per il Capitolato numero 6 proposto da #M31],
  titolo: "Piano di Qualifica",
  body,
)

= Introduzione <introduzione>
== Scopo del documento
Il presente Piano di Qualifica#super[G] rappresenta un documento fondamentale per la gestione e il monitoraggio continuo della qualità del progetto _Software_ e dei processi coinvolti nel suo ciclo di vita.\
Il Piano di Qualifica#super[G] si sviluppa attraverso tre dimensioni interconnesse:

+ *Piano della Qualità*:
  - Definisce gli obiettivi qualitativi;
  - Stabilisce gli standard di riferimento;
  - Delinea le politiche e le strategie per raggiungere l'eccellenza.


+ *Controllo di Qualità*:
  - Implementa meccanismi di misurazione oggettivi;
  - Verifica#super[G] la conformità ai requisiti;
  - Monitora le prestazioni attraverso metriche predefinite.


+ *Miglioramento Continuo*:
  - Analizza periodicamente i risultati;
  - Identifica opportunità di ottimizzazione;
  - Adatta costantemente processi e obiettivi.

Il Piano di Qualifica#super[G] rappresenta uno strumento strategico volto a garantire che il progetto:
- Rispetti integralmente i requisiti definiti;
- Consegua gli obiettivi prefissati;
- Mantenga elevati standard qualitativi.

L'approccio metodologico adottato non configura la qualità come un elemento statico, bensì come un processo dinamico di apprendimento, miglioramento e ottimizzazione continua.

== Riferimenti
=== Riferimenti normativi
- *Norme di Progetto#super[G] ver. 2.0.0*: \
  #link("https://alimitedgroup.github.io/NP%20v1.0.0.pdf")[alimitedgroup.github.io/NP%20v2.0.0.pdf] \
  *Ultimo Accesso 4 Aprile 2025*
- *Capitolato d'appalto C6 Sistema di Gestione di un Magazzino Distribuito*: \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf") \
  *Ultimo Accesso 4 Aprile 2025*

=== Riferimenti informativi
- *Glossario*: \
  #link("https://alimitedgroup.github.io/Glossаrio.pdf")[#text("https://alimitedgroup.github.io/Glossario.pdf")] \
  *Ultimo Accesso 4 Aprile 2025*
- *Standard ISO/IEC 9126* \
  #link("https://it.wikipedia.org/wiki/ISO/IEC_9126") \
  *Ultimo Accesso 4 Aprile 2025*
- *Standard ISO/IEC 12207:1995* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf") \
  *Ultimo Accesso 4 Aprile 2025*

#pagebreak()
= Qualità di processo <qtaprc>
La qualità di processo rappresenta un'esigenza primaria per garantire il successo del progetto _Software_.
Assicura che i processi utilizzati siano efficaci, efficienti e conformi agli standard di qualità prefissati.
Per garantire la qualità di processo, il progetto si avvale di:
- *Modelli di riferimento*: _Capability Maturity Model Integration#super[G]_ (CMMI#super[G] )e _ISO/IEC 12207_;
- *Metriche di processo*: Strumenti per valutare le prestazioni e l'efficienza dei processi. Per ogni metrica definita, vengono fissate soglie quantitative che rappresentano i livelli minimi accettabili di qualità;
- *Revisioni periodiche*: Sessioni di verifica#super[G] e controllo che analizzano i risultati ottenuti rispetto agli obiettivi stabiliti.

== Processi primari
=== Fornitura
#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPC01*], [Earned Value], [≥ 0], [≤ EAC],
    [*MPC02*], [Planned Value], [≥ 0], [≤ BAC],
    [*MPC03*], [Actual Cost], [≥ 0], [≤ EAC],
    [*MPC04*], [Cost Performance Index], [≥ 0], [1],
    [*MPC05*], [Schedule Performance Index], [≥ 0], [1],
    [*MPC06*], [Estimate At Completion], [≥ 0], [≤ BAC],
    [*MPC07*], [Estimate To Complete], [≥ 0], [≤ BAC],
    [*MPC08*], [Time Estimate At Completion], [≥ 0], [≤ Durata pianificata],
  ),
  caption: [Soglie metriche processo di fornitura],
)

=== Sviluppo

#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPC09*], [Requirements Stability Index], [≥ 70%], [100%],
  ),
  caption: [Soglie metriche processo di Sviluppo],
)

== Processi di supporto
=== Documentazione

#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPC10*], [Indice di Gulpease], [≥ 60%], [≥ 80%],
    [*MPC11*], [Correttezza ortografica], [0], [0],
  ),
  caption: [Soglie metriche processo di Documentazione],
)

=== Verifica

#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPC12*], [Code Coverage], [≥ 75%], [100%],
    [*MPC13*], [Test Success Rate], [100%], [100%],
  ),
  caption: [Soglie metriche processo di Verifica],
)

=== Gestione della Qualità

#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPC14*], [Quality metrics satisfied], [≥ 80%], [100%],
  ),
  caption: [Soglie metriche Gestione della Qualità],
)

== Processi organizzativi

=== Gestione dei Processi

#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPC15*], [Time Efficiency], [50%], [100%],
  ),
  caption: [Soglie metriche processo Gestione dei Processi],
)

#pagebreak()
= Qualità di prodotto <qtaprd>
La qualità del prodotto rappresenta l'obiettivo centrale di ogni progetto _Software_ e si riferisce alla capacità del prodotto finale di soddisfare pienamente i requisiti, le aspettative e le esigenze degli utenti e dei committenti.
Essa è il risultato diretto della qualità dei processi adottati durante l'intero ciclo di vita del progetto.\

Un prodotto _Software_ è considerato di alta qualità quando:
- È *funzionale*, ovvero rispetta i requisiti funzionali#super[G] e non funzionali definiti nel documento di #link("https://alimitedgroup.github.io/AR%20v2.0.0.pdf")[*Analisi dei Requisiti#super[G] ver. 2.0.0*] *(Sezione 3)*;
- È *affidabile*, garantendo prestazioni consistenti e prive di errori;
- È *usabile*, rendendo semplice e intuitiva l'interazione per gli utenti finali;
- È *efficiente*, ovvero ottimizzato per rispondere in modo rapido ed efficace alle richieste;
- È *manutenibile*, ossia progettato per consentire aggiornamenti, correzioni e modifiche senza compromettere la stabilità.

== Funzionalità
#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPD01*], [Requisiti obbligatori soddisfatti], [100%], [100%],
    [*MPD02*], [Requisiti desiderabili soddisfatti], [0%], [100%],
    [*MPD02*], [Requisiti opzionali soddisfatti], [0%], [100%],
  ),
  caption: [Soglie metriche funzionalità del prodotto],
)

== Affidabilità
#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPD04*], [Branch Coverage], [≥ 60%], [≥ 80%],
    [*MPD05*], [Statement Coverage], [≥ 70%], [≥ 90%],
    [*MPD06*], [Failure Density], [≤ 0.5], [≤ 0.1],
  ),
  caption: [Soglie metriche affidabilità del prodotto],
)

== Usabilità
#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPD07*], [Time on Task], [≤ 60 sec], [≤ 30 sec],
    [*MPD08*], [Error Rate], [≤ 5%], [≤ 2%],
  ),
  caption: [Soglie metriche usabilità del prodotto],
)

== Efficienza
#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),
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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPD09*], [Response Time], [≤ 2 sec], [≤ 1 sec],
  ),
  caption: [Soglie metriche efficienza del prodotto],
)

== Manutenibilità
#figure(
  table(
    columns: (0.75fr, 2fr, 1.5fr, 1.5fr),

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
    text(white)[*Metrica*], text(white)[*Nome*], text(white)[*Valore accettabile*], text(white)[*Valore ottimo*],

    //table row
    [*MPD10*], [Code Smells], [≤ 10], [≤ 5],
    [*MPD11*], [Coefficient of Coupling], [≤ 0.4], [≤ 0.2],
    [*MPD12*], [Cyclomatic Complexity], [≤ 20], [≤ 10],
  ),
  caption: [Soglie metriche manutenibilità del prodotto],
)

#pagebreak()
= Metodi di testing <test>
Come stabilito nelle #link("https://alimitedgroup.github.io/NP%20v2.0.0.pdf")[*Norme di Progetto#super[G] ver. 2.0.0*] (Sezioni 3.4.1.4.2 e 3.4.2.1.2), alla quale è disponibile anche la nomenclatura utilizzata, i test#super[G] effettuati saranno:

- Tеst#super[G] di Unità;
- Tеst#super[G] di Integrazione;
- Tеst#super[G] di Sistema;
- Tеst#super[G] di Regressione;
- Tеst#super[G] di Accettazione.

== Tеst di Unità <tu>

È possibile eseguire i test#super[G] mediante il comando `go tеst -race ./...`. I test#super[G] vengono eseguiti cartella per cartella: se la cartella non ha test#super[G] la linea di output stampata da `go tеst` inizierà con `?`, mentre se il test#super[G] riesce l'iniziale sarà `ok`.

#test-table(
  unit: "U",
  tipo-test: "Tеst di Unità",
  (
    (
      desc: [Implementato dalla funzione `TestGet GoodsGlobalQt`, testare se il _repository_#super[G] del microservizio `Catalog` restituisce la quantità globali delle merci memorizzate],
      va: [
        - 16 per la merce con id "test-ID";
        - 10 per "2test-ID";
        - 3 per la merce "3test-ID".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestAddGoodQuantity`, testare se il _repository_#super[G] del microservizio `Catalog` aggiunge la quantità corretta di una merce],
      va: [7 unità globali della merce con id "test-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestAddGood`, testare se il _repository_#super[G] del microservizio `Catalog` inserisce i dati di una merce],
      va: [
        - id della merce è "test-ID";
        - nome della merce è "test-name";
        - descrizione della merce è "test-description".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestChangeGoodData`, testare se il _repository_#super[G] del microservizio `Catalog` modifica i dati di una merce],
      va: [
        - id della merce è "test-ID"
        - nome della merce è "new-test-name"
        - descrizione della merce è "new-test-description";
        - la quantità della merce è invariata a 7.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestChangeGoodData WrongID`, testare se il _repository_#super[G] del microservizio `Catalog` restituise un errore se l'id della merce da modificare non esiste],
      va: [il _repository_#super[G] restituisce l'errore `ErrGoodIdNotValid`],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestChangeGoodData EmptyName`, testare se il _repository_#super[G] del microservizio `Catalog` restituise un errore se il nome della merce è vuoto],
      va: [il _repository_#super[G] restituisce l'errore `ErrEmptyName`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestChange GoodDataEmpty Description`, testare se il _repository_#super[G] del microservizio Catalog restituise un errore se la descrizione della merce è vuota],
      va: [il _repository_#super[G] restituisce l'errore `ErrEmptyDescription`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestAddWarehouse`, testare se il _repository_#super[G] del microservizio `Catalog` aggiunge correttamente un nuovo magazzino],
      va: [il _repository_#super[G] restituisce la mappa dei magazzini e il magazzino con id `test-warehouse-ID` sia presente.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetWarehouses`, testare se `catalogAdapter` del microservizio `Catalog` restituisce un `Get WarehousesResponse` valido],
      va: [nella risposta prodotta è presente il magazzino con id "test-warehouse-id".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetWarehouses`, testare se catalogAdapter del microservizio `Catalog` restituisce un `Add OrChangeResponse` valido],
      va: [nella risposta prodotta lo stato dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetWarehouses`, testare se `catalogAdapter` del microservizio `Catalog` restituisce un `Add OrChangeResponse` valido (considerando un possibile errore nell'id fornito)],
      va: [nella risposta prodotta lo stato dell'operazione è `ErrGoodIdNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestSetGoodQuantity`, testare se catalogAdapter del microservizio `Catalog` restituisce un `TestSetGoodQuantity Response` valido],
      va: [nella risposta prodotta lo stato dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestSetGoodQuantity WithWrongID`, testare se `catalogAdapter` del microservizio `Catalog` restituisce un `TestSetGoodQuantity Response` valido (considerando un possibile errore nell'id fornito)],
      va: [nella risposta prodotta lo stato dell'operazione è `ErrGoodIdNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `Tеst GetGoodsQuantity`, testare se `catalogAdapter` del microservizio Catalog restituisce un `GetGoodsQuantity Response` valido],
      va: [nella risposta fornita è presente la mappa all'interno della quale la quantità della merce con id "test-id" è 7.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetGoodsInfo`, testare se `catalogAdapter` del microservizio Catalog restituisce un `Get GoodsInfoResponse` valido],
      va: [nella risposta fornita è presente la mappa all'interno della quale è presente la mece con id "test-id", nome "test-name" e descrizione "test-description".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetWarehouses`, testare se `CatalogService` riesce ad ottenere l'elenco dei magazzini],
      va: [nella risposta fornita è presente la mappa dei magazzini contenente il magazzino con id "test-warehouse-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `Tеst AddOrChangeGood Data`, testare se `CatalogService` riesce a modificare i dati di una merce],
      va: [nella risposta fornita è l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `Tеst AddOrChangeGood Data_WrongID`, testare se `CatalogService` riporta una risposta con errore quando l'id fornito non è valido],
      va: [nella risposta fornita è l'esito dell'operazione è `ErrGoodIdNoValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestSetMultipleGoods Quantity`, testare se `CatalogService` riesce con successo ad avviare la modifica della quantità di due merci],
      va: [nella risposta fornita è l'esito dell'operazione è `nil` e non vi sono id con modifica sbagliata.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestSetMultipleGoods QuantityWithWrongID`, testare se `CatalogService` riesce con successo a riportare un errore nella modifica della quantità di una merce],
      va: [nella risposta fornita è l'esito dell'operazione è `ErrGeneric` `Failure` ed è riportato un errore alla merce con id `test-wrong-id`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGet GoodsQuantity`, testare se `CatalogService` riesce con successo ad ottenere la lista delle merci e delle loro quantità],
      va: [nella mappa della risposta fornita è presente la merce con id `test-id` e la quantità è 7.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetGoodsInfo`, testare se `CatalogService` riesce con successo ad ottenere la lista delle merci e delle loro informazioni],
      va: [nella mappa della risposta fornita è presente la merce con id `test-id`, nome "test-name" e descrizione "test-description".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestSetMultipleGood QuantityRequest`, testare se `CatalogController` riesce con successo a modificare la quantità di più merci],
      va: [La modifica viene con successo ricevuta dal _mock_ di CatalogService, che modifica una apposita variabile globale a `true`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `Tеst SetGoodDataRequest`, testare se `CatalogController` riesce con successo a modificare le informazioni di una merce],
      va: [La modifica viene con successo ricevuta dal _mock_ di CatalogService, che modifica una apposita variabile globale a `true`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetGoodsRequest`, testare se `CatalogController` riesce con successo ad ottenere le informazioni delle merci],
      va: [Nella risposta è presente una mappa che possiede una merce con:
        - id "test-ID";
        - nome "test-name";
        - descrizione "test-description".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetWarehouses Request`, testare se `CatalogController` riesce con successo ad ottenere le informazioni dei magazzini],
      va: [Nella risposta è presente una mappa che possiede un magazzino con id "test-warehouse-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetGoodsGlobal Quantity Request`, testare se `CatalogController` riesce con successo ad ottenere sulla quantità globale delle merci],
      va: [Nella risposta è presente una mappa che possiede la merce con id "test-ID" a quantità 7.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStorePemKeyPair`, testare che `AuthRepository` registri correttamente una coppia di chiavi in formato Pem],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStore WrongKeyPair`, testare che `AuthRepository` ritorni un errore se si cerca di memorizzare una coppia di chiavi non di tipo ecdsa],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrKeyPairNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStore GarbageKeyPair`, testare che `AuthRepository` ritorni un errore se si cerca di memorizzare una coppia non in formato Pem],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrKeyPairNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetPemPublicKey`, testare che `AuthRepository` ritorni correttamente la chiave pubblica],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornata la chiave pubblica e l'issuer.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetPemPrivateKey`, testare che `AuthRepository` ritorni correttamente la chiave privata],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornata la chiave privata e l'issuer.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetPemPublicKey WithNoKey`, testare che `AuthRepository` ritorni un errore se si prova ad ottenere la chiave pubblica ma questa non è stata precedentemente memorizzata],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrNoPublicKey`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetPemPrivateKey WithNoKey`, testare che `AuthRepository` ritorni un errore se si prova ad ottenere la chiave privata ma questa non è stata precedentemente memorizzata],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrNoPrivateKey`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestCheckKeyPair`, testare che `AuthRepository` non ritorni errore se si invoca `CheckKeyPairExistence` e la coppia di chiavi è presente],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestCheckKeyPair WithNoKey`, testare che `AuthRepository` ritorni errore se si invoca `CheckKeyPairExistence` e la coppia di chiavi non è presente],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrNoKeyPair`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStorePemKeyPair`, testare che `AuthAdapter` trasmetta correttamente la richiesta di memorizzazione di una coppia di chiavi],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStoreWrong PemKeyPair`, testare che `AuthAdapter` ritorni l'esito negativo di un'operazione di memorizzazione coppia di chiavi non corretta],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `ErrKeyPairNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da` TestGetPemPublicKey`, testare che `AuthAdapter` trasmetta correttamente la richiesta di ottenimento chiave pubblica],
      va: [Nella risposta fornita dall'_Adapter_ è presente la chiave pubblica.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetPemPublic Key_NoKey`, testare che `AuthAdapter` ritorni l'esito negativo di un'operazione di ottenimento chiave pubblica quando nessuna chiave pubblica è memorizzata],
      va: [Nella risposta fornita dall'_Adapter_ la chiave pubblica è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst GetPemPrivateKey`, testare che `AuthAdapter` trasmetta correttamente la richiesta di ottenimento chiave privata],
      va: [Nella risposta fornita dall'_Adapter_ è presente la chiave privata.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetPem PrivateKey_NoKey`, testare che `AuthAdapter` ritorni l'esito negativo di un'operazione di ottenimento chiave privata quando nessuna chiave privata è memorizzata],
      va: [Nella risposta fornita dall'_Adapter_ la chiave privata è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestCheckKey PairExistence`, testare che `AuthAdapter` trasmetta correttamente la richiesta di controllo della presenza di una coppia di chiavi memorizzata],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestAdaptKey`, testare che `AuthPublisherAdapter` trasmetta correttamente la richiesta di pubblicazione chiave pubblica],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestAdaptKeyWith WrongIssuer`, testare che `AuthPublisherAdapter` trasmetta correttamente la richiesta di pubblicazione chiave pubblica e ritorni un errore simulando che qualcosa non ha funzionato come previsto],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `test error`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestAdaptKeyWith InvalidKey`, testare che `AuthPublisherAdapter` trasmetta correttamente la richiesta di pubblicazione chiave pubblica e ritorni un errore se la chiave che si prova a pubblicare non è in formato Pem],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `ErrPublish`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst AdaptWithWrongKey`, testare che `AuthPublisherAdapter` trasmetta correttamente la richiesta di pubblicazione chiave pubblica e ritorni un errore se la chiave che si prova a pubblicare non è di tipo ecdsa],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `ErrPublish`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetToken`, testare che `AuthService` generi correttamente un token],
      va: [AuthService genera una coppia di chiavi valida e ritorna un token correttamente firmato.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestPublishing`, testare che `AuthPublisher` pubblichi correttamente una chiave pubblica],
      va: [Nello _stream_ di pubblicazione chiavi pubblichi è presente la chiave pubblica.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst PublishingWrongKey`, testare che `AuthPublisher` ritorni un errore quando la pubblicazione di una chiave non va a buon fine],
      va: [Il Publisher ritorna l'errore `ErrPublish`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetToken`, testare che `AuthController` ritorni il token quando arriva una richiesta valida],
      va: [La risposta ritornata dal Controller contiene il token di prova `test-token`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetTokenWith WrongUser`, testare che `AuthController` funzioni come previsto se il _mock_ del service rileva un nome utente non corretto],
      va: [La risposta ritornata dal Controller ha un token vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetTokenEmpty Username`, testare che `AuthController` funzioni come previsto se il nome utente fornito è vuoto.],
      va: [La risposta ritornata dal Controller ha un token vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetTokenWrong Request`, testare che `AuthController` funzioni come previsto se la richiesta fornita non è corretta.],
      va: [La risposta ritornata dal Controller ha un token vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockRepository ImplGetAndSet`, testare che `StockRepositoryImpl` aggiunga correttamente quantità di merce e registri correttamente le _reservation_],
      va: [Sono presenti le seguenti quantità:
        - la merce con id "1" ha 10 unità totali, tutte non riservate;
        - la merce con id "1" ha 0 unità totali, tutte non riservate;
        Inoltre, un tentativo di _reservation_ per 5 unità della merce con id "1" e il suo rilascio fa ritornare `nil` dal _repository_#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst StockRepositoryImpl Reserve AndUnreserve`, testare che `StockRepositoryImpl` riesca a gestire correttamente le _reservation_],
      va: [La quantità non riservata della merce con id "1" è 5 con 10 unità totali.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst StockRepositoryImpl ReserveNot ExistingGood`, testare che `StockRepositoryImpl` ritorni un errore se la _reservation_ è effettuata su una merce non esistente nel magazzino],
      va: [Il metodo `ReserveStock` ritorna un errore, il tentativo di ottenere la quantità di merce disponibile ritorna 0.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockRepository Impl UnreserveNotEnough`, testare che `StockRepositoryImpl` gestisca correttamente una richiesta di rimozione di _reservation_ di una quantità maggiore di quella riservata],
      va: [Il metodo `UnReserveStock` ritorna un errore.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestCatalog RepositoryImpl`, testare che `Catalog RepositoryImpl` gestisca correttamente l'aggiunta di una merce],
      va: [Dopo l'operazione di aggiunta, invocando il metodo `GetGood` sulla merce con id "1", questa risulta presente e con le seguenti caratteristiche:
        - nome "blue_hat";
        - descrizione "very beautiful hat";
        Inoltre non risulta esistere la merce con id "2" in quanto non aggiunta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestIdempotente RepositoryImpl`, testare che `Idempotent RepositoryImpl` gestisca correttamente la gestione degli eventi],
      va: [
        - L'evento "event" con id "id" risulta essere processato;
        - L'evento "event" con id "id2" non risulta essere processato;
        - L'evento "event2" con id "id" non risulta essere processato.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistance AdapterApply`, testare che `Stоck PersistanceAdapter` riesca a trasmettere la richiesta di aggiunta stock#super[G]],
      va: [
        Viene aggiunta correttamente la merce, il _mock_ del _repository_#super[G] ritorna `true`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistance AdapterGet`, testare che `Stоck PersistanceAdapter` riesca a trasmettere la richiesta di ottenimento stock#super[G]],
      va: [
        Nella risposta fornita dall'adapter sono presenti:
        - merce con id "1" con quantità totale pari a 10
        - merce con id "1" con quantità libera da _reservation_ pari a 10
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistance AdapterGetReserv`, testare che `Stоck PersistanceAdapter` riesca a trasmettere la richiesta di ottenimento stock#super[G] in _reservation_],
      va: [
        Nella risposta fornita dall'adapter sono presenti:
        - merce con id "1" con quantità riservata pari a 10
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStock PersistanceAdapter GetReservNotFound`, testare che `Stоck PersistanceAdapter` riesca a trasmettere la richiesta di ottenimento stock#super[G] in _reservation_ e gestisca correttamente il caso in cui la _reservation_ richiesta non esista],
      va: [
        L'adapter ritorna un errore `ErrReservation NotFound` e la _reservation_ non contiene nulla
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistance AdapterApplyReserv`, testare che `Stоck PersistanceAdapter` riesca a trasmettere la richiesta di _reservation_],
      va: [
        L'adapter ritorna `nil` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistance AdapterApplyReservErr`, testare che `Stоck PersistanceAdapter` riesca a gestire una richiesta di _reservation_ con quantità non disponibile di una merce],
      va: [
        L'adapter ritorna `ErrNotEnoughGoods` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistance AdapterApplyOrder`, testare che `Stоck PersistanceAdapter` riesca a gestire una richiesta di conferma ordine#super[G]],
      va: [
        L'adapter ritorna `nil` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistance Adapter ApplyOrderErr`, testare che `Stоck PersistanceAdapter` riesca a gestire una richiesta di conferma ordine#super[G] con richiesta non corretta],
      va: [
        L'adapter ritorna `ErrNotEnoughGoods` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestIdempotent AdapterGet`, testare che `IDempotentAdapter` trasmetta correttamente la richiesta di ottenimento informazioni sullo svolgimento di un evento],
      va: [
        La funzione `IsAlreadyProcessed` ritorna `false`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestIdempotent AdapterSet`, testare che `IDempotentAdapter `trasmetta correttamente la richiesta di salvataggio di un nuovo evento],
      va: [
        Il _mock_ del _repository_#super[G] riceve la richiesta con successo.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst CatalogPersistance AdapterSetAndGet`, testare che `CatalogPersistance Adapter` trasmetta correttamente la richiesta di memorizzazione e ottenimento informazioni di una merce],
      va: [
        Il metodo `GetGood` ritorna un oggetto `GoodInfo` contenente una merce con le seguenti informazioni:
        - id pari a 1;
        - nome pari a "blue-hat";
        - descrizione pari a "very beautiful hat".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst CatalogPersistance AdapterGetNotExist`, testare che `CatalogPersistance Adapter` gestisca correttamente la richiesta di ottenimento informazioni di un oggetto non esistente],
      va: [
        Il metodo `GetGood` ritorna un oggetto `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst StockUpdateAdapter`, testare che `PublishStock UpdateAdapter` gestisca correttamente la richiesta di aggiornamento quantità di una merce],
      va: [
        Il metodo `CreateStockUpdate` ritorna `nil` è il messaggio risulta inviato su NATS#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst StockUpdateAdapter NetworkErr`, testare che `PublishStock UpdateAdapter` gestisca correttamente un errore di rete],
      va: [
        Il metodo `CreateStockUpdate` ritorna l'errore verificatosi.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestReservation EventAdapter`, testare che `PublishReservation EventAdapter` pubblichi correttamente una richiesta di _reservation_],
      va: [
        Il metodo `StoreReservationEvent` ritorna `nil` è il messaggio risulta inviato su NATS#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestReservationEvent AdapterNetworkErr`, testare che `PublishReservation EventAdapter` pubblichi correttamente una richiesta di _reservation_],
      va: [
        Il metodo `StoreReservationEvent` ritorna l'errore verificatosi.
      ],
      vr: "",
      st: "S",
    ),
    (
      //Utilizzato per quando le notifiche di assortimento vengono accettate
      desc: [Implementato da `Tеst StockUpdateListener`, testare che `StockUpdateListener` gestisca correttamente un evento di aggiornamento quantità merce disponibile],
      va: [
        Il _mock_ che implementa `IApplyStock UpdateUseCase` registra:
        - 10 unità della merce con id "1";
        - 20 unità della merce con id "2".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestReservation EventListener`, testare che `Reservation EventListener` riceva le richieste di _reservation_],
      va: [
        Viene ricevuto l'_acknowledge_ sulla richiesta inviata.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderUpdate ListenerForOrder`, testare che `OrderUpdateListener` riceva le richieste di aggiornamento su un ordine#super[G]],
      va: [
        Viene ricevuto l'_acknowledge_ sulla richiesta inviata.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderUpdate ListenerForTransfer`, testare che `OrderUpdateListener` riceva le richieste di aggiornamento su un trasferimento#super[G]],
      va: [
        Viene ricevuto l'_acknowledge_ sulla richiesta inviata.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestCatalogUpdate Listener`, testare che `CatalogListener` riceva le richieste di aggiornamento infromazioni su una merce],
      va: [
        Viene ricevuto l'_acknowledge_ sulla richiesta inviata e, ottenendo le informazioni sulla merce con id "1" dal _mock_ di `IApplyCatalog UpdateUseCase`, il nome di tale merce è "hat".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockController`, testare che `StockController` riceva le richieste di aggiornamento quantità merce],
      va: [
        La risposta fornita del controller è "ok".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockController AddStockErr`, testare che `StockController` gestisca correttamente una richiesta di aggiunta merce non andata a buon fine],
      va: [
        La risposta fornita del controller contiene un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockController RemStockErr`, testare che `StockController` gestisca correttamente una richiesta di rimozione merce non andata a buon fine],
      va: [
        La risposta fornita del controller contiene un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst ReservationController`, testare che `ReservationController` gestisca correttamente una richiesta di _reservation_],
      va: [
        Il controller, nella risposta fornita, inserisce l'id della resevation pari a "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst ManageStockService`, testare che `ManageStockService` gestisca correttamente una richiesta di aggiunta e rimozione merce],
      va: [
        Il _mock_ che implementa le porte del service verso il _repository_#super[G] segnala prima 10 unità della merce con id "1", quindi 0, dopo la rimozione.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst ManageReservation ServiceApply ReservationEvent`, testare che `Manage ReservationService` applichi un evento _reservation_],
      va: [
        Il metodo invocato `ApplyReservation Event` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst ManageReservation Service CreateReservation`, testare che `Manage ReservationService` gestisca correttamente la creazione di una _reservation_],
      va: [
        Il metodo invocato `ApplyReservation Event` ritorna l'id della resevation e `nil` come errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManage Reservation ServiceConfirmOrder`, testare che `Manage ReservationService` gestisca correttamente la conferma di un ordine#super[G] ,con opportune conseguenze sulle _reservation_],
      va: [
        Il metodo invocato `ConfirmOrder` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst ManageReservation ServiceConfirm TransferSender`, testare che `Manage ReservationService` gestisca correttamente la conferma di un trasferimento#super[G] (lato mittente)],
      va: [
        Il metodo invocato `ConfirmTransfer` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst ManageReservation ServiceConfirm TransferReceiver`, testare che `ManageReservation Service` gestisca correttamente la conferma di un trasferimento#super[G] (lato destinatario)],
      va: [
        Il metodo invocato `ConfirmTransfer` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestApply StockUpdateService`, testare che `ApplyStock UpdateService` gestisca correttamente l'aggiunta di stock#super[G] di merce],
      va: [
        La richiesta raggiunge correttamente il _mock_ di `IIdempotentPort`
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestApply CatalogUpdateService`, testare che `ApplyCatalog UpdateService` gestisca correttamente la modifica delle informazioni di una merce],
      va: [
        Interrogando il _mock_ `IApplyCatalog UpdatePort` sul nome dell'oggetto con id "1", questo ritorna "hat".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Rеpository Impl`, testare che `TransferRepository Impl` gestisca correttamente le richieste di ottenimento informazioni, inizializzazione e completamento dei trasferimenti],
      va: [
        Inizialmente i trasferimenti con id "1" e "2" non sono presenti, quindi il loro completamento e modifica non devono determinare il ritorno di errori.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `Tеst StockRepositoryImpl`, testare che `Stоck RepositoryImpl` gestisca correttamente le richieste di ottenimento informazioni, modifica e aggiunta stock#super[G] di merce, inclusa la gestione degli errori],
      va: [
        Inizialmente l'ottenimento di informazioni delle merci con id "1" e "2" non deve determinare un ritorno di `nil` in quanto non presenti. La successiva aggiunta e modifica quantità deve determinare il ritorno di `nil`. Inoltre deve risultare presente il magazzino con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder RepositoryImpl`, testare che `Order RepositoryImpl` gestisca correttamente le richieste di ottenimento informazioni, modifica e completamento ordini],
      va: [
        Inizialmente l'ottenimento di informazioni degli ordini con id "1" e "2" non deve determinare un ritono di `nil` in quanto non presenti. La successiva aggiunta e modifica di tali ordini deve determinare il ritorno di `nil`, così come il completamento.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Persistence AdapterApply TransferUpdate`, testare che `TransferPersistance` Adapter gestisca correttamente le richieste di aggiornamento stato dei trasferimenti],
      va: [
        Il _mock_ di `ITransferRepository` riceve correttamente l'aggiornamento.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Persistence Adapter GetTransferExist`, testare che `TransferPersistance Adapter` restituisca correttamente la risposta di una richiesta ottenimento informazioni su un trasferimento#super[G] con esito positivo],
      va: [
        La risposta fornita dal metodo `GetTranfer` contiene il trasferimento#super[G] con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Persistence Adapter GetTransfer NotExist`, testare che `TransferPersistance Adapter` restituisca correttamente la risposta di una richiesta ottenimento informazioni su un trasferimento#super[G] con esito negativo],
      va: [
        La risposta fornita dal metodo `GetTranfer` contiene l'errore `ErrTransferNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Persistence Adapter GetAllTransfer`, testare che `TransferPersistance Adapter` restituisca correttamente la risposta di una richiesta ottenimento informazioni su un trasferimento#super[G] con esito negativo],
      va: [
        La risposta fornita dal metodo `GetTranfer` contiene un solo trasferimento#super[G] e tale trasferimento#super[G] ha id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Persistence AdapterSetComplete`, testare che `TransferPersistance Adapter` trasmetta la richiesta di aggiornamento stato trasferimento#super[G] come completato],
      va: [
        La risposta fornita dal metodo `SetComplete` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Persistence AdapterSetComplete Err`, testare che `TransferPersistance Adapter` gestisca correttamente una richiesta di aggiornamento stato trasferimento#super[G] come completato nel caso in cui tale trasferimento#super[G] non esista],
      va: [
        La risposta fornita dal metodo `SetComplete` ritorna `ErrTransferNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Persistence AdapterIncrement LinkedStockUpdate`, testare che `TransferPersistance Adapter` trasmetta correttamente la richiesta di aggiunta di un aggiornamento dello stock#super[G]],
      va: [
        La risposta fornita dal metodo `IncrementLinked StockUpdate` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer PersistenceAdapter Increment LinkedStockUpdate Err,` testare che `Transfer PersistanceAdapter` gestisca correttamente la richiesta di aggiunta di un aggiornamento dello stock#super[G] con un id trasferimento#super[G] non esistente],
      va: [
        La risposta fornita dal metodo `IncrementLinked StockUpdate` ritorna `ErrTransferNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da` TestStock PersistenceAdapter ApplyStockUpdate`, testare che `Stоck PersistanceAdapter` gestisca correttamente una richiesta di aggiornamento stock#super[G] merce],
      va: [
        Il _mock_ che implementa `IStockRepository` riceve la richiesta di aggiornamento.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistence Adapter GetWarehouses`, testare che `Stоck PersistanceAdapter` gestisca correttamente una richiesta di ottenimento lista dei magazzini],
      va: [
        La risposta fornita da `GetWarehouses` contiene due magazzini.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistence Adapter GetGlobalStock`, testare che `Stоck PersistanceAdapter` gestisca correttamente una richiesta di ottenimento quantità disponibile di una merce in un magazzino],
      va: [
        La risposta fornita da `GetStock` ha memorizzato 10 unità per la merce con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistence AdapterGet StockNotExist`, testare che `StockPersistance Adapter` gestisca correttamente una richiesta di ottenimento quantità disponibile di una merce in un magazzino ma con id merce non esistente],
      va: [
        La risposta fornita da `GetStock` ha memorizzato 0 unità per la merce con id "1" e ha ritornato l'errore `ErrGoodNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestStockPersistence AdapterGetStock WarehouseNotExist`, testare che `StockPersistance Adapter` gestisca correttamente una richiesta di ottenimento quantità disponibile di una merce in un magazzino ma con un id magazzino non esistente],
      va: [
        La risposta fornita da `GetStock` ha memorizzato 0 unità per la merce con id "1" e ha ritornato l'errore `ErrWarehouseNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder PersistenceAdapter ApplyOrderUpdate`, testare che `OrderPersistance Adapter` gestisca correttamente una richiesta di applicazione modifiche ad un ordine#super[G]],
      va: [
        Il _mock_ di `IOrderRepository` riceve correttamente la richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder Persistence AdapterGet OrderExist`, testare che `OrderPersistance Adapter` gestisca correttamente una richiesta di ottenimento informazioni su un ordine#super[G]],
      va: [
        La risposta contiene un ordine#super[G] con id "1" e nessun errore (`nil`) viene ritornato.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder PersistenceAdapter GetOrderNotExist`, testare che `OrderPersistance Adapter` gestisca correttamente una richiesta di ottenimento informazioni su un ordine#super[G] con "id" non esistente],
      va: [
        Viene ritornato un errore `ErrOrderNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderPersistence AdapterGetAllOrder`, testare che `OrderPersistance Adapter` gestisca correttamente una richiesta di ottenimento informazioni su tutti gli ordini],
      va: [
        La risposta contiene un ordine#super[G] con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderPersistence AdapterSetComplete`, testare che `OrderPersistance Adapter` gestisca correttamente una richiesta di modifica stato ordine#super[G] a completato],
      va: [
        Il metodo invocato `SetComplete` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderPersistence AdapterSet CompleteErr`, testare che `OrderPersistance Adapter` gestisca correttamente una richiesta di modifica stato ordine#super[G] a completato ma l'id dell'ordine non esiste],
      va: [
        Il metodo invocato `SetComplete` ritorna `ErrOrderNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderPersistence AdapterAdd CompletedWarehouse`, testare che `OrderPersistance Adapter` gestisca correttamente una richiesta `SetCompleted WarehouseCmd`],
      va: [
        Il metodo invocato `SetCompleted Warеhouse` ritorna un ordine#super[G] con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder PersistenceAdapter AddCompleted WarehouseErr`, testare che `OrderPersistance` Adapter gestisca correttamente una richiesta `SetCompleted WarehouseCmd` con una merce con id non esistente],
      va: [
        Il metodo invocato `SetCompleted Warеhouse` ritorna un ordine#super[G] con id vuoto e un errore `ErrGoodNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestNats_stream_ AdapterSend OrderUpdate`, testare che `Nats_stream_Adapter` gestisca richieste di aggiornamento ordine#super[G]],
      va: [
        L'adapter conferma l'operazione ritornando un ordine#super[G] con id pari a "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestNats_stream_ Adapter SendTransferUpdate`, testare che `Nats_stream_Adapter` gestisca richieste di aggiornamento trasferimento#super[G]],
      va: [
        L'adapter conferma l'operazione ritornando un trasferimento#super[G] con id pari a "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestNats_stream_ Adapter SendContactOrder`, testare che `Nats_stream_Adapter` gestisca richieste di contatto di un magazzino per un ordine#super[G]],
      va: [
        Il metodo invocato `SendContact Warеhouses` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestNats_stream_ Adapter SendContactTransfer`, testare che `Nats_stream_Adapter` gestisca richieste di contatto di un magazzino per un trasferimento#super[G]],
      va: [
        Il metodo invocato `SendContactWarehouses` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestNats_stream_ Adapter RequestReservation`, testare che `Nats_stream_Adapter` gestisca richieste di _reservation_],
      va: [
        Il metodo invocato `RequestReservation` ritorna una risposta con id pari a "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder ListenerApply OrderUpdate`, testare che `OrderListener` gestisca richieste di aggiornamento informazioni di un ordine#super[G]],
      va: [
        Il _mock_ di `applyOrderUpdate UseCase` riceve la richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderListener ApplyTransferUpdate`, testare che `OrderListener` gestisca richieste di aggiornamento informazioni di un trasferimento#super[G]],
      va: [
        Il _mock_ di `applyTransferUpdate UseCase` riceve la richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrderListener ContactWarehouses Transfer`, testare che `OrderListener` gestisca richieste di aggiornamento contatto di un magazzino per un trasferimento#super[G]],
      va: [
        Il _mock_ di `contactWarehouse UseCase` riceve la richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder ListenerContact WarehousesTransfer`, testare che `OrderListener` gestisca richieste di aggiornamento contatto di un magazzino per un ordine#super[G]],
      va: [
        Il _mock_ di `contactWarehouse UseCase` riceve la richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder ListenerContact WarehousesOrder WithRetry`, testare che `OrderListener` gestisca richieste di aggiornamento contatto di un magazzino per un ordine#super[G] al secondo tentativo],
      va: [
        Il _mock_ di `contactWarehouse UseCase` riceve la richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer Controller CreateTransfer`, testare che `TransferController` gestisca richieste `CreateTransfer RequestDTO`],
      va: [
        La risposta fornita mediante NATS#super[G] contiene un trasferimento#super[G] con id pari a "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestTransfer ControllerGet Transfer`, testare che `TransferController` gestisca richieste di ottenimento informazioni su tutti i trasferimenti],
      va: [
        La risposta fornita mediante NATS#super[G] contiene due trasferimenti, con id "1" e "2" rispettivamente.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder Controller CreateOrder`, testare che `OrderController` gestisca richieste di creazione ordini],
      va: [
        La risposta fornita mediante NATS#super[G] contiene un ordine#super[G] con id pari a "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestOrder ControllerGetOrder`, testare che `OrderController` gestisca richieste di creazione ordini],
      va: [
        La risposta fornita mediante NATS#super[G] contiene due ordini, con id "1" e "2" rispettivamente.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestSimpleCalculate AvailabilityService`, testare che `SimpleCalculate AvailabilityService` riferisca quali magazzini hanno una certa quantità di una merce],
      va: [
        Viene restituito il magazzino con id "1", con esattamente 1 unità della merce con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManage OrderService GetAllTransfers`, testare che `ManageOrderService` gestisca richieste di ottenimento informazioni su tutti i trasferimenti],
      va: [
        Viene restituito un trasferimento#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManage OrderService GetTransfer`, testare che `ManageOrderService` gestisca richieste di ottenimento informazioni su un trasferimento#super[G] nello specifico],
      va: [
        Il trasferimento#super[G] con id "1" viene restituito correttamente.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManage OrderService GetAllOrders`, testare che `ManageOrderService` gestisca richieste di ottenimento informazioni su tutti gli ordini],
      va: [
        Viene restituito un ordine#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManageOrder ServiceGetOrder`, testare che `ManageOrderService` gestisca richieste di ottenimento informazioni su un ordine#super[G] nello specifico],
      va: [
        Il trasferimento#super[G] con id "1" viene restituito correttamente.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManageOrder ServiceCreateOrder`, testare che `ManageOrderService` gestisca richieste di creazione di un ordine#super[G]],
      va: [
        Viene ritornato l'id del nuovo ordine#super[G] (che non deve essere una stringa vuota).
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManageOrder ServiceCreateTrasfer`, testare che `ManageOrderService` gestisca richieste di creazione di un trasferimento#super[G]],
      va: [
        Viene ritornato l'id del nuovo trasferimento#super[G] (che non deve essere una stringa vuota).
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManage OrderService ContactWarehouse Transfer`, testare che `ManageOrderService` gestisca richieste di contatto magazzino per un trasferimento#super[G]],
      va: [
        La risposta fornita dal metodo `ContactWarehouses` deve essere false al campo `IsRetry`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManageOrder Service ContactWarehouse Transfer RetryLater`, testare che `ManageOrderService` gestisca richieste di contatto magazzino per un trasferimento#super[G] al secondo tentativo],
      va: [
        La risposta fornita dal metodo `ContactWarehouses` deve essere false al campo `IsRetry`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManage OrderService Contact WarehouseOrder`, testare che `ManageOrderService` gestisca richieste di contatto magazzino per un ordine#super[G]],
      va: [
        La risposta fornita dal metodo `ContactWarehouses` deve essere false al campo `IsRetry`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestManageOrder ServiceContact WarehouseOrder RetryLater`, testare che `ManageOrderService` gestisca richieste di contatto magazzino per un ordine#super[G] al secondo tentativo],
      va: [
        La risposta fornita dal metodo `ContactWarehouses` deve essere false al campo `IsRetry`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestApplyStock UpdateService Stоck`,testare che `ApplyStock UpdateService` registri gli aggiornamenti di stock#super[G] per un ordine#super[G]],
      va: [
        La risposta fornita dal metodo invocato `ApplyStockUpdate` non contiene errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestApplyStock UpdateService Transfer`, testare che `ApplyStock UpdateService` registri gli aggiornamenti di stock#super[G] per un trasferimento#super[G]],
      va: [
        La risposta fornita dal metodo invocato `ApplyStockUpdate` non contiene errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestApply OrderUpdate ServiceOrder`, testare che `ApplyOrder UpdateService` registri gli aggiornamenti di un ordine#super[G]],
      va: [
        Il _mock_ di `applyOrder UpdatePort` riceve la richiesta come previsto.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestApply OrderUpdate ServiceTransfer`, testare che `ApplyOrder UpdateService` registri gli aggiornamenti di un trasferimento#super[G]],
      va: [
        Il _mock_ di `applyTransfer UpdatePort` riceve la richiesta come previsto.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLogin`, testare che Business del microservizio `Api Gateway` trasmetta correttamente richieste di login],
      va: [
        Il _mock_ di `Authentication PortOut` riceve la richiesta e la risposta fornita dall'elemento testato contiene:
        - "some.secure. jwt" come token;
        - ruolo corrispondente a quello richiesto;
        - data di scadenza fissata a 1 settimana.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLoginNoSuchUser`, testare che `Business` del microservizio `Api Gateway` trasmetta correttamente richieste di login con utente sconosciuto],
      va: [
        Il _mock_ di `Authentication PortOut` riceve la richiesta e l'oggetto testato restituisce l'errore `ErrorInvalid Credentials`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLoginGetToken Error`, testare che `Business` del microservizio `Api Gateway` trasmetta correttamente richieste di login che ritornano un errore],
      va: [
        Il _mock_ di `Authentication PortOut` riceve la richiesta e l'oggetto testato restituisce l'errore `ErrorGetToken`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLoginGetRole Error`, testare che `Business` del microservizio `Api Gateway` trasmetta correttamente richieste di login che ritornano un errore relativo al ruolo],
      va: [
        Il _mock_ di `Authentication PortOut` riceve la richiesta e l'oggetto testato restituisce l'errore `ErrorGetRole`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLoginVerify TokenError`, testare che `Business` del microservizio `Api Gateway` gestisca correttamente token non validi durante l'operazione di login],
      va: [
        Il _mock_ di `Authentication PortOut` riceve la richiesta e l'oggetto testato restituisce l'errore `ErrorGetToken`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestVerifyRoleError`, testare che `Business` del microservizio `Api Gateway` riesca a gestire token non validi],
      va: [
        La vеrifica di un token valido riporta un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetWarehouses`, testare che `Business` del microservizio `Api Gateway` riesca a trasmettere richieste di ottenimento magazzini],
      va: [
        La risposta fornita possiede due magazzini:
        - uno con id "abc";
        - uno con id "def".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetWarehouses Error`, testare che `Business` del microservizio `Api Gateway` riesca a trasmettere richieste di ottenimento magazzini e risposte contenenti errore],
      va: [
        Il metodo invocato `GetWarehouses` ritorna l'errore `ErrorGetWarehouses`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetGoods`, testare che `Business` del microservizio `Api Gateway` riesca a trasmettere richieste di ottenimento dati merce],
      va: [
        La risposta fornita possiede due merci. La prima merce ha:
        - id "id1";
        - nome "abc";
        - descrizione "abcdesc";
        - 20 unità di materiale.
        La seconda merce ha:
        - id "id2";
        - nome "def";
        - descrizione "defdesc";
        - 10 unità di materiale.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetGoodsError`, testare che `Business` del microservizio `Api Gateway` riesca a trasmettere richieste di ottenimento dati merce e risposte contenenti errore riguardante i dati],
      va: [
        Il metodo invocato `GetGoods` ritorna l'errore `ErrorGetGoods`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetGoods StockError`, testare che `Business` del microservizio `Api Gateway` riesca a trasmettere richieste di ottenimento dati merce e risposte contenenti errore riguardante lo stock#super[G]],
      va: [
        Il metodo invocato `GetGoods` ritorna l'errore `ErrorGetStock`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestListGoods`, testare che `CatalogAdapter` del microservizio `Api Gateway` riesca a tradurre richieste di ottenimento lista di merci e rispettivi dati],
      va: [
        Il metodo invocato `ListGoods` non ritorna errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestListStock`, testare che `CatalogAdapter` del microservizio `Api Gateway` riesca a tradurre richieste di ottenimento lista di merci e rispettivi quantità],
      va: [
        Il metodo invocato `ListGoods` non ritorna errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestListWarehouses`, testare che `CatalogAdapter` del microservizio `Api Gateway` riesca a tradurre richieste di ottenimento lista di magazzini],
      va: [
        Il metodo invocato `ListGoods` non ritorna errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLogin`, testare che `AuthAdapter` del microservizio `Api Gateway` riesca a tradurre richieste di login],
      va: [
        `AuthAdapter` vеrifica con esito positivo il token fornito dal _mock_ del microservizio `authenticator`. In particolare la risposta fornita dall'adapter presenta:
        - il token è firmato con una firma valida;
        - lo username è "admin";
        - il ruolo è "global_admin".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetToken MarshalError`, testare che `AuthAdapter` del microservizio `Api Gateway` riesca a gestire richieste di login non correttamente formattate],
      va: [
        Il metodo invocato `GetToken` ritorna un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetUsername InvalidToken`, testare che `AuthAdapter` del microservizio `Api Gateway` riesca a gestire richieste di ottenimento nome utente ma questo non è corretto],
      va: [
        I metodi invocati ritornano un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGet RoleInvalidToken`, testare che `AuthAdapter` del microservizio `Api Gateway` riesca a gestire richieste di ottenimento ruolo ma questo non è corretto],
      va: [
        I metodi invocati ritornano un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestRevocation`, testare che `AuthAdapter` del microservizio `Api Gateway` riesca a gestire richieste di revoca token],
      va: [
        Dopo aver effettuato l'operazione di revoca (ottenibile riavviando il _mock_ del microservizio `authenticator`) la vеrifica del token restituisce l'errore `ErrTokenInvalid`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetKey_stream_ CreateError`, testare che `AuthAdapter` del microservizio `Api Gateway` riesca a gestire problemi con la creazione di uno _stream_],
      va: [
        Il metodo `getValidationKey` ritorna un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetKey WrongMessageFormat`, testare che `AuthAdapter` del microservizio `Api Gateway` riesca a gestire un messaggio non correttamente formattato],
      va: [
        Il metodo `getValidationKey` ritorna un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetKeyNoMessages`, testare che `AuthAdapter` del microservizio `Api Gateway` gestisca una richiesta di chiave ma nessuna chiave è presente],
      va: [
        Il metodo `getValidationKey` ritorna un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestVerify TokenMissingIssuer`, testare che `AuthAdapter` del microservizio `Api Gateway` gestisca una richiesta vеrifica token senza issuer],
      va: [
        Il metodo `VerifyToken` ritorna un errore `ErrTokenInvalid`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestVerify TokenGetKeyError`, testare che `AuthAdapter` del microservizio `Api Gateway` gestisca una richiesta vеrifica token firmati con chiave di un issuer non esistente],
      va: [
        Il metodo `VerifyToken` ritorna un errore `ErrTokenInvalid`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestVerify TokenExpired`, testare che `AuthAdapter` del microservizio `Api Gateway` gestisca una richiesta vеrifica token scaduti],
      va: [
        Il metodo `VerifyToken` ritorna un errore `ErrTokenExpired`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLoginOk`, testare che `LoginController` del microservizio `Api Gateway` gestisca una richiesta di login],
      va: [
        `LoginController` risponde con codice 200, il DTO restituito possiede token "some.secure.token".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLogin MissingUsername`, testare che `LoginController` del microservizio `Api Gateway` gestisca una richiesta di login senza username],
      va: [
        `LoginController` risponde con codice 400, il DTO restituito ha errore "missing_field".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLogin InternalError`, testare che `LoginController` del microservizio `Api Gateway` gestisca una richiesta di login che determina un errore nel microservizio],
      va: [
        `LoginController` risponde con codice 500, il DTO restituito ha errore "internal_error".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestLogin AuthFailed`, testare che `LoginController` del microservizio `Api Gateway` gestisca una richiesta di login negativa],
      va: [
        `LoginController` risponde con codice 401, il DTO restituito ha errore "authentication \_failed".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetWarehouses`, testare che `ListWarehouses Controller` del microservizio `Api Gateway` gestisca una richiesta di ottenimento lista magazzini],
      va: [
        `ListWarehouses Controller` risponde con codice 200, il DTO restituito fornisce tre magazzini, con i rispettivi id:
        - "id1";
        - "id2";
        - "id3".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetWarehouses`, testare che `ListWarehouses Controller` del microservizio `Api Gateway` gestisca una richiesta di ottenimento lista magazzini che determina un errore],
      va: [
        `ListWarehouses Controller` risponde con codice 500, il DTO restituito ha errore "internal_error".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestIsLoggedOk`, testare che `AuthHealth CheckController` del microservizio `Api Gateway` gestisca richieste di controllo autenticazione],
      va: [
        `AuthHealth CheckController` risponde con codice 200, il DTO restituito contiene il ruolo "global_admin".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestIsLogged MissingToken`, testare che `AuthHealth CheckController` del microservizio `Api Gateway` gestisca richieste di controllo autenticazione senza token],
      va: [
        `AuthHealth CheckController` risponde con codice 401, il DTO restituito contiene errore "missing_token".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestIsLogged InvalidToken`, testare che `AuthHealth CheckController` del microservizio `Api Gateway` gestisca richieste di controllo autenticazione con token non valido],
      va: [
        `AuthHealth CheckController` risponde con codice 401, il DTO restituito contiene errore "invalid_token".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestIsLogged ExpiredToken`, testare che `AuthHealth CheckController` del microservizio `Api Gateway` gestisca richieste di controllo autenticazione con token scaduto],
      va: [
        `AuthHealthCheck Controller` risponde con codice 401, il DTO restituito contiene errore "expired_token".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetGoods`, testare che `GetGoodsController` del microservizio `Api Gateway` gestisca richieste di ottenimento informazioni merce],
      va: [
        `GetGoodsController` risponde con codice 200, il DTO restituito contiene due merci, la prima con:
        - id "id1";
        - nome "Apple";
        - descrizione "A tasty apple";
        - quantità 20.
        la seconda con:
        - id "id2";
        - nome "Orange";
        - descrizione "A tasty orange";
        - quantità 10.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da `TestGetGoods`, testare che `GetGoodsController` del microservizio `Api Gateway` gestisca richieste di ottenimento informazioni merce che determina un errore],
      va: [
        `GetGoodsController` risponde con codice 500, il DTO restituito contiene l'errore "internal_error".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestAddQuery`, verificare che `AddQueryController` gestisca richieste di aggiunta query, ovvero aggiunta di soglie di allerta],
      va: [Il controller restituisce "123e4567-e89b-12d3-a456-426614174000" come id della soglia.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestEditQuery`, verificare che `EditQueryController` gestisca richieste di modifica query, ovvero modifiche di soglie di allerta],
      va: [Il controller restituisce la risposta "OK".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetQuery`, verificare che `GetQueryController` gestisca richieste di ottenimento query, ovvero ottenimento informazioni su una soglia di allerta],
      va: [Il controller restituisce la risposta JSON "{\"GoodId\":\"1\", \"Operator\":\"<\", \"Threshold\":10}".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestListQuery`, verificare che `ListQueriesController` gestisca richieste di elenco query, ovvero di elenco di tutte le soglie di allerta],
      va: [Il controller restituisce la risposta JSON "{\"RuleId\":\"123e4567-e89b-12d3-a456-426614174000\", \"GoodId\":\"1\", \"Operator\":\"<\",\"Threshold\":10}".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestStockUpdateReceiver`, verificare che `StockUpdateReceiver` gestisca richieste di aggiornamento stock#super[G] di merce],
      va: [NATS segnala il messaggio come ricevuto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRemoveQuery`, verificare che `RemoveQueryController` gestisca richieste eliminazione query, ovvero eliminazione soglie di allerta],
      va: [Il controller restituisce la risposta "OK".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRuleCheck`, verificare che `RuleChecker` controlli correttamente la necessità di invio di una notifica],
      va: [Il _mock_ che implementa `StockEventPublisher` riceve una richiesta di pubblicazione.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestAddQueryRule`, verificare che `Business` gestisca l'aggiunta di una query],
      va: [Il metodo invocato `AddQueryRule` ritorna l'id "391d2936-c37b-4294-bfdc-29e2473a5052" della nuova query.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetQueryRule`, verificare che `Business` gestisca l'ottenimento di una query],
      va: [Il metodo invocato `GetQueryRule` ritorna la regola con id "391d2936-c37b-4294-bfdc-29e2473a5052".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestListRules`, verificare che `Business` gestisca l'ottenimento di tutte le query memorizzate],
      va: [Il metodo invocato `ListQueryRules` ritorna una sola regola con id "391d2936-c37b-4294-bfdc-29e2473a5052".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestEditQueryRule`, verificare che `Business` gestisca la modifica di una query],
      va: [Il metodo invocato `EditQueryRule` ritorna `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRemoveQueryRule`, verificare che `Business` gestisca l'eliminazione di una query],
      va: [Il metodo invocato `RemoveQueryRule` ritorna `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestPublishStockAlert`, verificare che `Business` gestisca la pubblicazione di una notifica],
      va: [Il metodo invocato `PublishStockAlert` ritorna `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetCurrentQuantityByGoodID`, verificare che `Business` gestisca l'ottenimento dello stock#super[G] di una merce],
      va: [Il metodo invocato `GetCurrentQuantityByGoodID` ritorna una `GetRuleResultResponse` con memorizzato l'id 1.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRecordStockUpdate`, verificare che `Business` gestisca la modifica dello stock#super[G] di una merce],
      va: [Il metodo invocato `RecordStockUpdate` ritorna `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRuleRepoAddRule`, verificare che `RuleRepositoryImpl` memorizzi l'aggiunta di una nuova query],
      va: [Il metodo invocato `AddRule` ritorna `nil` e un id `uuid` popolato.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRuleRepoGetRule`, verificare che `RuleRepositoryImpl` fornisca una query che viene richiesta],
      va: [Il metodo invocato `GetRule` ritorna `nil` e una regola la cui merce legata ha id "1".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRuleRepoListRules`, verificare che `RuleRepositoryImpl` fornisca tutte le query memorizzate],
      va: [Il metodo invocato `ListRules` ritorna `nil` e una sola regola la cui merce legata ha id "1".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRuleRepoRemoveRule`, verificare che `RuleRepositoryImpl` elimini una query],
      va: [Il metodo invocato `RemoveRule` ritorna `nil` e, cercando di ottenere la regola eliminata, viene ritornato l'errore `ErrRuleNotExists`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestRuleRepoEditRule`, verificare che `RuleRepositoryImpl` modifichi una query],
      va: [Il metodo invocato `EditRule` ritorna `nil`.],
      vr: "",
      st: "S",
    ),
  ),
)

== Tеst di Integrazione <ti>

#test-table(
  unit: "I",
  tipo-test: "Tеst di Integrazione",
  (
    (
      desc: [Implementato dalla funzione `TestInsert GetWarehouses Quantity`, verificare che il microservizio `Catalog` inserisca correttamente la quantità delle merci nei magazzini],
      va: [Dopo la modifica, ottenendo la lista dei magazzini ed il loro inventario risulta che:
      - nel magazzino con id "test-warehouse-ID" ci sono 2 unità della merce con id "test-ID" e 0 unità della merce "2test-ID";
      - nel magazzino con id "2test-warehouse-ID" ci sono 3 unità della merce "test-ID" e 3 unità della merce "2test-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestInsertGetGoods Quantity`, verificare che il microservizio `Catalog` inserisca correttamente la quantità delle merci],
      va: [Dopo la modifica è presente la seguente situazione:
      - la merce con id "test-ID" ha globalmente 5 unità;
      - la merce con id "2test-ID" ha 3 unità.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestInsertGetGoods`, verificare che il microservizio `Catalog` inserisca correttamente la informazioni delle merci],
      va: [Dopo la modifica è presente la merce con id "test-id" avente:
      - nome "test-name";
      - descrizione "test-description".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetTokenEmpty Username`, verificare che il microservizio `Authenticator` si comporti correttamente se nella richiesta non viene fornito il nome utente],
      va: [Nella risposta fornita il token è vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetTokenWrong Username`, verificare che il microservizio `Authenticator` si comporti correttamente se nella richiesta viene incluso un nome utente non valido],
      va: [Nella risposta fornita il token è vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetToken`, verificare che il microservizio `Authenticator` ritorni il token generato in caso di richiesta corretta],
      va: [Nella risposta fornita il token fornito è un token valido.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestGetTwoToken`, verificare che il microservizio `Authenticator` ritorni due token validi e firmati con la medesima chiave privata],
      va: [I token forniti sono validi e firmati con la stessa chiave privata.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestAddAnd RemoveWarehouse Stоck` ,verificare che il microservizio `Warehouse`#super[G] aggiunga e rimuova correttamente stock#super[G] di merce],
      va: [Ottenendo i dati delle merci risultano essere presenti 5 unità della merce con id "1".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestCreateOrder`, testare che un ordine#super[G] venga creato con successo e venga confermato ricevendo gli aggiornamenti degli stock#super[G] ],
      va: [L'ordine ha come stato "Completed".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione `TestCreateTransfer`, testare che un trasferimento#super[G] venga creato con successo e venga confermato ricevendo gli aggiornamenti degli stock#super[G] dei magazzini coinvolti],
      va: [Il trasferimento#super[G] ha come stato "Completed".],
      vr: "",
      st: "S",
    ),
  )
),

#pagebreak()

== Tеst di Sistema <ts>

La vеrifica dei test#super[G] è stata effettuata manualmente. Data la natura del progetto e l'assenza di un _client_ sviluppato, il superamento di alcuni test#super[G] è stato determinato realizzando delle prove locali _ad hoc_ e/o verificate mediante le risposte fornite dal Sistema.

#show figure: set block(breakable: true)
#figure(
  table(
    columns: (0.80fr, 3fr, 0.90fr, 0.65fr),

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
    text(white)[*Codice*], text(white)[*Descrizione*], text(white)[*Requisito di riferimento*], text(white)[*Stato del Tеst*],
    [T-1-S], [Verificare che un Utente non autenticato possa effettuare l'autenticazione con il Sistema], [R-1-F-Ob], [S],
    [T-2-S], [Verificare che l'Utente, durante il processo di autenticazione, abbia inserito la tipologia di utente con la quale vuole essere riconosciuto], [R-2-F-Ob], [S],
    [T-3-S], [Verificare che l'Utente, durante il processo di autenticazione, abbia inserito lo Username personale], [R-3-F-De], [NI],
    [T-4-S], [Verificare che l'Utente, durante il processo di autenticazione, abbia inserito la Password personale], [R-4-F-De], [NI],
    [T-5-S], [Verificare che l'Utente riceva un avviso/errore in seguito ad un tentativo di accesso fallito], [R-5-F-Ob], [NI],
    [T-6-S], [Verificare che un Cliente possa creare un ordine da confermare in seguito], [R-6-F-Ob], [S],
    [T-7-S], [Verificare che un Cliente, durante la creazione di un ordine da confermare, inserisca un nome da dare all'ordine da confermare], [R-7-F-Ob], [S],
    [T-8-S], [Verificare che un Cliente, durante la creazione di un ordine da confermare, inserisca il nominativo del destinatario dell'ordine da confermare], [R-8-F-Ob], [S],
    [T-9-S], [Verificare che un Cliente, durante la creazione di un ordine da confermare, inserisca l'indirizzo di spedizione dell'ordine da confermare], [R-9-F-Ob], [S],
    [T-10-S], [Verificare che un Cliente possa aggiungere merce ad un ordine non confermato], [R-10-F-Ob], [S],
    [T-11-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non confermato, indichi/selezioni la merce che vuole aggiungere all'ordine non confermato], [R-11-F-Ob], [S],
    [T-12-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non confermato, inserisca/selezioni il quantitativo della merce da aggiungere all'ordine non confermato], [R-12-F-Ob], [S],
    [T-13-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, selezioni l'ordine non ancora confermato sulla quale effettuare l'operazione di aggiunta], [R-13-F-Ob], [S],
    [T-14-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, riceva un avviso/errore se la merce aggiunta all'ordine non risulti essere valida (ovvero la
      quantità della merce è insufficiente oppure la merce non esiste)], [R-14-F-Ob], [S],
    [T-15-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, riceva un avviso/errore se nessun ordine non confermato è disponibile], [R-15-F-Ob], [S],
    [T-16-S], [Verificare che un Cliente possa cancellare un ordine non confermato che viene da lui selezionato], [R-16-F-Ob], [S],
    [T-17-S], [Verificare che un Cliente possa confermare un ordine non confermato che viene da lui selezionato], [R-17-F-Ob], [S],
    [T-18-S], [Verificare che un Cliente possa visualizzare i suoi ordini non confermati], [R-18-F-Ob], [S],
    [T-19-S], [Verificare che nella lista degli ordini non confermati di un Cliente, il Cliente che ha creato tali ordini non confermati possa visualizzare, per ciascun ordine, il rispettivo ID], [R-19-F-Ob], [S],
    [T-20-S], [Verificare che nella lista degli ordini non confermati di un Cliente, il Cliente che ha creato tali ordini non confermati possa visualizzare, per ciascun ordine, la rispettiva data di creazione], [R-20-F-Ob], [S],
    [T-21-S], [Verificare che nella lista degli ordini non confermati di un Cliente, il Cliente che ha creato tali ordini non confermati possa visualizzare, per ciascun ordine, il rispettivo nome], [R-21-F-Ob], [S],
    [T-22-S], [Verificare che un Cliente possa consultare un ordine non confermato nel dettaglio], [R-22-F-Ob], [S],
    [T-23-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi l'ID di tale ordine], [R-23-F-Ob], [S],
    [T-24-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi la data di creazione di tale ordine], [R-24-F-Ob], [S],
    [T-25-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi il nome di tale ordine], [R-25-F-Ob], [S],
    [T-26-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi la lista delle merci di tale ordine], [R-26-F-Ob], [S],
    [T-27-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi, per ogni elemento della lista delle merci, la quantità della rispettiva merce interessata dall'ordine], [R-27-F-Ob], [S],
    [T-28-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi, per ogni elemento della lista delle merci, il nome della rispettiva merce], [R-28-F-Ob], [S],
    [T-29-S], [Verificare che un Cliente possa visualizzare la lista delle merci presenti nel Sistema], [R-29-F-Ob], [S],
    [T-30-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, l'ID di tale merce], [R-30-F-Ob], [S],
    [T-31-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, il nome di tale merce], [R-31-F-Ob], [S],
    [T-32-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, la quantità di tale merce complessivamente presente in tutti i magazzini], [R-32-F-Ob], [S],
    [T-33-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, la quantità di tale merce presente nel magazzino attuale], [R-33-F-Ob], [S],
    [T-34-S], [Verificare che un Cliente possa visualizzare una particolare merce nel dettaglio], [R-34-F-Ob], [S],
    [T-35-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi l'ID di tale merce], [R-35-F-Ob], [S],
    [T-36-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi il nome di tale merce], [R-36-F-Ob], [S],
    [T-37-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi la quantità globalmente disponibile di tale merce], [R-37-F-Ob], [S],
    [T-38-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi la quantità localmente disponibile di tale merce], [R-38-F-Ob], [S],
    [T-39-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi la descrizione di tale merce], [R-39-F-Ob], [S],
    [T-40-S], [Verificare che un Admin Globale possa creare un trasferimento da confermare in seguito], [R-40-F-Ob], [S],
    [T-41-S], [Verificare che un Admin Globale, durante la creazione di un trasferimento da confermare in seguito, fornisca il magazzino mittente], [R-41-F-Ob], [S],
    [T-42-S], [Verificare che un Admin Globale, durante la creazione di un trasferimento da confermare in seguito, fornisca il magazzino destinatario], [R-42-F-Ob], [S],
    [T-43-S], [Verificare che un Admin Globale possa aggiungere merce ad un trasferimento non confermato], [R-43-F-Ob], [S],
    [T-44-S], [Verificare che un Admin Globale, durante l'aggiunta di merce ad un trasferimento non confermato, fornisca quale merce aggiungere], [R-44-F-Ob], [S],
    [T-45-S], [Verificare che un Admin Globale, durante l'aggiunta di merce ad un trasferimento non confermato, selezioni la quantità di merce da aggiungere], [R-45-F-Ob], [S],
    [T-46-S], [Verificare che un Admin Globale, durante l'aggiunta di merce ad un trasferimento non confermato, selezioni il trasferimento non confermato alla quale aggiungere la merce], [R-46-F-Ob], [S],
    [T-47-S], [Verificare che un Admin Globale possa confermare un trasferimento non confermato da lui selezionato], [R-47-F-Ob], [S],
    [T-48-S], [Verificare che un Admin Globale riceva un avviso/errore qualora la merce in un trasferimento che vuole confermare non è più disponibile nel Sistema o è in quantità non sufficiente per effettuare l'ordine], [R-48-F-Ob], [S],
    [T-49-S], [Verificare che un Admin Globale riceva un avviso/errore quando cerca di confermare/cancellare un trasferimento non confermato ma nessun trasferimento non confermato è presente nel Sistema], [R-49-F-Ob], [S],
    [T-50-S], [Verificare che un Admin Globale possa cancellare un trasferimento non confermato da lui selezionato], [R-50-F-Ob], [S],
    [T-51-S], [Verificare che un Admin Globale possa visualizzare l'elenco di tutti i trasferimenti], [R-51-F-Ob], [S],
    [T-52-S], [Verificare che un Admin Globale, mentre visualizza l'elenco dei trasferimenti, visualizzi, per ciascun trasferimento, l'ID del trasferimento], [R-52-F-Ob], [S],
    [T-53-S], [Verificare che un Admin Globale, mentre visualizza l'elenco dei trasferimenti, visualizzi, per ciascun trasferimento, lo stato del trasferimento], [R-53-F-Ob], [S],
    [T-54-S], [Verificare che un Admin Globale possa visualizzare un singolo trasferimento nello specifico], [R-54-F-Ob], [S],
    [T-55-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi l'ID di tale trasferimento], [R-55-F-Ob], [S],
    [T-56-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi magazzino mittente di tale trasferimento], [R-56-F-Ob], [S],
    [T-57-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi magazzino destinatario di tale trasferimento], [R-57-F-Ob], [S],
    [T-58-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi lo stato di tale trasferimento], [R-58-F-Ob], [S],
    [T-59-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi l'elenco della merce interessata da tale trasferimento], [R-59-F-Ob], [S],
    [T-60-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi, per ogni merce nell'elenco della merce interessata da tale trasferimento, il nome di tale merce], [R-60-F-Ob], [S],
    [T-61-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi, per ogni merce nell'elenco della merce interessata da tale trasferimento, la quantità di tale merce], [R-61-F-Ob], [S],
    [T-52-S], [Verificare che un Admin Globale possa visualizzare l'elenco delle notifiche riguardanti i consigli di rifornimento], [R-62-F-Ob], [S],
    [T-63-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento, visualizzi l'ID di ciascuna notifica], [R-63-F-Ob], [S],
    [T-64-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento, visualizzi lo stato di ciascuna notifica], [R-64-F-Ob], [S],
    [T-65-S], [Verificare che un Admin Globale, effettuando un'operazione sulle notifiche di rifornimento, visualizzi un avviso/errore se nessuna notifica è disponibile], [R-65-F-Ob], [S],
    [T-66-S], [Verificare che un Admin Globale possa visualizzare le notifiche suggerite da un Sistema _Machine Learning_], [R-66-F-De], [NI],
    [T-67-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento fornite da un Sistema _Machine Learning_, visualizzi l'ID di ciascuna notifica], [R-67-F-De], [NI],
    [T-68-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento fornite da un Sistema _Machine Learning_, visualizzi lo stato di ciascuna notifica], [R-68-F-De], [NI],
    [T-69-S], [Verificare che un Admin Globale possa visualizzare una notifica di rifornimento nello specifico], [R-69-F-Ob], [S],
    [T-70-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi l'ID della notifica], [R-70-F-Ob], [S],
    [T-71-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi lo stato della notifica], [R-71-F-Ob], [S],
    [T-72-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi il magazzino destinatario del rifornimento], [R-72-F-Ob], [S],
    [T-73-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi l'elenco della merce da rifornire], [R-73-F-Ob], [S],
    [T-74-S], [Verificare che un Admin Globale, mentre visualizza l'elenco della merce presente nel dettaglio di una notifica di rifornimento, visualizzi per ogni merce l'ID della merce], [R-74-F-Ob], [S],
    [T-75-S], [Verificare che un Admin Globale, mentre visualizza l'elenco della merce presente nel dettaglio di una notifica di rifornimento, visualizzi per ogni merce il nome della merce], [R-75-F-Ob], [S],
    [T-76-S], [Verificare che un Admin Globale, mentre visualizza l'elenco della merce presente nel dettaglio di una notifica di rifornimento, visualizzi per ogni merce la quantità di quella merce da rifornire], [R-76-F-Ob], [S],
    [T-77-S], [Verificare che un Admin Globale possa confermare una notifica di rifornimento non ancora accettata da lui selezionata], [R-77-F-Ob], [S],
    [T-78-S], [Verificare che un Admin Globale possa rifiutare una notifica di rifornimento non ancora accettata da lui selezionata], [R-78-F-Ob], [S],
    [T-79-S], [Verificare che un Admin Globale possa visualizzare l'elenco dei microservizi], [R-79-F-Ob], [S],
    [T-80-S], [Verificare che un Admin Globale, visualizzando l'elenco dei microservizi, visualizzi il nome di ciascun microservizio], [R-80-F-Ob], [S],
    [T-81-S], [Verificare che un Admin Globale, visualizzando l'elenco dei microservizi, visualizzi il numero di richieste al secondo di ciascun microservizio], [R-81-F-Ob], [S],
    [T-82-S], [Verificare che un Admin Globale possa esportare l'elenco degli ordini eseguiti in un file _.csv_], [R-82-F-De], [NI],
    [T-83-S], [Verificare che un Admin Globale riceva un avviso/errore quando tenta di esportare gli ordini in un file _.csv_ ma nessun ordine da esportare è presente], [R-83-F-De], [NI],
    [T-84-S], [Verificare che un Admin Globale possa esportare l'inventario di tutti i magazzini (inventario globale) in un file _.csv_], [R-84-F-De], [NI],
    [T-85-S], [Verificare che un Admin Globale riceva un errore quando cerca di esportare l'inventario dei magazzini ma nessun dato è disponibile], [R-85-F-De], [NI],
    [T-86-S], [Verificare che un Admin Globale possa impostare una soglia minima di allerta per una merce], [R-86-F-Ob], [S],
    [T-87-S], [Verificare che un Admin Globale, impostando una soglia minima di allerta per una merce, selezioni la merce su cui vuole impostare la soglia minima], [R-87-F-Ob], [S],
    [T-88-S], [Verificare che un Admin Globale, impostando una soglia minima di allerta per una merce, inserisca il valore della soglia minima da impostare], [R-88-F-Ob], [S],
    [T-89-S], [Verificare che un Admin Globale riceva un avviso/errore quando cerca di impostare una soglia minima di allerta per una merce ma la soglia inserita non è valida (ad esempio perché negativa], [R-89-F-Ob], [S],
    [T-90-S], [Verificare che un Admin Locale possa aggiungere stock (quantità) di merce ad una merce nel Sistema], [R-90-F-Ob], [S],
    [T-91-S], [Verificare che un Admin Locale, aggiungendo stock (quantità) di una merce, selezioni la merce sulla quale effettuare l'aggiunta], [R-91-F-Ob], [S],
    [T-92-S], [Verificare che un Admin Locale, aggiungendo stock (quantità) di una merce, inserisca la quantità da aggiungere], [R-92-F-Ob], [S],
    [T-93-S], [Verificare che un Admin Globale possa aggiungere una merce nel Sistema], [R-93-F-Ob], [S],
    [T-94-S], [Verificare che un Admin Globale, creando una nuova merce nel Sistema, ne indichi il nome], [R-94-F-Ob], [S],
    [T-95-S], [Verificare che un Admin Globale, creando una nuova merce nel Sistema, ne indichi la descrizione], [R-95-F-Ob], [S],
    [T-96-S], [Verificare che un Admin Globale possa aggiornare le informazioni di una merce nel Sistema], [R-96-F-Ob], [S],
    [T-97-S], [Verificare che un Admin Globale, aggiornando le informazioni di una merce nel Sistema, indichi a quale merce applicare le modifiche], [R-97-F-Ob], [S],
    [T-98-S], [Verificare che un Admin Globale, aggiornando le informazioni di una merce nel Sistema, indichi il nuovo nome], [R-98-F-Ob], [S],
    [T-99-S], [Verificare che un Admin Globale, aggiornando le informazioni di una merce nel Sistema, indichi la nuova descrizione], [R-99-F-Ob], [S],
    [T-100-S], [Verificare che un Cliente possa visualizzare l'elenco degli ordini eseguiti], [R-100-F-Ob], [S],
    [T-101-S], [Verificare che un Cliente, visualizzando l'elenco degli ordini eseguiti, visualizzi per ciascun ordine il suo ID], [R-101-F-Ob], [S],
    [T-102-S], [Verificare che un Cliente, visualizzando l'elenco degli ordini eseguiti, visualizzi per ciascun ordine la sua data di creazione], [R-102-F-Ob], [S],
    [T-103-S], [Verificare che un Cliente, visualizzando l'elenco degli ordini eseguiti, visualizzi per ciascun ordine il suo nome], [R-103-F-Ob], [S],
    [T-104-S], [Verificare che un Cliente possa visualizzare un ordine eseguito nello specifico], [R-104-F-Ob], [S],
    [T-105-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi il suo ID], [R-105-F-Ob], [S],
    [T-106-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi la data di creazione di quell'ordine], [R-106-F-Ob], [S],
    [T-107-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi il nome di quell'ordine], [R-107-F-Ob], [S],
    [T-108-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi la lista delle merci di quell'ordine], [R-108-F-Ob], [S],
    [T-109-S], [Verificare che un Cliente, visualizzando la lista delle merci nel dettaglio di un ordine eseguito nello specifico, visualizzi per ogni merce il rispettivo nome], [R-109-F-Ob], [S],
    [T-110-S], [Verificare che un Cliente, visualizzando la lista delle merci nel dettaglio di un ordine eseguito nello specifico, visualizzi per ogni merce la quantità interessata], [R-110-F-Ob], [S],
    [T-111-S], [Verificare che un Admin Locale possa realizzare un Backup del proprio magazzino], [R-111-F-De], [NI],
    [T-112-S], [Verificare che un Admin Locale possa attivare un Backup periodico del proprio magazzino, selezionando la periodicità], [R-112-F-De], [NI],
    [T-113-S], [Verificare che un Admin Locale riceva un avviso/errore quando cerca di attivare un Backup periodico ma la periodicità immessa non è valida], [R-113-F-De], [NI],
    [T-114-S], [Verificare che un admin Locale possa eliminare la realizzazione del Backup periodico], [R-114-F-De], [NI],
    [T-115-S], [Verificare che un Admin Locale riceva un avviso/errore quando cerca di eliminare la realizzazione di un Backup periodico ma questo è già disattivato], [R-115-F-De], [NI],
    [T-116-S], [Verificare che un Admin Locale possa ripristinare il Sistema all'ultimo Backup effettuato], [R-116-F-De], [NI],
    [T-117-S], [Verificare che un Admin Locale riceva un avviso/errore quando cerca di ripristinare i dati dall'ultimo Backup effettuato ma nessun Backup è presente], [R-117-F-De], [NI],
    [T-118-S], [Verificare che un Admin Globale possa visualizzare le attività di accesso], [R-118-F-De], [NI],
    [T-119-S], [Verificare che un Admin Globale, visualizzando l'elenco delle attività di accesso, visualizzi per ciascuna l'IP del luogo di accesso], [R-119-F-De], [NI],
    [T-120-S], [Verificare che un Admin Globale, visualizzando l'elenco delle attività di accesso, visualizzi per ciascuna il proprio ID], [R-120-F-De], [NI],
    [T-121-S], [Verificare che un Admin Globale, visualizzando l'elenco delle attività di accesso, visualizzi per ciascuna lo stato (riuscito, bloccato o negato)], [R-121-F-De], [NI],
    [T-122-S], [Verificare che un Admin Globale possa bloccare un tentativo di accesso inserendo l'ID di tale tentativo], [R-122-F-De], [NI],
    [T-123-S], [Verificare che il Sistema di rilevamento possa avviare l'invio di notifiche email/sms per attività importanti come il raggiungimento di scorte minime o la necessità di approvare un rifornimento], [R-123-F-De], [NI],
    [T-124-S], [Verificare che un Admin Globale possa aggiungere un Utente al Sistema], [R-124-F-De], [NI],
    [T-125-S], [Verificare che un Admin Globale, aggiungendo un Utente al sistema, ne inserisca il nome], [R-125-F-De], [NI],
    [T-126-S], [Verificare che un Admin Globale, aggiungendo un Utente al sistema, ne inserisca la Password], [R-126-F-De], [NI],
    [T-127-S], [Verificare che un Admin Globale, aggiungendo un Utente al sistema, ne inserisca il ruolo], [R-127-F-De], [NI],
    [T-128-S], [Verificare che un Admin Globale possa eliminare un Utente da lui selezionato], [R-128-F-De], [NI],
    [T-129-S], [Verificare che un Admin Globale possa promuovere il ruolo di un Utente da lui selezionato], [R-129-F-De], [NI],
    [T-130-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle merci disponibili], [R-130-F-Ob], [S],
    [T-131-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione della quantità localmente disponibile per ogni merce], [R-131-F-Ob], [S],
    [T-132-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione della quantità globalmente disponibile per ogni merce], [R-132-F-Ob], [S],
    [T-133-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione del nome di ciascuna merce], [R-133-F-Ob], [S],
    [T-134-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione della descrizione di ciascuna merce], [R-134-F-Ob], [S],
    [T-135-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione dell'ID di ciascuna merce], [R-135-F-Ob], [S],
    [T-136-S], [Verificare che lo Scheduler, all'aggiunta di una merce al Sistema, riesca ad avviare la sincronizzazione della stessa], [R-136-F-Ob], [S],
    [T-137-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione della quantità localmente disponibile della stessa], [R-137-F-Ob], [S],
    [T-138-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione della quantità globalmente disponibile della stessa], [R-138-F-Ob], [S],
    [T-139-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione del nome della stessa], [R-139-F-Ob], [S],
    [T-140-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione della descrizione della stessa], [R-140-F-Ob], [S],
    [T-141-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione dell'ID della stessa], [R-141-F-Ob], [S],
    [T-142-S], [Verificare che lo Scheduler, all'eliminazione di una merce al Sistema, riesca ad avviare la sincronizzazione della stessa], [R-142-F-Ob], [S],
    [T-143-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione della quantità localmente disponibile della stessa], [R-143-F-Ob], [S],
    [T-144-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione della quantità globalmente disponibile della stessa], [R-144-F-Ob], [S],
    [T-145-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione del nome della stessa], [R-145-F-Ob], [S],
    [T-146-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione della descrizione della stessa], [R-146-F-Ob], [S],
    [T-147-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione dell'ID della stessa], [R-147-F-Ob], [S],
    [T-148-S], [Verificare che lo Scheduler, alla modifica di una merce al Sistema, riesca ad avviare la sincronizzazione della stessa], [R-148-F-Ob], [S],
    [T-149-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione della quantità localmente disponibile della stessa], [R-149-F-Ob], [S],
    [T-150-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione della quantità globalmente disponibile della stessa], [R-150-F-Ob], [S],
    [T-151-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione del nome della stessa], [R-151-F-Ob], [S],
    [T-152-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione della descrizione della stessa], [R-152-F-Ob], [S],
    [T-153-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione dell'ID della stessa], [R-153-F-Ob], [S],
    [T-154-S], [Verificare che lo Scheduler possa avviare la sincronizzazione degli ordini], [R-154-F-Ob], [S],
    [T-155-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione della data di creazione], [R-155-F-Ob], [S],
    [T-156-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione del nome], [R-156-F-Ob], [S],
    [T-157-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione dell'ID], [R-157-F-Ob], [S],
    [T-158-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione dello stato], [R-158-F-Ob], [S],
    [T-159-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione delle merci interessate], [R-159-F-Ob], [S],
    [T-160-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per la lista delle merci di ciascun ordine la sincronizzazzione dell'ID di ciascuna merce nella lista], [R-160-F-Ob], [S],
    [T-161-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per la lista delle merci di ciascun ordine la sincronizzazzione della quantità di ciascuna merce nella lista], [R-161-F-Ob], [S],
    [T-162-S], [Verificare che lo Scheduler possa avviare la sincronizzazione degli ordini confermati], [R-162-F-Ob], [S],
    [T-163-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini confermati, possa avviare la sincronizzazione di tutti gli ordini], [R-163-F-Ob], [S],
    [T-164-S], [Verificare che lo Scheduler possa avviare la sincronizzazione degli ordini cancellati], [R-164-F-Ob], [S],
    [T-165-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini cancellati, possa avviare la sincronizzazione di tutti gli ordini], [R-165-F-Ob], [S],
    [T-166-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dell'elenco dei trasferimenti], [R-166-F-Ob], [S],
    [T-167-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione del magazzino destinatario di ciascun trasferimento], [R-167-F-Ob], [S],
    [T-168-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione del magazzino mittente di ciascun trasferimento], [R-168-F-Ob], [S],
    [T-169-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione dell'ID di ciascun trasferimento], [R-169-F-Ob], [S],
    [T-170-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione dello stato di ciascun trasferimento], [R-170-F-Ob], [S],
    [T-171-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione della lista delle merci coinvolte in ciascun trasferimento], [R-171-F-Ob], [S],
    [T-172-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco della merce dei trasferimenti, possa avviare la sincronizzazione dell'ID di ciascuna merce], [R-172-F-Ob], [S],
    [T-173-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco della merce dei trasferimenti, possa avviare la sincronizzazione della quantità interessata dal trasferimento di ciascuna merce], [R-173-F-Ob], [S],
    [T-174-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dei trasferimenti confermati], [R-174-F-Ob], [S],
    [T-175-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei trasferimenti confermati, possa avviare la sincronizzazione di tutti i trasferimenti], [R-175-F-Ob], [S],
    [T-176-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dei trasferimenti cancellati], [R-176-F-Ob], [S],
    [T-177-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei trasferimenti cancellati, possa avviare la sincronizzazione di tutti i trasferimenti], [R-177-F-Ob], [S],
    [T-178-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle notifiche di rifornimento], [R-178-F-Ob], [S],
    [T-179-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa la sincronizzazione per ogni notifica il rispettivo ID], [R-179-F-Ob], [S],
    [T-180-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa avviare la sincronizzazione per ogni notifica il rispettivo magazzino destinatario], [R-180-F-Ob], [S],
    [T-181-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa avviare la sincronizzazione per ogni notifica il rispettivo stato], [R-181-F-Ob], [S],
    [T-182-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa avviare la sincronizzazione per ogni notifica il rispettivo elenco delle merci], [R-182-F-Ob], [S],
    [T-183-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco delle merci delle notifiche di rifornimento, possa avviare la sincronizzazione per ogni merce nell'elenco della singola notifica l'ID della merce], [R-183-F-Ob], [S],
    [T-184-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco delle merci delle notifiche di rifornimento, possa avviare la sincronizzazione per ogni merce nell'elenco della singola notifica la quantità interessata della merce], [R-184-F-Ob], [S],
    [T-185-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle notifiche di rifornimento confermate], [R-185-F-Ob], [S],
    [T-186-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento confermate, possa avviare la sincronizzazione di tutte le notifiche di rifornimento], [R-186-F-Ob], [S],
    [T-187-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle notifiche di rifornimento cancellate], [R-187-F-Ob], [S],
    [T-188-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento cancellate, possa avviare la sincronizzazione di tutte le notifiche di rifornimento], [R-188-F-Ob], [S],
    [T-189-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dei dati dei microservizi], [R-189-F-Ob], [S],
    [T-190-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei dati dei microservizi, possa avviare la sincronizzazione del nome di ciascun microservizio], [R-190-F-Ob], [S],
    [T-191-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei dati dei microservizi, possa avviare la sincronizzazione del numero di richieste al secondo di ciascun microservizio], [R-191-F-Ob], [S],
    [T-192-S], [Verificare che lo Scheduler possa avviare la sincronizzazione della soglia minima di una merce quando questa viene aggiornata], [R-192-F-Ob], [S],
  ),
  caption: [Tеst di Sistema],
)

=== Tracciamento dei Tеst di Sistema

#show figure: set block(breakable: true)
#figure(
  table(
    columns: (1fr, 1fr),

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
    text(white)[*Codice Tеst*], text(white)[*Codice Requisito*],
    [T-1-S], [R-1-F-Ob],
    [T-2-S], [R-2-F-Ob],
    [T-3-S], [R-3-F-De],
    [T-4-S], [R-4-F-De],
    [T-5-S], [R-5-F-Ob],
    [T-6-S], [R-6-F-Ob],
    [T-7-S], [R-7-F-Ob],
    [T-8-S], [R-8-F-Ob],
    [T-9-S], [R-9-F-Ob],
    [T-10-S], [R-10-F-Ob],
    [T-11-S], [R-11-F-Ob],
    [T-12-S], [R-12-F-Ob],
    [T-13-S], [R-13-F-Ob],
    [T-14-S], [R-14-F-Ob],
    [T-15-S], [R-15-F-Ob],
    [T-16-S], [R-16-F-Ob],
    [T-17-S], [R-17-F-Ob],
    [T-18-S], [R-18-F-Ob],
    [T-19-S], [R-19-F-Ob],
    [T-20-S], [R-20-F-Ob],
    [T-21-S], [R-21-F-Ob],
    [T-22-S], [R-22-F-Ob],
    [T-23-S], [R-23-F-Ob],
    [T-24-S], [R-24-F-Ob],
    [T-25-S], [R-25-F-Ob],
    [T-26-S], [R-26-F-Ob],
    [T-27-S], [R-27-F-Ob],
    [T-28-S], [R-28-F-Ob],
    [T-29-S], [R-29-F-Ob],
    [T-30-S], [R-30-F-Ob],
    [T-31-S], [R-31-F-Ob],
    [T-32-S], [R-32-F-Ob],
    [T-33-S], [R-33-F-Ob],
    [T-34-S], [R-34-F-Ob],
    [T-35-S], [R-35-F-Ob],
    [T-36-S], [R-36-F-Ob],
    [T-37-S], [R-37-F-Ob],
    [T-38-S], [R-38-F-Ob],
    [T-39-S], [R-39-F-Ob],
    [T-40-S], [R-40-F-Ob],
    [T-41-S], [R-41-F-Ob],
    [T-42-S], [R-42-F-Ob],
    [T-43-S], [R-43-F-Ob],
    [T-44-S], [R-44-F-Ob],
    [T-45-S], [R-45-F-Ob],
    [T-46-S], [R-46-F-Ob],
    [T-47-S], [R-47-F-Ob],
    [T-48-S], [R-48-F-Ob],
    [T-49-S], [R-49-F-Ob],
    [T-50-S], [R-50-F-Ob],
    [T-51-S], [R-51-F-Ob],
    [T-52-S], [R-52-F-Ob],
    [T-53-S], [R-53-F-Ob],
    [T-54-S], [R-54-F-Ob],
    [T-55-S], [R-55-F-Ob],
    [T-56-S], [R-56-F-Ob],
    [T-57-S], [R-57-F-Ob],
    [T-58-S], [R-58-F-Ob],
    [T-59-S], [R-59-F-Ob],
    [T-60-S], [R-60-F-Ob],
    [T-61-S], [R-61-F-Ob],
    [T-52-S], [R-62-F-Ob],
    [T-63-S], [R-63-F-Ob],
    [T-64-S], [R-64-F-Ob],
    [T-65-S], [R-65-F-Ob],
    [T-66-S], [R-66-F-De],
    [T-67-S], [R-67-F-De],
    [T-68-S], [R-68-F-De],
    [T-69-S], [R-69-F-Ob],
    [T-70-S], [R-70-F-Ob],
    [T-71-S], [R-71-F-Ob],
    [T-72-S], [R-72-F-Ob],
    [T-73-S], [R-73-F-Ob],
    [T-74-S], [R-74-F-Ob],
    [T-75-S], [R-75-F-Ob],
    [T-76-S], [R-76-F-Ob],
    [T-77-S], [R-77-F-Ob],
    [T-78-S], [R-78-F-Ob],
    [T-79-S], [R-79-F-Ob],
    [T-80-S], [R-80-F-Ob],
    [T-81-S], [R-81-F-Ob],
    [T-82-S], [R-82-F-De],
    [T-83-S], [R-83-F-De],
    [T-84-S], [R-84-F-De],
    [T-85-S], [R-85-F-De],
    [T-86-S], [R-86-F-Ob],
    [T-87-S], [R-87-F-Ob],
    [T-88-S], [R-88-F-Ob],
    [T-89-S], [R-89-F-Ob],
    [T-90-S], [R-90-F-Ob],
    [T-91-S], [R-91-F-Ob],
    [T-92-S], [R-92-F-Ob],
    [T-93-S], [R-93-F-Ob],
    [T-94-S], [R-94-F-Ob],
    [T-95-S], [R-95-F-Ob],
    [T-96-S], [R-96-F-Ob],
    [T-97-S], [R-97-F-Ob],
    [T-98-S], [R-98-F-Ob],
    [T-99-S], [R-99-F-Ob],
    [T-100-S], [R-100-F-Ob],
    [T-101-S], [R-101-F-Ob],
    [T-102-S], [R-102-F-Ob],
    [T-103-S], [R-103-F-Ob],
    [T-104-S], [R-104-F-Ob],
    [T-105-S], [R-105-F-Ob],
    [T-106-S], [R-106-F-Ob],
    [T-107-S], [R-107-F-Ob],
    [T-108-S], [R-108-F-Ob],
    [T-109-S], [R-109-F-Ob],
    [T-110-S], [R-110-F-Ob],
    [T-111-S], [R-111-F-De],
    [T-112-S], [R-112-F-De],
    [T-113-S], [R-113-F-De],
    [T-114-S], [R-114-F-De],
    [T-115-S], [R-115-F-De],
    [T-116-S], [R-116-F-De],
    [T-117-S], [R-117-F-De],
    [T-118-S], [R-118-F-De],
    [T-119-S], [R-119-F-De],
    [T-120-S], [R-120-F-De],
    [T-121-S], [R-121-F-De],
    [T-122-S], [R-122-F-De],
    [T-123-S], [R-123-F-De],
    [T-124-S], [R-124-F-De],
    [T-125-S], [R-125-F-De],
    [T-126-S], [R-126-F-De],
    [T-127-S], [R-127-F-De],
    [T-128-S], [R-128-F-De],
    [T-129-S], [R-129-F-De],
    [T-130-S], [R-130-F-Ob],
    [T-131-S], [R-131-F-Ob],
    [T-132-S], [R-132-F-Ob],
    [T-133-S], [R-133-F-Ob],
    [T-134-S], [R-134-F-Ob],
    [T-135-S], [R-135-F-Ob],
    [T-136-S], [R-136-F-Ob],
    [T-137-S], [R-137-F-Ob],
    [T-138-S], [R-138-F-Ob],
    [T-139-S], [R-139-F-Ob],
    [T-140-S], [R-140-F-Ob],
    [T-141-S], [R-141-F-Ob],
    [T-142-S], [R-142-F-Ob],
    [T-143-S], [R-143-F-Ob],
    [T-144-S], [R-144-F-Ob],
    [T-145-S], [R-145-F-Ob],
    [T-146-S], [R-146-F-Ob],
    [T-147-S], [R-147-F-Ob],
    [T-148-S], [R-148-F-Ob],
    [T-149-S], [R-149-F-Ob],
    [T-150-S], [R-150-F-Ob],
    [T-151-S], [R-151-F-Ob],
    [T-152-S], [R-152-F-Ob],
    [T-153-S], [R-153-F-Ob],
    [T-154-S], [R-154-F-Ob],
    [T-155-S], [R-155-F-Ob],
    [T-156-S], [R-156-F-Ob],
    [T-157-S], [R-157-F-Ob],
    [T-158-S], [R-158-F-Ob],
    [T-159-S], [R-159-F-Ob],
    [T-160-S], [R-160-F-Ob],
    [T-161-S], [R-161-F-Ob],
    [T-162-S], [R-162-F-Ob],
    [T-163-S], [R-163-F-Ob],
    [T-164-S], [R-164-F-Ob],
    [T-165-S], [R-165-F-Ob],
    [T-166-S], [R-166-F-Ob],
    [T-167-S], [R-167-F-Ob],
    [T-168-S], [R-168-F-Ob],
    [T-169-S], [R-169-F-Ob],
    [T-170-S], [R-170-F-Ob],
    [T-171-S], [R-171-F-Ob],
    [T-172-S], [R-172-F-Ob],
    [T-173-S], [R-173-F-Ob],
    [T-174-S], [R-174-F-Ob],
    [T-175-S], [R-175-F-Ob],
    [T-176-S], [R-176-F-Ob],
    [T-177-S], [R-177-F-Ob],
    [T-178-S], [R-178-F-Ob],
    [T-179-S], [R-179-F-Ob],
    [T-180-S], [R-180-F-Ob],
    [T-181-S], [R-181-F-Ob],
    [T-182-S], [R-182-F-Ob],
    [T-183-S], [R-183-F-Ob],
    [T-184-S], [R-184-F-Ob],
    [T-185-S], [R-185-F-Ob],
    [T-186-S], [R-186-F-Ob],
    [T-187-S], [R-187-F-Ob],
    [T-188-S], [R-188-F-Ob],
    [T-189-S], [R-189-F-Ob],
    [T-190-S], [R-190-F-Ob],
    [T-191-S], [R-191-F-Ob],
    [T-192-S], [R-192-F-Ob],
  ),
  caption: [Tracciamento dei Tеst di Sistema],
)

== Tеst di Regressione

_ALimitedGroup_ ha voluto assicurare che l'inserimento di nuove funzionalità#super[G] non rompesse funzionalità#super[G] esistenti: per questo motivo, _ALimitedGroup_ ha strutturato il _repository_#super[G] Github relativo all'_MVP_ in maniera tale che questo ripeta, al caricamento di nuovo codice, l'esecuzione di tutti i test#super[G] di unità e di integrazione, bloccando il passaggio del codice al ramo principale qualora un test#super[G] fallisse.

== Tеst di Accettazione <ta>

I Test#super[G] di Accettazione sono parzialmente automatizzati mediante l'utilizzo di alcuni script che sfruttano `curl`. Per una corretta esecuzione, il sistema deve essere riportato allo stato iniziale dopo ogni test#super[G] mediante il comando `docker compose down -v --remove-orphans` e, successivamente, `docker compose up --build -d`. Il processo può essere automatizzato con `just`, eseguendo il comando `just reset`. Si consiglia di aspettare il completo avvio dei servizi prima di effettuare un test#super[G] e di copiare manualmente i comandi elencati.

Si ricorda infine che per "risposta JSON" si intende quanto contenuto tra due parentesi graffe, come nel seguente esempio:
`
{
  //Corpo della risposta JSON
}
`
Si ricorda inoltre che una risposta JSON vuota rassomiglia al seguente esempio `{}`.

Per informazioni più precise riguardanti il funzionamento di Grafana#super[G] e sull'aggiunta di microservizi si consiglia la lettura del #link("https://alimitedgroup.github.io/docs/")[Manuale Utente#super[G]].

#test-table(
  unit: "A",
  tipo-test: "Tеst di Accettazione",
  (
    (
      desc: [Verificare che il prodotto dia la possibilità all'Utente di essere riconosciuto come Cliente, Admin Locale e Admin Globale],
      va: [Eseguendo il file `login.sh`, che eseguirà la richiesta di un token per il ruolo di admin globale, questo restituisce una risposta JSON con valore `"role": "global_admin"`, segno che il token è stato ricevuto e il Sistema lo riconosce come valido.],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di visualizzare ordini],
      va: [Eseguendo il file `create_order.sh` con il comando `./create_order.sh | grep -A 90 "Create order"`, verrà creato un ordine#super[G] di 7 unità della merce con id `hat-1`, disponibili, per via di aggiunte precedenti effettuate sempre dallo script, in 6 unità in un magazzino e 2 in un altro. Nell'output stampato verificare la seconda risposta JSON, contenente le seguenti informazioni:
        - `"order-id": "campo variabile ad ogni esecuzione"`;
        - `"status": "completed"`;
        - `"name": "order-1"`;
        - `"full_name": "John Doe"`;
        - `"address: "via roma 12 35012"`;
        - `"gоods": { "hat-1": 7},`;
        - `"reservations": "campo variabile ad ogni esecuzione"`
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di completare ordini],
      va: [Eseguendo il file `create_order.sh` con il comando `./create_order.sh | grep -A 90 "Create order"`, verrà creato un ordine#super[G] di 7 unità della merce con id `hat-1`, disponibili, per via di aggiunte precedenti effettuate sempre dallo script, in 6 unità in un magazzino e 2 in un altro. Nell'output stampato verificare la prima risposta JSON, contenente l'informazione `"order_id": "campo variabile ad ogni esecuzione"`],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di aggiungere merci al Sistema],
      va: [Eseguendo `update_good.sh` con il comando `./update_good.sh | grep -A 14 "Create gоod hat-1"`, verificare che nella seconda risposta JSON siano presenti le seguenti informazioni:
        - `"name": "hat"`;
        - `"description": "blue hat, version 1"`;
        - `"id": "hat-1"`;
        - `"amount": 0`;
        - `"amounts": {}`.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di modificare informazioni delle merci del Sistema],
      va: [Eseguendo `update_good.sh` con il comando `./update_good.sh | grep -A 14 "Update gоod hat-1"`, verificare che nella seconda risposta JSON siano presenti le seguenti informazioni:
        - `"name": "hat"`;
        - `"description": "blue hat, version 2"`;
        - `"id": "hat-1"`;
        - `"amount": 0`;
        - `"amounts": {}`.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di visualizzare merci dal Sistema],
      va: [Eseguire il file `add_good.sh` con il comando `./add_good.sh | grep -A 90 "Get goods status"`. Lo script crea una serie di ordini e, per eseguirli, deve prima aggiungere due merci differenti. Verificare, nella risposta JSON, la presenza dei seguenti valori:
        - `"name": "hat"`;
        - `"description": "red hat"`;
        - `"id": "hat-2"`;
        - `"amount": 0`;
        - `"amounts": {}`;
        - `"name": "hat"`;
        - `"description": "blue hat"`;
        - `"id": "hat-1"`;
        - `"amount": 6`;
        - `"amounts": {"1": 6}`.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di completare trasferimenti],
      va: [Eseguire il file `create_transfer.sh` con il comando `./create_transfer.sh | grep -A 17 "Create transfer"`, verranno inserite 6 quantità della merce con id `hat-1` nel magazzino con id 1 e 2 in quello con id 2 ed un trasferimento#super[G] di 5 unità dal magazzino con id 1 a quello con id 2. Verificare che nella prima risposta JSON ci sia il dato `"transfer_id": "campo variabile ad ogni esecuzione"`.
        Eseguendo lo script senza `grep` sarà possibile osservare che, nella voce `amounts` dell'ultima risposta JSON, sono presenti 7 unità nel magazzino con id 2 e 1 unità nel magazzino con id 1, a conferma del trasferimento#super[G] riuscito.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di visualizzare trasferimenti],
      va: [Eseguire il file `create_transfer.sh` con il comando `./create_transfer.sh | grep -A 17 "Create transfer"`, verranno inserite 6 quantità della merce con id `hat-1` nel magazzino con id 1 e 2 in quello con id 2 ed un trasferimento#super[G] di 5 unità dal magazzino con id 1 a quello con id 2. Verificare che nella prima risposta JSON ci sia il dato `"transfer_id": "campo variabile ad ogni esecuzione"` e nella seconda risposta JSON i seguenti valori:
        - `"status": "Completed"`;
        - `"transfer_id": "campo variabile ad ogni esecuzione"`;
        - `"sender_id": "1"`;
        - `"receiver_id": "2"`;
        - `"gоods": {"hat-1": 5}`.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di visualizzare notifiche di rifornimento],
      va: [Eseguire lo script `create_notification_query.sh`: lo script procederà a creare un prodotto e aggiungerne 6 unità, quindi procederà alla creazione della soglia di allerta, fissata a 100 unità. Lo script metterà si metterà dunque in ascolto nel canale delle notifiche: verificare che questo si inizi a popolare. Attenzione: per questo test#super[G] è necessario avere nats#super[G] installato nel proprio sistema e correttamente configurato tra i percorsi accessibili dalla linea di comando.],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di impostare una soglia minima di allerta per ogni merce],
      va: [Eseguire lo script `get_notifications_queries.sh` con il comando `./get_notifications_queries.sh | grep -A 90 "Get notification queries"`. Verificare che la risposta JSON subito sotto la scritta "Get notification queries" contenga le seguenti informazioni:
        - `"query_id": "campo variabile ad ogni esecuzione"`;
        - `"good_id": "hat-1"`;
        - `"operator": "<"`;
        - `"threshold": 100`.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di aggiungere stock#super[G] di merce],
      va: [Eseguire lo script `add_stock.sh`. Lo script crea una merce con id `hat-1` e ne aggiunge 6 unità al magazzino con id 1. Verificare che nella terza risposta JSON siano presenti le seguenti informazioni:
        - `"name": "hat"`;
        - `"description": "blue hat"`;
        - `"id": "hat-1"`;
        - `"amount": 6`;
        - `"amounts": {"1": 6}`.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di visualizzare i microservizi del Sistema],
      va: [Aggiornare il file `compose.yml` per aggiungere un ulteriore microservizio e determinare se su Grafana#super[G] è possibile aggiungere le relative misurazioni. Per maggiori informazioni sull'accesso a Grafana#super[G] e sull'aggiunta di servizi alla _dashboard_#super[G] consultare il #link("https://alimitedgroup.github.io/docs/telemetria/config/")[Manuale Utente#super[G]].],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto dia la possibilità di visualizzare il numero di richieste al secondo dei microservizi del Sistema],
      va: [Eseguire il file `./create_multiple_order.sh` ed effetuare l'accesso a Grafana#super[G] (per maggiori informazioni consultare il #link("https://alimitedgroup.github.io/docs/telemetria/config/")[Manuale Utente#super[G]]), quindi verificare che (i valori potrebbero leggermente variare a seconda dell'intervallo di aggiornamento di notifications):
        - Authenticator possieda 3 richieste per 3 token;
        - Catalog presenta 20 richieste totali;
        - Order/Transfer possieda 19 richieste totali;
        - I due magazzini possiedano 15 richieste totali ciascuno;
        - Notifications possiede 6 richieste totali.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto gestisca adeguatamente i conflitti tra ordini],
      va: [Eseguire il file `create_multiple_order.sh` con il comando `./create_multiple_order.sh | grep -A 90 "Get orders and goods status"`: lo script eseguirà l'inserimento di 6 unità della merce con id `hat-1` nel magazzino con id 1 e 8 nel magazzino con id 2, 6 unità della merce con id `hat-2` nel magazzino con id 1 e 5 nel magazzino con id 2. Quindi procede a realizzare 3 ordini, tutti con 13 unità di `hat-1` e 11 di `hat-2`. Verificare che nella prima risposta JSON appaiano tre ordini:
        - quello con nome `test-order-1` ha il valore `"status": "Completed"`;
        - quello con nome `test-order-2` ha il valore `"status": "Cancelled"`;
        - quello con nome `test-order-3` ha il valore `"status": "Cancelled"`.
        Il risultato potrebbe leggermente variare nell'ordine che viene completato, ma solo uno risulterà completato.
      ],
      vr: "",
      st: "I",
    ),
    (
      desc: [Verificare che il prodotto funzioni correttamente con più istanze dello stesso microservizio],
      va: [Il test#super[G] viene effettuato manualmente: aggiugere un'istanza di Order/Transfer (per maggiori informazioni consultare il #link("https://alimitedgroup.github.io/docs/installazione/preparazione-del-sistema/02-configurare-ms/")[Manuale Utente#super[G]]) e verificare, eseguendo `./create_multiple_order.sh | grep -A 90 "Get orders and goods status"` che lo stato sia lo stesso riportato nel test#super[G] *T-14-A*.],
      vr: "",
      st: "I",
    ),
  ),
)

#pagebreak()
= Cruscotto di Valutazione <dashboard>

Verranno ora esposte le misurazioni eseguite durante il periodo che va dall'aggiudicazione del capitolato#super[G] sino alla _Product Baseline#super[G] (PB)_.

== MPC01 e MPC02: _Earned Value_ e _Planned Value_

#metriche-graph(nome: "MPC01", desc: "Grafico per periodo di MPC01", width: 100%);

Dall'aggiudicazione del Capitolato#super[G] si denota un progressivo aumento del lavoro pianificato, fino allo _sprint 6_.\
Dallo _sprint 7_ il carico di lavoro pianificato è aumentato in modo accentuato, in quanto, dopo la fine della sessione d'esame il gruppo _ALimitedGroup_ ha potuto dedicarsi interamente al progetto incrementando notevolmente le ore di lavoro come riportato nel #link("https://alimitedgroup.github.io/PP%20v2.0.0.pdf")[*Piano di Progetto#super[G] ver. 2.0.0*].\
È possibile notare che l'_Earned Value_ (EV) e il _Planned Value_ (PV) per lo più coincidono, quindi la programmazione del lavoro è stata efficace e conforme.

#pagebreak()
== MPC03 e MPC07: _Actual Cost_ e _Estimate To Complete_

#metriche-graph(nome: "MPC03", desc: "Grafico per periodo di MPC01 e MPC07", width: 100%);

Dal grafico si può notare che i costi sostenuti durante il progetto sono crescenti.\
Dopo lo _sprint 6_ l'incremento risulta evidente:come programmato il ritmo di lavoro è aumentato e le conoscenze si sono consolidate.
Al termine del progetto il costo sostenuto è pari a 12645\$.\

I costi necessari per terminare il progetto, al contrario, risultano decrescenti.
All'aggiudicazione il valore coincide con il budget, al termine dello _sprint 9_ il valore è pari a 0\$, quindi il progetto è stato completato.

L' _Actual Cost_ (AC) finale è inferiore rispetto all' _Estimate To Complete_ (ETC) iniziale, infatti per completare il progetto sono state necessarie meno risorse di quanto preventivato.
#pagebreak()
== MPC04 e MPC05: _Cost Performance Index_ e _Schedule Performance Index_

#metriche-graph(nome: "MPC04", desc: "Grafico per periodo di MPC04 e MPC05", width: 100%);

Dal grafico si denota che inizialmente _ALimitedGroup_ non ha gestito correttamente il _budget_ infatti il _Cost Performance Index_ (CPI) è minore di 1.
La cattiva gestione è anche documentata dallo _Schedule Performance Index_ che, essendo inferiore ad 1, indica l'accumulo di ritardi: effettivamente il primo periodo è stato eccessivamente lungo e non ha portato al completamento di tutte le attività previste.
La situazione, in seguito, è migliorata: il _Cost Performance Index_ (CPI) e lo _Schedule Performance Index_ (SPI) sono risultati superiori ad 1 (tranne nello _sprint 6_ in cui si è registrato un minimo ritardo, quindi lo SPI è inferiore a 1), indicando una buona gestione del budget e del programma di lavoro.
#pagebreak()
== MPC06: _Estimate At Completion_

#metriche-graph(nome: "MPC06", desc: "Grafico per periodo di MPC06", width: 100%);

Come prevedibile dalle misurazioni precedenti, una gestione iniziale non corretta delle risorse ha portato la previsione di spesa futura ben oltre il tetto massimo di spesa.
Tale problematica è stata presto risolta a partire dallo _sprint_#super[G] 2: il costo previsto per il completamento del progetto è sempre stato sotto o in prossimità del budget iniziale.

#pagebreak()
== MPC08: _Time Estimate At Completion_
#metriche-graph(nome: "MPC08", desc: "Grafico per periodo di MPC08", width: 100%);

È tangibile che durante lo _sprint#super[G]_ 1 il tempo stimato per completare il progetto risultava superiore alla durata pianificata, in quanto le conoscenze del gruppo erano limitate e le ore di orologio erano notevolemente maggiori rispetto alle corrispondenti ore produttive.
Il grafico però segnale come successivamente la metrica _TEAC_ si sia assestata intorno alla durata pianificata, indicando una buona gestione del tempo e una stima più realistica delle tempistiche necessarie per completare il progetto.
#pagebreak()
== MPC09: _Requirements Stability Index_

#metriche-graph(nome: "MPC09", desc: "Grafico per periodo di MPC09", width: 100%);

Il grafico registra un peggioramento della misurazione tra gli _sprint_#super[G] 2, 3 e 4: _ALimitedGroup_ ha concentrato in questo periodo la rilevazione di tutti
i requisiti da descrivere e i suoi membri sono concordi nel sottolineare che le stime effettuate inizialmente sono state troppo ottimistiche.\
Gli Analisti hanno, infatti, rilevato molti requisiti impliciti che necessitavano di essere esplicitati.
Inoltre, ulteriori requisiti sono stati rilevati in seguito al colloquio svolto con il #profBreve(p.cardin): le conseguenti modifiche hanno portato ad un ulteriore peggioramento della metrica, che è migliorata successivamente anche grazie ad un lavoro crescente da parte degli Analisti.\
Durante gli ultimi due _sprint_#super[G], in seguito al alcune minime modifiche apportate come consigliato dopo il colloquio del RTB#super[G] (_Requirements Technology Baseline_), i requisiti sono diventati definitivi, portando ad un miglioramento della metrica.

#pagebreak()
== MPC10: Indice di _Gulpease_

#metriche-graph(nome: "MPC10", desc: "Grafico per periodo di MPC10", width: 100%);

In generale _ALimitedGroup_ ha cercato di fare attenzione alla redazione dei Documenti: lo scopo era quello di avere documentazione sempre facilmente fruibile.
L'_indice di Gulpease_ evidenzia che il documento di Analisi dei Requisiti#super[G], il Piano di Progetto#super[G], il Glossario e il documento di Specifica Tecnica#super[G] e il Manuale Utente#super[G] risultano facilmente consultabili.
Il documento delle Norme di Progetto#super[G] rimane inferiore alla soglia di ottimalità, anche se il valore è accettabile e migliorato negli ultimi _sprint_#super[G], grazie al lavoro degli Amministratori che si sono occupati di migliorare la fruibilità del documento, che comunque ha natura interna quindi sarà consultato unicamente dai membri del gruppo _ALimitedGroup_.
#pagebreak()
== MPC11: Correttezza ortografica

#metriche-graph(nome: "MPC11", desc: "Grafico per periodo di MPC11", width: 100%);
Nei primi sprint#super[G] si sono registrati fino a due errori ortografici, ma in seguito _ALimitedGroup_ ha prestato maggiore attenzione a questo aspetto. Per ridurre gli errori, sono stati adottati strumenti automatici per rilevare refusi e si è posta più cura nella revisione manuale dei documenti.\
Questo ha garantito l'assenza di errori in tutti i documenti.
#pagebreak()


== MPC12: _Code Coverage_
#metriche-graph(nome: "MPC12", desc: "Grafico per periodo di MPC12", width: 100%);

La metrica _Code Coverage_ è stata monitorata durante il progetto una volta iniziata l'implementazione del _MVP#super[G]_ (Minimun Viable Product#super[G]).\
Nel periodo precedente la realizzazione del PoC#super[G] non richiedeva l'esecuzione di test.#super[G]
ALimitedGroup è riuscito, al termine del progetto, ad assicurare una copertura del codice superiore al 75%, soglia conconcordata con l'azienda #M31.

// DESCRIZIONE: MPC12: _Code Coverage_


#pagebreak()

== MPC13: _Test Success Rate_
#metriche-graph(nome: "MPC13", desc: "Grafico per periodo di MPC13", width: 100%);

A partire dallo _sprint#super[G]_ 7, si osserva che il _TSR_ cresce rapidamente, fino a raggiungere il 100% nello _sprint#super[G]_ 9.\
Questo andamento evidenzia un percorso di maturazione tecnica e metodologica da parte del gruppo anche nell'attività di verifica#super[G].\
L’introduzione graduale dei test#super[G], unitamente alla loro progressiva stabilizzazione, ha permesso di ottenere una _suite_ di _test#super[G]_ affidabile, contribuendo in modo determinante al controllo della qualità del software.

// DESCRIZIONE: MPC13: _Test Success Rate_


#pagebreak()

== MPC14: _Quality metrics satisfied_

#metriche-graph(nome: "MPC14", desc: "Grafico per periodo di MPC14", width: 100%);

Il grafico evidenzia l'attenzione posta da _ALimitedGroup_ sulla qualità del software e della documentazione prodotta.\
Fino allo _sprint#super[G]_ 3, il numero di metriche soddisfatte era inferiore alla soglia ottima, seppur accettabile.
In seguito il miglioramento del _Way of Working#super[G]_ ha garantito un incremento, che ha raggiunto il 100% alla _milestone#super[G]_ _RTB#super[G]_.\
Dallo _sprint#super[G]_ 7 l'introduzione di nuove metriche ha portato ad un leggero calo, seguito da una pronta ripresa fino al 100% alla _milestone#super[G]_ _PB#super[G]_.
#pagebreak()
== MPC15: _Time Efficiency_

#metriche-graph(nome: "MPC15", desc: "Grafico per periodo di MPC15", width: 100%);

Dal grafico si osserva un progressivo miglioramento dell'efficienza temporale dei componenti di ALimitedGroup.
Inizialmente, la metrica si attestava su valori inferiori alla soglia accettabile, riflettendo le difficoltà iniziali legate all'inesperienza e all'adattamento alle richieste del progetto.
Tuttavia, con il passare del tempo, il gruppo ha acquisito maggiore familiarità con gli strumenti e le pratiche necessarie, portando a un netto miglioramento della metrica analizzata.
Al termine del progetto le ore produttive e quelle di orologio praticamente coincidono, indicando un'ottima efficienza#super[G] temporale.
#pagebreak()

== MPD01: Requisiti obbligatori soddisfatti
#metriche-graph(nome: "MPD01", desc: "Grafico per periodo di MPD01", width: 100%);
Dal grafico si osserva che, al termine del progetto, tutti i requisiti obbligatori risultano soddisfatti: il prodotto ha quindi superato i test#super[G] di accettazione ed è stato rilasciato con successo.
È evidente che dopo la milestone#super[G] _RTB#super[G]_ si sia registrato un significativo incremento nel numero di requisiti soddisfatti: le attività svolte in questo periodo hanno portato all'implementazione di un _MVP#super[G]_ (Minimun Viable Product) di qualità.

// DESCRIZIONE: MPD01: Requisiti obbligatori soddisfatti



#pagebreak()


== MPD02 e MPD03: Requisiti desiderabili soddisfatti e Requisiti opzionali soddisfatti
#metriche-graph(nome: "MPD02", desc: "Grafico per periodo di MPD02 e MPD03", width: 100%);
Data la complessità del progetto e la tempistica limitata, il gruppo ha deciso di soddisfare solo i requisiti obbligatori.


// DESCRIZIONE: MPD02 e MPD03: Requisiti desiderabili soddisfatti e Requisiti opzionali soddisfatti


#pagebreak()


== MPD04: _Branch Coverage_
#metriche-graph(nome: "MPD04", desc: "Grafico per periodo di MPD04", width: 100%);


// DESCRIZIONE: MPD04: _Branch Coverage_


#pagebreak()


== MPD05: _Statement Coverage_

// DESCRIZIONE: MPD05: _Statement Coverage_
#pagebreak()

== MPD06: _Failure Density_

// DESCRIZIONE: MPD05: _Response Time_

#pagebreak()

== MPD07: _Time on task_

// DESCRIZIONE: MPD07: _Time on task_
#pagebreak()

== MPD08: _Error rate_

// DESCRIZIONE: MPD08: _Error rate_
#pagebreak()

== MPD09: _Response Time_
#metriche-graph(nome: "MPD09", desc: "Grafico per periodo di MPD09", width: 100%);
// DESCRIZIONE: MPD09: _Response Time_
È evidente che è stato implementato un _MVP#super[G]_ (_Minimun Viable Product_) molto efficiente e reattivo, con tempi di risposta costantemente intorno a 0.2 secondi.\
Questo è sicuramente attribuito all'adozione di tecnologie moderne e performanti, come `GO` e `NATS`, che hanno permesso di ottimizzare le prestazioni del sistema.

#pagebreak()

== MPD10: _Code smells_

// DESCRIZIONE: MPD10: _Code smells_
#pagebreak()

== MPD11: _Coefficient of Coupling_

// DESCRIZIONE: MPD11: _Coefficient of Coupling_
#pagebreak()

== MPD12: _Cyclomatic Complexity_
#metriche-graph(nome: "MPD12", desc: "Grafico per periodo di MPD12", width: 100%);

// DESCRIZIONE: MPD12: _Cyclomatic Complexity_

La complessità ciclomatica registrata nel _MVP#super[G]_ (_Minimun Viable Product_) è bassa: il codice risulta estremamente leggibile e ben strutturato, infatti è stato adottato uno stile di programmazione modulare e pulito, con funzioni semplici e ben definite.\
Inoltre, questa metrica indica che è stato raggiunto un buon livello di manutenibilità e testabilità.

#pagebreak()


= Iniziative di automiglioramento <automiglioramento>
== Introduzione
Il miglioramento continuo rappresenta un obiettivo primario per garantire la qualità del progetto _Software_.
Di seguito, presenteremo i principali problemi individuati e le relative contromisure messe in atto per risolvere o ridurre gli ostacoli riscontrati.

== Valutazioni sull'organizzazione
#figure(
  table(
    columns: (auto, auto),
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
    text(white)[*Descrizione problema*], text(white)[*Contromisura adottata*],

    // Data rows
    [Mancanza di tracciabilità delle attività rende complicato l'avanzamento produttivo e la pianificazione del lavoro], [Implementazione del sistema di ticketing su GitHub per migliorare la gestione e il monitoraggio delle attività],
    [Assenza di controllo sulle modifiche dirette al branch principale può causare problemi di integrazione e qualità del codice], [Implementazione della _branch protection_ su GitHub per evitare modifiche non autorizzate e garantire la revisione del codice],
    [Comunicare la rendicontazione delle ore durante la retrospettiva dello _sprint_ rallenta ed appesantisce il flusso organizzativo], [Utilizzo di un Foglio Google condiviso in cui annotare le ore impiegate di ciascun ruolo in ogni periodo, asincronamente],
    [Nominare le risorse con formati arbitrari crea problemi di consistenza e rallenta notevolmente qualsiasi attività di ricerca], [Ideazione ed utilizzo di convenzioni per la nomenclatura di issue, branch, file e decisioni prese per garantire una maggiore chiarezza e uniformità],
    [La scelta delle attività non è sufficientemente specifica], [I membri di ALimitedGroup valuteranno di _sprint_ in _sprint_ le attività svolte e ancora da svolgere, deciderà il grado di qualità da raggiungere e in base a quello determinerà il tempo di svolgimento assegnato a ciascuna attività]
  ),
  caption: [Contromisure adottate per migliorare l'organizzazione],
)

== Valutazioni sui ruoli
#figure(
  table(
    columns: (auto, auto, auto),
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
    text(white)[*Ruolo interessato*], text(white)[*Descrizione problema*], text(white)[*Contromisura adottata*],

    // Data rows
    [Tutti i ruoli], [In fasi più avanzate del progetto diventa limitante dover ricoprire lo stesso ruolo per due settimane, lasciando insoddisfatte delle necessità e sfruttando male le ore produttive], [I ruoli possono cambiare ad ogni settimana, previo accordo tra le
      parti qualora questo si renda necessario, e con l'unico vincolo di non coprire due ruoli
      simultaneamente],
    [Verificatore], [Modificare o aggiornare documenti senza prima averlo sottoposto a verifica non è conforme ai buoni standard progettuali], [Il verificatore è tenuto a compilare ad ogni modifica la tabella relativa per ciascun documento],
  ),
  caption: [Contromisure adottate per migliorare la gestione dei ruoli],
)

== Valutazioni sugli strumenti
#figure(
  table(
    columns: (auto, auto, auto),
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
    text(white)[*Strumento interessato*], text(white)[*Descrizione problema*], text(white)[*Contromisura adottata*],

    // Data rows
    [Linguaggio Go], [Alcuni membri del gruppo non hanno familiarità con questa tecnologia], [Ogni membro ha autonomamente intrapreso un percorso di apprendimento per colmare le proprie lacune],
    [Sistema NATS], [Alcuni membri del gruppo non hanno familiarità con questa tecnologia], [Ogni membro ha autonomamente intrapreso un percorso di apprendimento per colmare le proprie lacune],
    [Glossario], [Risulta difficile riconoscere se una parola del documento è definita nel glossario, oltre che dispendioso assicurarsi manualmente che ogni occorrenza di una parola definita segua la stessa convenzione],
    [Tramite script Python è stato implementato un controllo automatico che verifica la presenza di ogni parola definita nel glossario e la sua corretta scrittura con l'aggiunta di una lettera "g" in apice al termine in tutti i documenti],
    [Sito], [La navigazione del sito è macchinosa e la presentazione non supporta la visualizzazione sugli schermi più piccoli], [Il sito è ristrutturato per garantire una navigazione più fluida e una visualizzazione ottimale su tutti i dispositivi],
  ),
  caption: [Contromisure adottate per migliorare il rapporto con gli strumenti di lavoro],
)

== Considerazioni finali
Il processo di automiglioramento è un'attività continua e fondamentale per garantire la qualità del progetto.
Le contromisure adottate hanno permesso di risolvere o ridurre i problemi individuati, migliorando l'efficienza e l'efficacia del lavoro svolto.
Il gruppo si impegna a mantenere un approccio proattivo e collaborativo per individuare e risolvere tempestivamente eventuali criticità.
