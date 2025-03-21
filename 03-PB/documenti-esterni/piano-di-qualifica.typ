#import "../../lib/importantdocs.typ": *
#import "../../lib/metriche.typ": *

#let ver = [1.1.0]

#show: body => importantdocs(
  data: datetime(day: 18, month: 02, year: 2025),
  tipo: [esterno],
  versione: ver,
  versioni: (
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
- *Norme di Progetto#super[G] ver. 1.0.0*: \
  #link("https://alimitedgroup.github.io/NP%20v1.0.0.pdf")[alimitedgroup.github.io/NP%20v1.0.0.pdf] \
  *Ultimo Accesso 6 Febbraio 2025*
- *Capitolato d'appalto C6 Sistema di Gestione di un Magazzino Distribuito*: \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf") \
  *Ultimo Accesso 6 Febbraio 2025*

=== Riferimenti informativi
- *Glossario*: \
  #link("https://alimitedgroup.github.io/Glossаrio.pdf")[#text("https://alimitedgroup.github.io/Glossario.pdf")] \
  *Ultimo Accesso 6 Febbraio 2025*
- *Standard ISO/IEC 9126* \
  #link("https://it.wikipedia.org/wiki/ISO/IEC_9126") \
  *Ultimo Accesso 6 Febbraio 2025*
- *Standard ISO/IEC 12207:1995* \
  #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf") \
  *Ultimo Accesso 6 Febbraio 2025*

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
    [*MPC12*], [Code Coverage], [≥ 80%], [100%],
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
- È *funzionale*, ovvero rispetta i requisiti funzionali#super[G] e non funzionali definiti nel documento di #link("https://alimitedgroup.github.io/AR%20v1.1.0.pdf")[*Analisi dei Requisiti#super[G] ver. 1.1.0*] *(Sezione 3)*;
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
    [*MPD12*], [Cyclomatic complexity], [≤ 20], [≤ 10],
  ),
  caption: [Soglie metriche manutenibilità del prodotto],
)

#pagebreak()
= Metodi di testing <test>
Come stabilito nelle #link("https://alimitedgroup.github.io/NP%20v1.0.0.pdf")[*Norme di Progetto#super[G] ver. 1.0.0*] (Sezioni 3.4.1.4.2 e 3.4.2.1.2), alla quale è disponibile anche la nomenclatura utilizzata, i test#super[G] effettuati saranno:

- Test#super[G] di Unità;
- Test#super[G] di Integrazione;
- Test#super[G] di Sistema;
- Test#super[G] di Regressione;
- Test#super[G] di Accettazione.

== Test di Unità

#test-table(
  unit: "U",
  tipo-test: "Test di Unità",
  (
    (
      desc: [Implementato dalla funzione TestGetGoodsGlobalQt, testare se il repository#super[G] del microservizio Catalog restituisce la quantità globali delle merci memorizzate],
      va: [
        - 16 per la merce con id "test-ID";
        - 10 per "2test-ID";
        - 3 per la merce "3test-ID".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestAddGoodQuantity, testare se il repository#super[G] del microservizio Catalog aggiunge la quantità corretta di una merce],
      va: [7 unità globali della merce con id "test-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestAddGood, testare se il repository#super[G] del microservizio Catalog inserisce i dati di una merce],
      va: [
        - id della merce è "test-ID";
        - nome della merce è "test-name";
        - descrizione della merce è "test-description".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestChangeGoodData, testare se il repository#super[G] del microservizio Catalog modifica i dati di una merce],
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
      desc: [Implementato dalla funzione TestChangeGoodData WrongID, testare se il repository#super[G] del microservizio Catalog restituise un errore se l'id della merce da modificare non esiste],
      va: [il repository#super[G] restituisce l'errore `ErrGoodIdNotValid`],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestChangeGoodData EmptyName, testare se il repository#super[G] del microservizio Catalog restituise un errore se il nome della merce è vuoto],
      va: [il repository#super[G] restituisce l'errore `ErrEmptyName`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestChange
        GoodDataEmpty Description, testare se il repository#super[G] del microservizio Catalog restituise un errore se la descrizione della merce è vuota],
      va: [il repository#super[G] restituisce l'errore `ErrEmptyDescription`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestAddWarehouse, testare se il repository#super[G] del microservizio Catalog aggiunge correttamente un nuovo magazzino],
      va: [il repository#super[G] restituisce la mappa dei magazzini e il magazzino con id `test-warehouse-ID` sia presente.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetWarehouses, testare se catalogAdapter del microservizio Catalog restituisce un GetWarehousesResponse valido],
      va: [nella risposta prodotta è presente il magazzino con id "test-warehouse-id".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetWarehouses, testare se catalogAdapter del microservizio Catalog restituisce un AddOrChangeResponse valido],
      va: [nella risposta prodotta lo stato dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetWarehouses, testare se catalogAdapter del microservizio Catalog restituisce un AddOrChangeResponse valido (considerando un possibile errore nell'id fornito)],
      va: [nella risposta prodotta lo stato dell'operazione è `ErrGoodIdNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestSetGoodQuantity, testare se catalogAdapter del microservizio Catalog restituisce un TestSetGoodQuantity Response valido],
      va: [nella risposta prodotta lo stato dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestSetGoodQuantity WithWrongID, testare se catalogAdapter del microservizio Catalog restituisce un TestSetGoodQuantity Response valido (considerando un possibile errore nell'id fornito)],
      va: [nella risposta prodotta lo stato dell'operazione è `ErrGoodIdNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetGoodsQuantity, testare se catalogAdapter del microservizio Catalog restituisce un GetGoodsQuantity Response valido],
      va: [nella risposta fornita è presente la mappa all'interno della quale la quantità della merce con id "test-id" è 7.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetGoodsInfo, testare se catalogAdapter del microservizio Catalog restituisce un GetGoodsInfoResponse valido],
      va: [nella risposta fornita è presente la mappa all'interno della quale è presente la mece con id "test-id", nome "test-name" e descrizione "test-description".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetWarehouses, testare se CatalogService riesce ad ottenere l'elenco dei magazzini],
      va: [nella risposta fornita è presente la mappa dei magazzini contenente il magazzino con id "test-warehouse-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestAddOrChangeGood Data, testare se CatalogService riesce a modificare i dati di una merce],
      va: [nella risposta fornita è l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestAddOrChangeGood Data_WrongID, testare se CatalogService riporta una risposta con errore quando l'id fornito non è valido],
      va: [nella risposta fornita è l'esito dell'operazione è `ErrGoodIdNoValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestSetMultipleGoods Quantity, testare se CatalogService riesce con successo ad avviare la modifica della quantità di due merci],
      va: [nella risposta fornita è l'esito dell'operazione è `nil` e non vi sono id con modifica sbagliata.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestSetMultipleGoods QuantityWithWrongID, testare se CatalogService riesce con successo a riportare un errore nella modifica della quantità di una merce],
      va: [nella risposta fornita è l'esito dell'operazione è `ErrGeneric` `Failure` ed è riportato un errore alla merce con id `test-wrong-id`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetGoodsQuantity, testare se CatalogService riesce con successo ad ottenere la lista delle merci e delle loro quantità],
      va: [nella mappa della risposta fornita è presente la merce con id `test-id` e la quantità è 7.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetGoodsInfo, testare se CatalogService riesce con successo ad ottenere la lista delle merci e delle loro informazioni],
      va: [nella mappa della risposta fornita è presente la merce con id `test-id`, nome "test-name" e descrizione "test-description".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestSetMultipleGood QuantityRequest, testare se CatalogController riesce con successo a modificare la quantità di più merci],
      va: [La modifica viene con successo ricevuta dal mock di CatalogService, che modifica una apposita variabile globale a `true`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestSetGoodDataRequest, testare se CatalogController riesce con successo a modificare le informazioni di una merce],
      va: [La modifica viene con successo ricevuta dal mock di CatalogService, che modifica una apposita variabile globale a `true`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetGoodsRequest, testare se CatalogController riesce con successo ad ottenere le informazioni delle merci],
      va: [Nella risposta è presente una mappa che possiede una merce con:
        - id "test-ID";
        - nome "test-name";
        - descrizione "test-description".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetWarehouses Request, testare se CatalogController riesce con successo ad ottenere le informazioni dei magazzini],
      va: [Nella risposta è presente una mappa che possiede un magazzino con id "test-warehouse-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetGoodsGlobal Quantity Request, testare se CatalogController riesce con successo ad ottenere sulla quantità globale delle merci],
      va: [Nella risposta è presente una mappa che possiede la merce con id "test-ID" a quantità 7.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStorePemKeyPair, testare che AuthRepository registri correttamente una coppia di chiavi in formato Pem],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStoreWrongKeyPair, testare che AuthRepository ritorni un errore se si cerca di memorizzare una coppia di chiavi non di tipo ecdsa],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrKeyPairNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStoreGarbageKeyPair, testare che AuthRepository ritorni un errore se si cerca di memorizzare una coppia non in formato Pem],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrKeyPairNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPemPublicKey, testare che AuthRepository ritorni correttamente la chiave pubblica],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornata la chiave pubblica e l'issuer.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPemPrivateKey, testare che AuthRepository ritorni correttamente la chiave privata],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornata la chiave privata e l'issuer.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPemPublicKey WithNoKey, testare che AuthRepository ritorni un errore se si prova ad ottenere la chiave pubblica ma questa non è stata precedentemente memorizzata],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrNoPublicKey`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPemPrivateKey WithNoKey, testare che AuthRepository ritorni un errore se si prova ad ottenere la chiave privata ma questa non è stata precedentemente memorizzata],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrNoPrivateKey`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestCheckKeyPair, testare che AuthRepository non ritorni errore se si invoca `CheckKeyPairExistence` e la coppia di chiavi è presente],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestCheckKeyPair WithNoKey, testare che AuthRepository ritorni errore se si invoca `CheckKeyPairExistence` e la coppia di chiavi non è presente],
      va: [Invocando il metodo apposito per eseguire l'operazione viene ritornato `ErrNoKeyPair`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStorePemKeyPair, testare che AuthAdapter trasmetta correttamente la richiesta di memorizzazione di una coppia di chiavi],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStoreWrong PemKeyPair, testare che AuthAdapter ritorni l'esito negativo di un'operazione di memorizzazione coppia di chiavi non corretta],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `ErrKeyPairNotValid`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPemPublicKey, testare che AuthAdapter trasmetta correttamente la richiesta di ottenimento chiave pubblica],
      va: [Nella risposta fornita dall'_Adapter_ è presente la chiave pubblica.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPemPublic Key_NoKey, testare che AuthAdapter ritorni l'esito negativo di un'operazione di ottenimento chiave pubblica quando nessuna chiave pubblica è memorizzata],
      va: [Nella risposta fornita dall'_Adapter_ la chiave pubblica è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPemPrivateKey, testare che AuthAdapter trasmetta correttamente la richiesta di ottenimento chiave privata],
      va: [Nella risposta fornita dall'_Adapter_ è presente la chiave privata.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetPem PrivateKey_NoKey, testare che AuthAdapter ritorni l'esito negativo di un'operazione di ottenimento chiave privata quando nessuna chiave privata è memorizzata],
      va: [Nella risposta fornita dall'_Adapter_ la chiave privata è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestCheckKey PairExistence, testare che AuthAdapter trasmetta correttamente la richiesta di controllo della presenza di una coppia di chiavi memorizzata],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestAdaptKey, testare che AuthPublisherAdapter trasmetta correttamente la richiesta di pubblicazione chiave pubblica],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `nil`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestAdaptKeyWith WrongIssuer, testare che AuthPublisherAdapter trasmetta correttamente la richiesta di pubblicazione chiave pubblica e ritorni un errore simulando che qualcosa non ha funzionato come previsto],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `test error`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestAdaptKeyWith WrongIssuer, testare che AuthPublisherAdapter trasmetta correttamente la richiesta di pubblicazione chiave pubblica e ritorni un errore se la chiave che si prova a pubblicare non è in formato Pem],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `ErrPublish`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestAdaptWithWrongKey, testare che AuthPublisherAdapter trasmetta correttamente la richiesta di pubblicazione chiave pubblica e ritorni un errore se la chiave che si prova a pubblicare non è di tipo ecdsa],
      va: [Nella risposta fornita dall'_Adapter_ l'esito dell'operazione è `ErrPublish`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetToken, testare che AuthService generi correttamente un token],
      va: [AuthService genera una coppia di chiavi valida e ritorna un token correttamente firmato.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestPublishing, testare che AuthPublisher pubblichi correttamente una chiave pubblica],
      va: [Nello stream di pubblicazione chiavi pubblichi è presente la chiave pubblica.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestPublishingWrongKey, testare che AuthPublisher ritorni un errore quando la pubblicazione di una chiave non va a buon fine],
      va: [Il Publisher ritorna l'errore `ErrPublish`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetToken, testare che AuthController ritorni il token quando arriva una richiesta valida],
      va: [La risposta ritornata dal Controller contiene il token di prova `test-token`.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetTokenWith WrongUser, testare che AuthController funzioni come previsto se il mock del service rileva un nome utente non corretto],
      va: [La risposta ritornata dal Controller ha un token vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetTokenEmpty Username, testare che AuthController funzioni come previsto se il nome utente fornito è vuoto.],
      va: [La risposta ritornata dal Controller ha un token vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestGetTokenWrong Request, testare che AuthController funzioni come previsto se la richiesta fornita non è corretta.],
      va: [La risposta ritornata dal Controller ha un token vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockRepository ImplGetAndSet, testare che StockRepositoryImpl aggiunga correttamente quantità di merce e registri correttamente le reservation],
      va: [Sono presenti le seguenti quantità:
        - la merce con id "1" ha 10 unità totali, tutte non riservate;
        - la merce con id "1" ha 0 unità totali, tutte non riservate;
        Inoltre, un tentativo di reservation per 5 unità della merce con id "1" e il suo rilascio fa ritornare `nil` dal repository#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockRepositoryImpl ReserveAndUnreserve, testare che StockRepositoryImpl riesca a gestire correttamente le reservation],
      va: [La quantità non riservata della merce con id "1" è 5 con 10 unità totali.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockRepositoryImpl ReserveNotExistingGood, testare che StockRepositoryImpl ritorni un errore se la reservation è effettuata su una merce non esistente nel magazzino],
      va: [Il metodo `ReserveStock` ritorna un errore, il tentativo di ottenere la quantità di merce disponibile ritorna 0.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockRepository ImplUnreserveNotEnough, testare che StockRepositoryImpl gestisca correttamente una richiesta di rimozione di reservation di una quantità maggiore di quella riservata],
      va: [Il metodo `UnReserveStock` ritorna un errore.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestCatalogRepositoryImpl, testare che CatalogRepositoryImpl gestisca correttamente l'aggiunta di una merce],
      va: [Dopo l'operazione di aggiunta, invocando il metodo `GetGood` sulla merce con id "1", questa risulta presente e con le seguenti caratteristiche:
        - nome "blue_hat"
        - descrizione "very beautiful hat"
        Inoltre non risulta esistere la merce con id "2" in quanto non aggiunta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestIdempotente RepositoryImpl, testare che IdempotentRepositoryImpl gestisca correttamente la gestione degli eventi],
      va: [
        - L'evento "event" con id "id" risulta essere processato
        - L'evento "event" con id "id2" non risulta essere processato
        - L'evento "event2" con id "id" non risulta essere processato
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestIdempotente RepositoryImpl, testare che IdempotentRepositoryImpl gestisca correttamente la gestione degli eventi],
      va: [
        - L'evento "event" con id "id" risulta essere processato
        - L'evento "event" con id "id2" non risulta essere processato
        - L'evento "event2" con id "id" non risulta essere processato
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockPersistance AdapterApply, testare che StockPersistanceAdapter riesca a trasmettere la richiesta di aggiunta stock#super[G] ],
      va: [
        Viene aggiunta correttamente la merce, il mock del repository#super[G] ritorna `true`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockPersistance AdapterGet, testare che StockPersistanceAdapter riesca a trasmettere la richiesta di ottenimento stock#super[G] ],
      va: [
        Nella risposta fornita dall'adapter sono persenti:
        - merce con id "1" con quantità totale pari a 10
        - merce con id "1" con quantità libera da reservation pari a 10
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockPersistance AdapterGetReserv, testare che StockPersistanceAdapter riesca a trasmettere la richiesta di ottenimento stock#super[G] in reservation],
      va: [
        Nella risposta fornita dall'adapter sono persenti:
        - merce con id "1" con quantità riservata pari a 10
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStock PersistanceAdapter GetReservNotFound, testare che StockPersistanceAdapter riesca a trasmettere la richiesta di ottenimento stock#super[G] in reservation e gestisca correttamente il caso in cui la reservation richiesta non esista],
      va: [
        L'adapter ritorna un errore `ErrReservationNotFound` e la reservation non contiene nulla
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockPersistance AdapterApplyReserv, testare che StockPersistanceAdapter riesca a trasmettere la richiesta di reservation],
      va: [
        L'adapter ritorna `nil` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockPersistance AdapterApplyReservErr, testare che StockPersistanceAdapter riesca a gestire una richiesta di reservation con quantità non disponibile di una merce],
      va: [
        L'adapter ritorna `ErrNotEnoughGoods` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockPersistance AdapterApplyOrder, testare che StockPersistanceAdapter riesca a gestire una richiesta di conferma ordine#super[G] ],
      va: [
        L'adapter ritorna `nil` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockPersistance AdapterApplyOrderErr, testare che StockPersistanceAdapter riesca a gestire una richiesta di conferma ordine#super[G] con richiesta non corretta],
      va: [
        L'adapter ritorna `ErrNotEnoughGoods` successivamente alla richiesta.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestIdempotentAdapterGet, testare che IDempotentAdapter trasmetta correttamente la richiesta di ottenimento informazioni sullo svolgimento di un evento],
      va: [
        La funzione `IsAlreadyProcessed` ritorna `false`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestIdempotentAdapterSet, testare che IDempotentAdapter trasmetta correttamente la richiesta di salvataggio di un nuovo evento],
      va: [
        Il mock del repository#super[G] riceve la richiesta con successo.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestCatalogPersistanceAdapterSetAndGet, testare che CatalogPersistanceAdapter trasmetta correttamente la richiesta di memorizzazione e ottenimento informazioni di una merce],
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
      desc: [Implementato da TestCatalogPersistanceAdapterGetNotExist, testare che CatalogPersistanceAdapter gestisca correttamente la richiesta di ottenimento informazioni di un oggetto non esistente],
      va: [
        Il metodo `GetGood` ritorna un oggetto `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockUpdateAdapter, testare che PublishStockUpdateAdapter gestisca correttamente la richiesta di aggiornamento quantità di una merce],
      va: [
        Il metodo `CreateStockUpdate` ritorna `nil` è il messaggio risulta inviato su NATS#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockUpdateAdapter, testare che PublishStockUpdateAdapter gestisca correttamente un errore di rete],
      va: [
        Il metodo `CreateStockUpdate` ritorna l'errore verificatosi.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestReservationEventAdapter, testare che PublishReservationEventAdapter pubblichi correttamente una richiesta di reservation],
      va: [
        Il metodo `StoreReservationEvent` ritorna `nil` è il messaggio risulta inviato su NATS#super[G] .
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestReservationEventAdapterNetworkErr, testare che PublishReservationEventAdapter pubblichi correttamente una richiesta di reservation],
      va: [
        Il metodo `StoreReservationEvent` ritorna l'errore verificatosi.
      ],
      vr: "",
      st: "S",
    ),
    (
      //Utilizzato per quando le notifiche di assortimento vengono accettate
      desc: [Implementato da TestStockUpdateListener, testare che StockUpdateListener gestisca correttamente un evento di aggiornamento quantità merce disponibile],
      va: [
        Il mock che implementa `IApplyStockUpdateUseCase` registra:
        - 10 unità della merce con id "1";
        - 20 unità della merce con id "2".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestReservationEventListener, testare che ReservationEventListener riceva le richieste di reservation],
      va: [
        Viene ricevuto l'ack sulla richiesta inviata.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestOrderUpdateListenerForOrder, testare che OrderUpdateListener riceva le richieste di aggiornamento su un ordine#super[G] ],
      va: [
        Viene ricevuto l'ack sulla richiesta inviata.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestOrderUpdateListenerForTransfer, testare che OrderUpdateListener riceva le richieste di aggiornamento su un trasferimento#super[G] ],
      va: [
        Viene ricevuto l'ack sulla richiesta inviata.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestCatalogUpdateListener, testare che CatalogListener riceva le richieste di aggiornamento infromazioni su una merce],
      va: [
        Viene ricevuto l'ack sulla richiesta inviata e, ottenendo le informazioni sulla merce con id "1" dal mock di `IApplyCatalogUpdateUseCase`, il nome di tale merce è "hat".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockController, testare che StockController riceva le richieste di aggiornamento quantità merce],
      va: [
        La risposta fornita del controller è "ok".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockControllerAddStockErr, testare che StockController gestisca correttamente una richiesta di aggiunta merce non andata a buon fine],
      va: [
        La risposta fornita del controller contiene un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockControllerRemStockErr, testare che StockController gestisca correttamente una richiesta di rimozione merce non andata a buon fine],
      va: [
        La risposta fornita del controller contiene un errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestReservationController, testare che ReservationController gestisca correttamente una richiesta di reservation],
      va: [
        Il controller, nella risposta fornita, inserisce l'id della resevation pari a "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestManageStockService, testare che ManageStockService gestisca correttamente una richiesta di aggiunta e rimozione merce],
      va: [
        Il mock che implementa le porte del service verso il repository#super[G] segnala prima 10 unità della merce con id "1", quindi 0, dopo la rimozione.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestManageReservation ServiceApply ReservationEvent, testare che ManageReservationService applichi un evento reservation],
      va: [
        Il metodo invocato `ApplyReservationEvent` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestManageReservation ServiceCreateReservation, testare che ManageReservationService gestisca correttamente la creazione di una reservation],
      va: [
        Il metodo invocato `ApplyReservationEvent` ritorna l'id della resevation e `nil` come errore.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestManageReservationServiceConfirmOrder, testare che ManageReservationService gestisca correttamente la conferma di un ordine#super[G] ,con opportune conseguenze sulle reservation],
      va: [
        Il metodo invocato `ConfirmOrder` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestManageReservationServiceConfirmTransferSender, testare che ManageReservationService gestisca correttamente la conferma di un trasferimento#super[G] (lato mittente)],
      va: [
        Il metodo invocato `ConfirmTransfer` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestManageReservationServiceConfirmTransferReceiver, testare che ManageReservationService gestisca correttamente la conferma di un trasferimento#super[G] (lato destinatario)],
      va: [
        Il metodo invocato `ConfirmTransfer` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestApplyStockUpdateService, testare che ApplyStockUpdateService gestisca correttamente l'aggiunta di stock#super[G] di merce],
      va: [
        La richiesta raggiunge correttamente il mock di `IIdempotentPort`
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestApplyStockUpdateService, testare che ApplyCatalogUpdateService gestisca correttamente la modifica delle informazioni di una merce],
      va: [
        Interrogando il mock `IApplyCatalogUpdatePort` sul nome dell'oggetto con id "1", questo ritonra "hat".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferRepositoryImpl, testare che TransferRepositoryImpl gestisca correttamente le richieste di ottenimento informazioni, inizializzazione e completamento dei trasferimenti],
      va: [
        Inizialmente i trasferimenti con id "1" e "2" non sono presenti, quindi il loro completamento e modifica non devono determinare il ritorno di errori.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestStockRepositoryImpl, testare che StockRepositoryImpl gestisca correttamente le richieste di ottenimento informazioni, modifica e aggiunta stock#super[G] di merce, inclusa la gestione degli errori],
      va: [
        Inizialmente l'ottenimento di informazioni delle merci con id "1" e "2" non deve determinare un ritorno di `nil` in quanto non presenti. La successiva aggiunta e modifica quantità deve determinare il ritorno di `nil`. Inoltre deve risultare presente il magazzino con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestOrderRepositoryImpl, testare che OrderRepositoryImpl gestisca correttamente le richieste di ottenimento informazioni, modifica e completamento ordini],
      va: [
        Inizialmente l'ottenimento di informazioni degli ordini con id "1" e "2" non deve determinare un ritono di `nil` in quanto non presenti. La successiva aggiunta e modifica di tali ordini deve determinare il ritorno di `nil`, così come il completamento.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistence AdapterApplyTransfer Update, testare che TransferPersistanceAdapter gestisca correttamente le richieste di aggiornamento stato dei trasferimenti],
      va: [
        Il mock di `ITransferRepository` riceve correttamente l'aggiornamento.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistence AdapterGetTransferExist, testare che TransferPersistanceAdapter restituisca correttamente la risposta di una richiesta ottenimento informazioni su un trasferimento#super[G] con esito positivo],
      va: [
        La risposta fornita dal metodo `GetTranfer` contiene il trasferimento#super[G] con id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistence AdapterGetTransferExist, testare che TransferPersistanceAdapter restituisca correttamente la risposta di una richiesta ottenimento informazioni su un trasferimento#super[G] con esito negativo],
      va: [
        La risposta fornita dal metodo `GetTranfer` contiene l'errore `ErrTransferNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistenceAdapterGetAllTransfer, testare che TransferPersistanceAdapter restituisca correttamente la risposta di una richiesta ottenimento informazioni su un trasferimento#super[G] con esito negativo],
      va: [
        La risposta fornita dal metodo `GetTranfer` contiene un solo trasferimento#super[G] e tale trasferimento#super[G] ha id "1".
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistenceAdapterSetComplete, testare che TransferPersistanceAdapter trasmetta la richiesta di aggiornamento stato trasferimento#super[G] come completato],
      va: [
        La risposta fornita dal metodo `SetComplete` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistenceAdapterSetComplete, testare che TransferPersistanceAdapter gestisca correttamente una richiesta di aggiornamento stato trasferimento#super[G] come completato nel caso in cui tale trasferimento#super[G] non esista],
      va: [
        La risposta fornita dal metodo `SetComplete` ritorna `ErrTransferNotFound`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistenceAdapterIncrementLinkedStockUpdate, testare che TransferPersistanceAdapter trasmetta correttamente la richiesta di aggiunta di un aggiornamento dello stock#super[G] ],
      va: [
        La risposta fornita dal metodo `IncrementLinkedStockUpdate` ritorna `nil`.
      ],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato da TestTransferPersistenceAdapterIncrementLinkedStockUpdateErr, testare che TransferPersistanceAdapter gestisca correttamente la richiesta di aggiunta di un aggiornamento dello stock#super[G] con un id trasferimento#super[G] non esistente],
      va: [
        La risposta fornita dal metodo `IncrementLinkedStockUpdate` ritorna `ErrTransferNotFound`.
      ],
      vr: "",
      st: "S",
    ),
  ),
)

== Test di Integrazione

#test-table(
  unit: "I",
  tipo-test: "Test di Integrazione",
  (
    (
      desc: [Implementato dalla funzione TestInsertGetWarehouses Quantity, verificare che il microservizio Catalog inserisca correttamente la quantità delle merci nei magazzini],
      va: [Dopo la modifica, ottenendo la lista dei magazzini ed il loro inventario risulta che:
      - nel magazzino con id "test-warehouse-ID" ci sono 2 unità della merce con id "test-ID" e 0 unità della merce "2test-ID";
      - nel magazzino con id "2test-warehouse-ID" ci sono 3 unità della merce "test-ID" e 3 unità della merce "2test-ID".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestInsertGetGoods Quantity, verificare che il microservizio Catalog inserisca correttamente la quantità delle merci],
      va: [Dopo la modifica è presente la seguente situazione:
      - la merce con id "test-ID" ha globalmente 5 unità;
      - la merce con id "2test-ID" ha 3 unità.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestInsertGetGoods, verificare che il microservizio Catalog inserisca correttamente la informazioni delle merci],
      va: [Dopo la modifica è presente la merce con id "test-id" avente:
      - nome "test-name";
      - descrizione "test-description".],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetTokenEmpty Username, verificare che il microservizio Authenticator si comporti correttamente se nella richiesta non viene fornito il nome utente],
      va: [Nella risposta fornita il token è vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetTokenWrong Username, verificare che il microservizio Authenticator si comporti correttamente se nella richiesta viene incluso un nome utente non valido],
      va: [Nella risposta fornita il token è vuoto.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetToken, verificare che il microservizio Authenticator ritorni il token generato in caso di richiesta corretta],
      va: [Nella risposta fornita il token fornito è un token valido.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestGetTwoToken, verificare che il microservizio Authenticator ritorni due token validi e firmati con la medesima chiave privata],
      va: [I token forniti sono validi e firmati con la stessa chiave privata.],
      vr: "",
      st: "S",
    ),
    (
      desc: [Implementato dalla funzione TestAddAndRemoveWarehouseStock, verificare che il microservizio Warehouse#super[G] aggiunga e rimuova correttamente stock#super[G] di merce],
      va: [Ottenendo i dati delle merci risultano essere presenti 5 unità della merce con id "1".],
      vr: "",
      st: "S",
    ),
  )
),

#pagebreak()

== Test di Sistema

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
    text(white)[*Codice*], text(white)[*Descrizione*], text(white)[*Requisito di riferimento*], text(white)[*Stato del Test*],
    [T-1-S], [Verificare che un Utente non autenticato possa effettuare l'autenticazione con il Sistema], [R-1-F-Ob], [NI],
    [T-2-S], [Verificare che l'Utente, durante il processo di autenticazione, abbia inserito la tipologia di utente con la quale vuole essere riconosciuto], [R-2-F-Ob], [NI],
    [T-3-S], [Verificare che l'Utente, durante il processo di autenticazione, abbia inserito lo Username personale], [R-3-F-De], [NI],
    [T-4-S], [Verificare che l'Utente, durante il processo di autenticazione, abbia inserito la Password personale], [R-4-F-De], [NI],
    [T-5-S], [Verificare che l'Utente riceva un avviso/errore in seguito ad un tentativo di accesso fallito], [R-5-F-Ob], [NI],
    [T-6-S], [Verificare che un Cliente possa creare un ordine da confermare in seguito], [R-6-F-Ob], [NI],
    [T-7-S], [Verificare che un Cliente, durante la creazione di un ordine da confermare, inserisca un nome da dare all'ordine da confermare], [R-7-F-Ob], [NI],
    [T-8-S], [Verificare che un Cliente, durante la creazione di un ordine da confermare, inserisca il nominativo del destinatario dell'ordine da confermare], [R-8-F-Ob], [NI],
    [T-9-S], [Verificare che un Cliente, durante la creazione di un ordine da confermare, inserisca l'indirizzo di spedizione dell'ordine da confermare], [R-9-F-Ob], [NI],
    [T-10-S], [Verificare che un Cliente possa aggiungere merce ad un ordine non confermato], [R-10-F-Ob], [NI],
    [T-11-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non confermato, indichi/selezioni la merce che vuole aggiungere all'ordine non confermato], [R-11-F-Ob], [NI],
    [T-12-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non confermato, inserisca/selezioni il quantitativo della merce da aggiungere all'ordine non confermato], [R-12-F-Ob], [NI],
    [T-13-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, selezioni l'ordine non ancora confermato sulla quale effettuare l'operazione di aggiunta], [R-13-F-Ob], [NI],
    [T-14-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, riceva un avviso/errore se la merce aggiunta all'ordine non risulti essere valida (ovvero la
      quantità della merce è insufficiente oppure la merce non esiste)], [R-14-F-Ob], [NI],
    [T-15-S], [Verificare che un Cliente, durante l'operazione di aggiunta merce ad un ordine non ancora confermato, riceva un avviso/errore se nessun ordine non confermato è disponibile], [R-15-F-Ob], [NI],
    [T-16-S], [Verificare che un Cliente possa cancellare un ordine non confermato che viene da lui selezionato], [R-16-F-Ob], [NI],
    [T-17-S], [Verificare che un Cliente possa confermare un ordine non confermato che viene da lui selezionato], [R-17-F-Ob], [NI],
    [T-18-S], [Verificare che un Cliente possa visualizzare i suoi ordini non confermati], [R-18-F-Ob], [NI],
    [T-19-S], [Verificare che nella lista degli ordini non confermati di un Cliente, il Cliente che ha creato tali ordini non confermati possa visualizzare, per ciascun ordine, il rispettivo ID], [R-19-F-Ob], [NI],
    [T-20-S], [Verificare che nella lista degli ordini non confermati di un Cliente, il Cliente che ha creato tali ordini non confermati possa visualizzare, per ciascun ordine, la rispettiva data di creazione], [R-20-F-Ob], [NI],
    [T-21-S], [Verificare che nella lista degli ordini non confermati di un Cliente, il Cliente che ha creato tali ordini non confermati possa visualizzare, per ciascun ordine, il rispettivo nome], [R-21-F-Ob], [NI],
    [T-22-S], [Verificare che un Cliente possa consultare un ordine non confermato nel dettaglio], [R-22-F-Ob], [NI],
    [T-23-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi l'ID di tale ordine], [R-23-F-Ob], [NI],
    [T-24-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi la data di creazione di tale ordine], [R-24-F-Ob], [NI],
    [T-25-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi il nome di tale ordine], [R-25-F-Ob], [NI],
    [T-26-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi la lista delle merci di tale ordine], [R-26-F-Ob], [NI],
    [T-27-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi, per ogni elemento della lista delle merci, la quantità della rispettiva merce interessata dall'ordine], [R-27-F-Ob], [NI],
    [T-28-S], [Verificare che un Cliente, visualizzando un ordine non confermato nel dettaglio, visualizzi, per ogni elemento della lista delle merci, il nome della rispettiva merce], [R-28-F-Ob], [NI],
    [T-29-S], [Verificare che un Cliente possa visualizzare la lista delle merci presenti nel Sistema], [R-29-F-Ob], [NI],
    [T-30-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, l'ID di tale merce], [R-30-F-Ob], [NI],
    [T-31-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, il nome di tale merce], [R-31-F-Ob], [NI],
    [T-32-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, la quantità di tale merce complessivamente presente in tutti i magazzini], [R-32-F-Ob], [NI],
    [T-33-S], [Verificare che un Cliente, mentre visualizza la lista delle merci presenti nel Sistema, visualizzi, per ogni merce, la quantità di tale merce presente nel magazzino attuale], [R-33-F-Ob], [NI],
    [T-34-S], [Verificare che un Cliente possa visualizzare una particolare merce nel dettaglio], [R-34-F-Ob], [NI],
    [T-35-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi l'ID di tale merce], [R-35-F-Ob], [NI],
    [T-36-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi il nome di tale merce], [R-36-F-Ob], [NI],
    [T-37-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi la quantità globalmente disponibile di tale merce], [R-37-F-Ob], [NI],
    [T-38-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi la quantità localmente disponibile di tale merce], [R-38-F-Ob], [NI],
    [T-39-S], [Verificare che un Cliente, visualizzando una merce nel dettaglio, visualizzi la descrizione di tale merce], [R-39-F-Ob], [NI],
    [T-40-S], [Verificare che un Admin Globale possa creare un trasferimento da confermare in seguito], [R-40-F-Ob], [NI],
    [T-41-S], [Verificare che un Admin Globale, durante la creazione di un trasferimento da confermare in seguito, fornisca il magazzino mittente], [R-41-F-Ob], [NI],
    [T-42-S], [Verificare che un Admin Globale, durante la creazione di un trasferimento da confermare in seguito, fornisca il magazzino destinatario], [R-42-F-Ob], [NI],
    [T-43-S], [Verificare che un Admin Globale possa aggiungere merce ad un trasferimento non confermato], [R-43-F-Ob], [NI],
    [T-44-S], [Verificare che un Admin Globale, durante l'aggiunta di merce ad un trasferimento non confermato, fornisca quale merce aggiungere], [R-44-F-Ob], [NI],
    [T-45-S], [Verificare che un Admin Globale, durante l'aggiunta di merce ad un trasferimento non confermato, selezioni la quantità di merce da aggiungere], [R-45-F-Ob], [NI],
    [T-46-S], [Verificare che un Admin Globale, durante l'aggiunta di merce ad un trasferimento non confermato, selezioni il trasferimento non confermato alla quale aggiungere la merce], [R-46-F-Ob], [NI],
    [T-47-S], [Verificare che un Admin Globale possa confermare un trasferimento non confermato da lui selezionato], [R-47-F-Ob], [NI],
    [T-48-S], [Verificare che un Admin Globale riceva un avviso/errore qualora la merce in un trasferimento che vuole confermare non è più disponibile nel Sistema o è in quantità non sufficiente per effettuare l'ordine], [R-48-F-Ob], [NI],
    [T-49-S], [Verificare che un Admin Globale riceva un avviso/errore quando cerca di confermare/cancellare un trasferimento non confermato ma nessun trasferimento non confermato è presente nel Sistema], [R-49-F-Ob], [NI],
    [T-50-S], [Verificare che un Admin Globale possa cancellare un trasferimento non confermato da lui selezionato], [R-50-F-Ob], [NI],
    [T-51-S], [Verificare che un Admin Globale possa visualizzare l'elenco di tutti i trasferimenti], [R-51-F-Ob], [NI],
    [T-52-S], [Verificare che un Admin Globale, mentre visualizza l'elenco dei trasferimenti, visualizzi, per ciascun trasferimento, l'ID del trasferimento], [R-52-F-Ob], [NI],
    [T-53-S], [Verificare che un Admin Globale, mentre visualizza l'elenco dei trasferimenti, visualizzi, per ciascun trasferimento, lo stato del trasferimento], [R-53-F-Ob], [NI],
    [T-54-S], [Verificare che un Admin Globale possa visualizzare un singolo trasferimento nello specifico], [R-54-F-Ob], [NI],
    [T-55-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi l'ID di tale trasferimento], [R-55-F-Ob], [NI],
    [T-56-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi magazzino mittente di tale trasferimento], [R-56-F-Ob], [NI],
    [T-57-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi magazzino destinatario di tale trasferimento], [R-57-F-Ob], [NI],
    [T-58-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi lo stato di tale trasferimento], [R-58-F-Ob], [NI],
    [T-59-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi l'elenco della merce interessata da tale trasferimento], [R-59-F-Ob], [NI],
    [T-60-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi, per ogni merce nell'elenco della merce interessata da tale trasferimento, il nome di tale merce], [R-60-F-Ob], [NI],
    [T-61-S], [Verificare che un Admin Globale, nel visualizzare un trasferimento specifico, visualizzi, per ogni merce nell'elenco della merce interessata da tale trasferimento, la quantità di tale merce], [R-61-F-Ob], [NI],
    [T-52-S], [Verificare che un Admin Globale possa visualizzare l'elenco delle notifiche riguardanti i consigli di rifornimento], [R-62-F-Ob], [NI],
    [T-63-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento, visualizzi l'ID di ciascuna notifica], [R-63-F-Ob], [NI],
    [T-64-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento, visualizzi lo stato di ciascuna notifica], [R-64-F-Ob], [NI],
    [T-65-S], [Verificare che un Admin Globale, effettuando un'operazione sulle notifiche di rifornimento, visualizzi un avviso/errore se nessuna notifica è disponibile], [R-65-F-Ob], [NI],
    [T-66-S], [Verificare che un Admin Globale possa visualizzare le notifiche suggerite da un Sistema _Machine Learning_], [R-66-F-Ob], [NI],
    [T-67-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento fornite da un Sistema _Machine Learning_, visualizzi l'ID di ciascuna notifica], [R-67-F-Ob], [NI],
    [T-68-S], [Verificare che un Admin Globale, visualizzando l'elenco delle notifiche di rifornimento fornite da un Sistema _Machine Learning_, visualizzi lo stato di ciascuna notifica], [R-68-F-Ob], [NI],
    [T-69-S], [Verificare che un Admin Globale possa visualizzare una notifica di rifornimento nello specifico], [R-69-F-Ob], [NI],
    [T-70-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi l'ID della notifica], [R-70-F-Ob], [NI],
    [T-71-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi lo stato della notifica], [R-71-F-Ob], [NI],
    [T-72-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi il magazzino destinatario del rifornimento], [R-72-F-Ob], [NI],
    [T-73-S], [Verificare che un Admin Globale, visualizzando una notifica di rifornimento nello specifico, visualizzi l'elenco della merce da rifornire], [R-73-F-Ob], [NI],
    [T-74-S], [Verificare che un Admin Globale, mentre visualizza l'elenco della merce presente nel dettaglio di una notifica di rifornimento, visualizzi per ogni merce l'ID della merce], [R-74-F-Ob], [NI],
    [T-75-S], [Verificare che un Admin Globale, mentre visualizza l'elenco della merce presente nel dettaglio di una notifica di rifornimento, visualizzi per ogni merce il nome della merce], [R-75-F-Ob], [NI],
    [T-76-S], [Verificare che un Admin Globale, mentre visualizza l'elenco della merce presente nel dettaglio di una notifica di rifornimento, visualizzi per ogni merce la quantità di quella merce da rifornire], [R-76-F-Ob], [NI],
    [T-77-S], [Verificare che un Admin Globale possa confermare una notifica di rifornimento non ancora accettata da lui selezionata], [R-77-F-Ob], [NI],
    [T-78-S], [Verificare che un Admin Globale possa rifiutare una notifica di rifornimento non ancora accettata da lui selezionata], [R-78-F-Ob], [NI],
    [T-79-S], [Verificare che un Admin Globale possa visualizzare l'elenco dei microservizi], [R-79-F-Ob], [NI],
    [T-80-S], [Verificare che un Admin Globale, visualizzando l'elenco dei microservizi, visualizzi il nome di ciascun microservizio], [R-80-F-Ob], [NI],
    [T-81-S], [Verificare che un Admin Globale, visualizzando l'elenco dei microservizi, visualizzi il numero di richieste al secondo di ciascun microservizio], [R-81-F-Ob], [NI],
    [T-82-S], [Verificare che un Admin Globale possa esportare l'elenco degli ordini eseguiti in un file _.csv_], [R-82-F-Ob], [NI],
    [T-83-S], [Verificare che un Admin Globale riceva un avviso/errore quando tenta di esportare gli ordini in un file _.csv_ ma nessun ordine da esportare è presente], [R-83-F-Ob], [NI],
    [T-84-S], [Verificare che un Admin Globale possa esportare l'inventario di tutti i magazzini (inventario globale) in un file _.csv_], [R-84-F-Ob], [NI],
    [T-85-S], [Verificare che un Admin Globale riceva un errore quando cerca di esportare l'inventario dei magazzini ma nessun dato è disponibile], [R-85-F-Ob], [NI],
    [T-86-S], [Verificare che un Admin Globale possa impostare una soglia minima di allerta per una merce], [R-86-F-Ob], [NI],
    [T-87-S], [Verificare che un Admin Globale, impostando una soglia minima di allerta per una merce, selezioni la merce su cui vuole impostare la soglia minima], [R-87-F-Ob], [NI],
    [T-88-S], [Verificare che un Admin Globale, impostando una soglia minima di allerta per una merce, inserisca il valore della soglia minima da impostare], [R-88-F-Ob], [NI],
    [T-89-S], [Verificare che un Admin Globale riceva un avviso/errore quando cerca di impostare una soglia minima di allerta per una merce ma la soglia inserita non è valida (ad esempio perché negativa], [R-89-F-Ob], [NI],
    [T-90-S], [Verificare che un Admin Locale possa aggiungere stock (quantità) di merce ad una merce nel Sistema], [R-90-F-Ob], [NI],
    [T-91-S], [Verificare che un Admin Locale, aggiungendo stock (quantità) di una merce, selezioni la merce sulla quale effettuare l'aggiunta], [R-91-F-Ob], [NI],
    [T-92-S], [Verificare che un Admin Locale, aggiungendo stock (quantità) di una merce, inserisca la quantità da aggiungere], [R-92-F-Ob], [NI],
    [T-93-S], [Verificare che un Admin Globale possa aggiungere una merce nel Sistema], [R-93-F-Ob], [NI],
    [T-94-S], [Verificare che un Admin Globale, creando una nuova merce nel Sistema, ne indichi il nome], [R-94-F-Ob], [NI],
    [T-95-S], [Verificare che un Admin Globale, creando una nuova merce nel Sistema, ne indichi la descrizione], [R-95-F-Ob], [NI],
    [T-96-S], [Verificare che un Admin Globale possa aggiornare le informazioni di una merce nel Sistema], [R-96-F-Ob], [NI],
    [T-97-S], [Verificare che un Admin Globale, aggiornando le informazioni di una merce nel Sistema, indichi a quale merce applicare le modifiche], [R-97-F-Ob], [NI],
    [T-98-S], [Verificare che un Admin Globale, aggiornando le informazioni di una merce nel Sistema, indichi il nuovo nome], [R-98-F-Ob], [NI],
    [T-99-S], [Verificare che un Admin Globale, aggiornando le informazioni di una merce nel Sistema, indichi la nuova descrizione], [R-99-F-Ob], [NI],
    [T-100-S], [Verificare che un Cliente possa visualizzare l'elenco degli ordini eseguiti], [R-100-F-Ob], [NI],
    [T-101-S], [Verificare che un Cliente, visualizzando l'elenco degli ordini eseguiti, visualizzi per ciascun ordine il suo ID], [R-101-F-Ob], [NI],
    [T-102-S], [Verificare che un Cliente, visualizzando l'elenco degli ordini eseguiti, visualizzi per ciascun ordine la sua data di creazione], [R-102-F-Ob], [NI],
    [T-103-S], [Verificare che un Cliente, visualizzando l'elenco degli ordini eseguiti, visualizzi per ciascun ordine il suo nome], [R-103-F-Ob], [NI],
    [T-104-S], [Verificare che un Cliente possa visualizzare un ordine eseguito nello specifico], [R-104-F-Ob], [NI],
    [T-105-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi il suo ID], [R-105-F-Ob], [NI],
    [T-106-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi la data di creazione di quell'ordine], [R-106-F-Ob], [NI],
    [T-107-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi il nome di quell'ordine], [R-107-F-Ob], [NI],
    [T-108-S], [Verificare che un Cliente, visualizzando un ordine eseguito nello specifico, visualizzi la lista delle merci di quell'ordine], [R-108-F-Ob], [NI],
    [T-109-S], [Verificare che un Cliente, visualizzando la lista delle merci nel dettaglio di un ordine eseguito nello specifico, visualizzi per ogni merce il rispettivo nome], [R-109-F-Ob], [NI],
    [T-110-S], [Verificare che un Cliente, visualizzando la lista delle merci nel dettaglio di un ordine eseguito nello specifico, visualizzi per ogni merce la quantità interessata], [R-110-F-Ob], [NI],
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
    [T-130-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle merci disponibili], [R-130-F-Ob], [NI],
    [T-131-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione della quantità localmente disponibile per ogni merce], [R-131-F-Ob], [NI],
    [T-132-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione della quantità globalmente disponibile per ogni merce], [R-132-F-Ob], [NI],
    [T-133-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione del nome di ciascuna merce], [R-133-F-Ob], [NI],
    [T-134-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione della descrizione di ciascuna merce], [R-134-F-Ob], [NI],
    [T-135-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle merci disponibili, possa avviare la sincronizzazione dell'ID di ciascuna merce], [R-135-F-Ob], [NI],
    [T-136-S], [Verificare che lo Scheduler, all'aggiunta di una merce al Sistema, riesca ad avviare la sincronizzazione della stessa], [R-136-F-Ob], [NI],
    [T-137-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione della quantità localmente disponibile della stessa], [R-137-F-Ob], [NI],
    [T-138-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione della quantità globalmente disponibile della stessa], [R-138-F-Ob], [NI],
    [T-139-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione del nome della stessa], [R-139-F-Ob], [NI],
    [T-140-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione della descrizione della stessa], [R-140-F-Ob], [NI],
    [T-141-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una nuova merce, possa avviare la sincronizzazione dell'ID della stessa], [R-141-F-Ob], [NI],
    [T-142-S], [Verificare che lo Scheduler, all'eliminazione di una merce al Sistema, riesca ad avviare la sincronizzazione della stessa], [R-142-F-Ob], [NI],
    [T-143-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione della quantità localmente disponibile della stessa], [R-143-F-Ob], [NI],
    [T-144-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione della quantità globalmente disponibile della stessa], [R-144-F-Ob], [NI],
    [T-145-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione del nome della stessa], [R-145-F-Ob], [NI],
    [T-146-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione della descrizione della stessa], [R-146-F-Ob], [NI],
    [T-147-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce eliminata, possa avviare la sincronizzazione dell'ID della stessa], [R-147-F-Ob], [NI],
    [T-148-S], [Verificare che lo Scheduler, alla modifica di una merce al Sistema, riesca ad avviare la sincronizzazione della stessa], [R-148-F-Ob], [NI],
    [T-149-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione della quantità localmente disponibile della stessa], [R-149-F-Ob], [NI],
    [T-150-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione della quantità globalmente disponibile della stessa], [R-150-F-Ob], [NI],
    [T-151-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione del nome della stessa], [R-151-F-Ob], [NI],
    [T-152-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione della descrizione della stessa], [R-152-F-Ob], [NI],
    [T-153-S], [Verificare che lo Scheduler, avviando la sincronizzazione di una merce modificata, possa avviare la sincronizzazione dell'ID della stessa], [R-153-F-Ob], [NI],
    [T-154-S], [Verificare che lo Scheduler possa avviare la sincronizzazione degli ordini], [R-154-F-Ob], [NI],
    [T-155-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione della data di creazione], [R-155-F-Ob], [NI],
    [T-156-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione del nome], [R-156-F-Ob], [NI],
    [T-157-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione dell'ID], [R-157-F-Ob], [NI],
    [T-158-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione dello stato], [R-158-F-Ob], [NI],
    [T-159-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per ciascun ordine la sincronizzazione delle merci interessate], [R-159-F-Ob], [NI],
    [T-160-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per la lista delle merci di ciascun ordine la sincronizzazzione dell'ID di ciascuna merce nella lista], [R-160-F-Ob], [NI],
    [T-161-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini, possa avviare per la lista delle merci di ciascun ordine la sincronizzazzione della quantità di ciascuna merce nella lista], [R-161-F-Ob], [NI],
    [T-162-S], [Verificare che lo Scheduler possa avviare la sincronizzazione degli ordini confermati], [R-162-F-Ob], [NI],
    [T-163-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini confermati, possa avviare la sincronizzazione di tutti gli ordini], [R-163-F-Ob], [NI],
    [T-164-S], [Verificare che lo Scheduler possa avviare la sincronizzazione degli ordini cancellati], [R-164-F-Ob], [NI],
    [T-165-S], [Verificare che lo Scheduler, avviando la sincronizzazione degli ordini cancellati, possa avviare la sincronizzazione di tutti gli ordini], [R-165-F-Ob], [NI],
    [T-166-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dell'elenco dei trasferimenti], [R-166-F-Ob], [NI],
    [T-167-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione del magazzino destinatario di ciascun trasferimento], [R-167-F-Ob], [NI],
    [T-168-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione del magazzino mittente di ciascun trasferimento], [R-168-F-Ob], [NI],
    [T-169-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione dell'ID di ciascun trasferimento], [R-169-F-Ob], [NI],
    [T-170-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione dello stato di ciascun trasferimento], [R-170-F-Ob], [NI],
    [T-171-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco dei trasferimenti, possa avviare la sincronizzazione della lista delle merci coinvolte in ciascun trasferimento], [R-171-F-Ob], [NI],
    [T-172-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco della merce dei trasferimenti, possa avviare la sincronizzazione dell'ID di ciascuna merce], [R-172-F-Ob], [NI],
    [T-173-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco della merce dei trasferimenti, possa avviare la sincronizzazione della quantità interessata dal trasferimento di ciascuna merce], [R-173-F-Ob], [NI],
    [T-174-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dei trasferimenti confermati], [R-174-F-Ob], [NI],
    [T-175-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei trasferimenti confermati, possa avviare la sincronizzazione di tutti i trasferimenti], [R-175-F-Ob], [NI],
    [T-176-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dei trasferimenti cancellati], [R-176-F-Ob], [NI],
    [T-177-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei trasferimenti cancellati, possa avviare la sincronizzazione di tutti i trasferimenti], [R-177-F-Ob], [NI],
    [T-178-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle notifiche di rifornimento], [R-178-F-Ob], [NI],
    [T-179-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa avviare per ogni notifica il rispettivo ID], [R-179-F-Ob], [NI],
    [T-180-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa avviare per ogni notifica il rispettivo magazzino destinatario], [R-180-F-Ob], [NI],
    [T-181-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa avviare per ogni notifica il rispettivo stato], [R-181-F-Ob], [NI],
    [T-182-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento, possa avviare per ogni notifica il rispettivo elenco delle merci], [R-182-F-Ob], [NI],
    [T-183-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco delle merci delle notifiche di rifornimento, possa avviare per ogni merce nell'elenco della singola notifica l'ID della merce], [R-183-F-Ob], [NI],
    [T-184-S], [Verificare che lo Scheduler, avviando la sincronizzazione dell'elenco delle merci delle notifiche di rifornimento, possa avviare per ogni merce nell'elenco della singola notifica la quantità interessata della merce], [R-184-F-Ob], [NI],
    [T-185-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle notifiche di rifornimento confermate], [R-185-F-Ob], [NI],
    [T-186-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento confermate, possa avviare la sincronizzazione di tutte le notifiche di rifornimento], [R-186-F-Ob], [NI],
    [T-187-S], [Verificare che lo Scheduler possa avviare la sincronizzazione delle notifiche di rifornimento cancellate], [R-187-F-Ob], [NI],
    [T-188-S], [Verificare che lo Scheduler, avviando la sincronizzazione delle notifiche di rifornimento cancellate, possa avviare la sincronizzazione di tutte le notifiche di rifornimento], [R-188-F-Ob], [NI],
    [T-189-S], [Verificare che lo Scheduler possa avviare la sincronizzazione dei dati dei microservizi], [R-189-F-Ob], [NI],
    [T-190-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei dati dei microservizi, possa avviare la sincronizzazione del nome di ciascun microservizio], [R-190-F-Ob], [NI],
    [T-191-S], [Verificare che lo Scheduler, avviando la sincronizzazione dei dati dei microservizi, possa avviare la sincronizzazione del numero di richieste al secondo di ciascun microservizio], [R-191-F-Ob], [NI],
    [T-192-S], [Verificare che lo Scheduler possa avviare la sincronizzazione della soglia minima di una merce quando questa viene aggiornata], [R-192-F-Ob], [NI],
  ),
  caption: [Test di Sistema],
)

=== Tracciamento dei Test di Sistema

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
    text(white)[*Codice Test*], text(white)[*Codice Requisito*],
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
    [T-66-S], [R-66-F-Ob],
    [T-67-S], [R-67-F-Ob],
    [T-68-S], [R-68-F-Ob],
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
    [T-82-S], [R-82-F-Ob],
    [T-83-S], [R-83-F-Ob],
    [T-84-S], [R-84-F-Ob],
    [T-85-S], [R-85-F-Ob],
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
  caption: [Tracciamento dei Test di Sistema],
)

== Test di Regressione

== Test di Accettazione

#show figure: set block(breakable: true)
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
    text(white)[*Codice*], text(white)[*Descrizione*], text(white)[*Stato del Test*],
    [T-1-A], [Verificare che il prodotto dia la possibilità all'Utente di essere riconosciuto come Cliente, Admin Locale e Admin Globale], [NI],
    [T-2-A], [Verificare che il prodotto dia la possibilità all'utente di essere riconosciuto inserendo Username e Password], [NI],
    [T-3-A], [Verificare che il prodotto dia la possibilità di visualizzare ordini], [NI],
    [T-4-A], [Verificare che il prodotto dia la possibilità di confermare ordini], [NI],
    [T-5-A], [Verificare che il prodotto dia la possibilità di realizzare ordini], [NI],
    [T-6-A], [Verificare che il prodotto dia la possibilità di cancellare ordini], [NI],
    [T-7-A], [Verificare che il prodotto dia la possibilità di aggiungere merci dal Sistema], [NI],
    [T-8-A], [Verificare che il prodotto dia la possibilità di visualizzare merci dal Sistema], [NI],
    [T-9-A], [Verificare che il prodotto dia la possibilità di modificare merci dal Sistema], [NI],
    [T-10-A], [Verificare che il prodotto dia la possibilità di togliere merci dal Sistema], [NI],
    [T-11-A], [Verificare che il prodotto dia la possibilità di realizzare trasferimenti], [NI],
    [T-12-A], [Verificare che il prodotto dia la possibilità di cancellare trasferimenti], [NI],
    [T-13-A], [Verificare che il prodotto dia la possibilità di confermare trasferimenti], [NI],
    [T-14-A], [Verificare che il prodotto dia la possibilità di visualizzare trasferimenti], [NI],
    [T-15-A], [Verificare che il prodotto dia la possibilità di visualizzare notifiche di rifornimento], [NI],
    [T-16-A], [Verificare che il prodotto dia la possibilità di visualizzare notifiche di rifornimento fornite da _Machine Learning_], [NI],
    [T-17-A], [Verificare che il prodotto dia la possibilità di accettare notifiche di rifornimento], [NI],
    [T-18-A], [Verificare che il prodotto dia la possibilità di rifiutare notifiche di rifornimento], [NI],
    [T-19-A], [Verificare che il prodotto dia la possibilità di visualizzare i microservizi del Sistema], [NI],
    [T-20-A], [Verificare che il prodotto dia la possibilità di visualizzare il numero di richieste al secondo dei microservizi del Sistema], [NI],
    [T-21-A], [Verificare che il prodotto dia la possibilità di esportare gli ordini eseguiti in un file di formato _.csv_], [NI],
    [T-22-A], [Verificare che il prodotto dia la possibilità di esportare l'intero inventario del sistema in un file di formato _.csv_], [NI],
    [T-23-A], [Verificare che il prodotto dia la possibilità di impostare una soglia minima di allerta per ogni merce], [NI],
    [T-24-A], [Verificare che il prodotto dia la possibilità di aumentare lo stock di una merce nel Sistema], [NI],
    [T-25-A], [Verificare che il prodotto dia la possibilità di realizzare un Backup di un magazzino], [NI],
    [T-26-A], [Verificare che il prodotto dia la possibilità di attivare un Backup periodico del magazzino], [NI],
    [T-27-A], [Verificare che il prodotto dia la possibilità di disattivare il Backup periodico del magazzino], [NI],
    [T-28-A], [Verificare che il prodotto dia la possibilità di visualizzare i tentativi di accesso], [NI],
    [T-29-A], [Verificare che il prodotto dia la possibilità di bloccare i tentativi di accesso], [NI],
    [T-30-A], [Verificare che il prodotto dia la possibilità di inviare email/sms in caso di evento critico], [NI],
    [T-31-A], [Verificare che il prodotto dia la possibilità di creare nuovi Utenti], [NI],
    [T-32-A], [Verificare che il prodotto dia la possibilità di eliminare nuovi Utenti], [NI],
    [T-33-A], [Verificare che il prodotto dia la possibilità di promuovere il ruolo degli Utenti], [NI],
    [T-34-A], [Verificare che il prodotto sia scalabile], [NI],
    [T-35-A], [Verificare che il prodotto sincronizzi le informazioni tra magazzini], [NI],
  ),
  caption: [Test di Accettazione],
)

#pagebreak()
= Cruscotto di Valutazione <dashboard>

Verranno ora esposte le misurazioni eseguite durante il periodo che va dall'aggiudicazione del capitolato#super[G] sino alla _Requirements and Technology Baseline#super[G] (RTB)_. Le misurazioni non presenti saranno prese durante lo svolgimento delle attività per la _Product Baseline#super[G] (PB)_.

== MPC01 e MPC02: _Earned Value_ e _Planned Value_

#metriche-graph(nome: "MPC01", desc: "Grafico per periodo di MPC01", width: 100%);

Dall'aggiudicazione del Capitolato#super[G] si denota un progressivo aumento del lavoro pianificato da svolgere, raggiungendo il suo picco al sesto _sprint_#super[G].
Questo coincide con quanto redatto del #link("https://alimitedgroup.github.io/PP%20v1.0.0.pdf")[*Piano di Progetto#super[G] ver. 1.0.0*].
Si nota inoltre che l'_Earned Value_ (EV) e la _Planned Value_ (PV) per lo più coincidono, segno che il lavoro svolto è in linea con le aspettative.

#pagebreak()
== MPC03 e MPC07: _Actual Cost_ e _Estimate To Complete_

#metriche-graph(nome: "MPC03", desc: "Grafico per periodo di MPC01 e MPC07", width: 100%);

Dal grafico si può notare come il lavoro svolto durante la _Requirements and Technology Baseline#super[G] (RTB)_ sia progressivamente andato ad aumentare dall'assegnazione del capitolato#super[G],
raggiungendo il suo picco durante il sesto _sprint_#super[G]. Come prevedibile, ciò ha portato tuttavia ad una diminuzione del costo necessario per terminare il progetto, che avverrà al raggiungimento della _Product Baseline#super[G] (PB)_.
#pagebreak()
== MPC04 e MPC05: _Cost Performance Index_ e _Schedule Performance Index_

#metriche-graph(nome: "MPC04", desc: "Grafico per periodo di MPC04 e MPC05", width: 100%);

Dal grafico si denota che inizialmente _ALimitedGroup_ non ha gestito correttamente il _budget_: questo si ricava dal fatto che il _Cost Performance Index_ (CPI) sia minore di 1.
La cattiva gestione è anche documentata dallo _Schedule Performance Index_ che, essendo inferiore ad 1, indica l'accumulo di ritardi: effettivamente il primo periodo è stato eccessivamente lungo
e non ha portato al completamento di tutte le attività previste.
La situazione è andata progressivamente a migliorare, come denotato dal _Cost Performance Index_ (CPI) (superiore a 1, indice di buon utilizzo del budget) e
dallo _Schedule Performance Index_ (SPI) (che, attestandosi prevalentemente sopra 1 indica lo svolgimento dei compiti come preventivato, ovvero in tempo).
#pagebreak()
== MPC06: _Estimate At Completion_

#metriche-graph(nome: "MPC06", desc: "Grafico per periodo di MPC06", width: 100%);

Come prevedibile dalle misurazioni precedenti, una gestione non corretta delle risorse ha portato la previsione di spesa futura ben oltre il tetto massimo di spesa:
tale problematica si è tuttavia andata presto a risolvere a partire dall _sprint_#super[G] 2, andando a migliorare o comunque rimanere entro i limiti massimi per il resto del
periodo della _Requirements and Technology Baseline#super[G] (RTB)_.
#pagebreak()
== MPC08: _Time Estimate At Completion_
#metriche-graph(nome: "MPC08", desc: "Grafico per periodo di MPC08", width: 100%);

Dal grafico risulta che, causa cattiva pianificazione durante il primo _sprint_#super[G], il tempo stimato al completamento risultava superiore alla durata pianificata.
Il grafico però segnala come le correzioni apportate per risolvere il problema hanno avuto esito positivo, portando il tempo stimato al completamento sotto la durata pianificata,
arrivando poi a coincidere verso lo _sprint_#super[G] 6.
#pagebreak()
== MPC09: _Requirements Stability Index_

#metriche-graph(nome: "MPC09", desc: "Grafico per periodo di MPC09", width: 100%);

Il grafico registra un peggioramento della misurazione tra gli _sprint_#super[G] 2, 3 e 4: _ALimitedGroup_ ha concentrato in questo periodo la rilevazione di tutti
i requisiti da descrivere e i suoi membri sono concordi nel sottolineare che le stime effettuate inizialmente sono state troppo ottimistiche.
Gli Analisti hanno infatti rilevato molti requisiti impliciti che tuttavia era necessario rendere espliciti.
Inoltre, ulteriori requisiti sono stati rilevati in seguito al colloquio svolto con il #profBreve(p.cardin): le conseguenti modifiche hanno portato ad un ulteriore peggioramento della metrica,
che è migliorata tra gli _sprint_#super[G] 4, 5 e 6, periodo a cui effettivamente corrisponde un lavoro crescente da parte degli Analisti.
#pagebreak()
== MPC10: Indice di _Gulpease_

#metriche-graph(nome: "MPC10", desc: "Grafico per periodo di MPC10", width: 100%);

In generale _ALimitedGroup_ ha cercato di fare attenzione alla redazione dei Documenti: lo scopo era quello di avere documentazione sempre facilmente fruibile.
Seppur si può dire che questo è il caso dell'Analisi dei Requisiti#super[G] e del Piano di Progetto#super[G], specialmente il documento delle Norme di Progetto#super[G] rimane distante dalla soglia di ottimalità.
I componenti di _ALimitedGroup_ concordano nell'affermare che questo sia dovuto anzitutto alle varie riorganizzazioni subite dal documento per renderlo più facilmente fruibile, ma anche per la natura
a scopo regolamentativo del documento.

Seppur attestandosi sopra la soglia di accettabilità, _ALimitedGroup_ si impegna nel tempo a migliorare la leggibilità del documento in questione.

#pagebreak()
== MPC11: Correttezza ortografica

#metriche-graph(nome: "MPC11", desc: "Grafico per periodo di MPC11", width: 100%);

Il grafico segnala un'attenzione inizialmente scarsa per la correttezza ortografica dei documenti: _ALimitedGroup_ si è tuttavia resa conto del problema
di importanza critica e vi ha posto rimedio, correggendo tale criticità tra gli _sprint_#super[G] 4 e 6.
#pagebreak()
== MPC14: _Quality metrics satisfied_

#metriche-graph(nome: "MPC14", desc: "Grafico per periodo di MPC14", width: 100%);

Dal grafico si denota chiaramente l'attenzione posta da _ALimitedGroup_ per il soddisfacimento delle metriche di qualità: molto probabilmente a causa della poca esperienza,
dall'aggiudicazione del Capitolato#super[G] allo _sprint_#super[G] 3 le metriche soddisfatte sono state superiori al valore accettabile, ma non il massimo.
_ALimitedGroup_ ha però preso consapevolezza del problema e provveduto a correggere gli errori rilevati migliorando il proprio _Way of Working#super[G]_.
#pagebreak()
== MPC15: _Time Efficiency_

#metriche-graph(nome: "MPC15", desc: "Grafico per periodo di MPC15", width: 100%);

Dal grafico si osserva un progressivo miglioramento dell'efficienza temporale dei componenti di ALimitedGroup.
Inizialmente, la metrica si attestava su valori inferiori alla soglia accettabile, riflettendo le difficoltà iniziali legate all'inesperienza e all'adattamento alle richieste del progetto.
Tuttavia, con il passare del tempo, il gruppo ha acquisito maggiore familiarità con gli strumenti e le pratiche necessarie, portando a un netto miglioramento della metrica analizzata. Sebbene vi sia ancora margine per ottimizzare ulteriormente la gestione del tempo, i risultati ottenuti finora dimostrano una crescente efficienza#super[G] e una riduzione del tempo necessario per completare le attività.


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
