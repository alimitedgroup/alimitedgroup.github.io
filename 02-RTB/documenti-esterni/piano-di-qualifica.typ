#import "../../lib/importantdocs.typ": *
#import "../../lib/metriche.typ": *

#let ver = [0.2.0]

#show: body => importantdocs(
  data: datetime(day: 05, month: 12, year: 2024),
  tipo: [esterno],
  versione: ver,
  versioni: (
    (
      vers: "0.8.0",
      date: datetime(day: 10, month: 01, year: 2025),
      autore: p.sara,
      descr: "Aggiornamento qualità del processo e prodotto, soglie e tabelle",
    ),
    (
      vers: "0.7.0",
      date: datetime(day: 09, month: 01, year: 2025),
      autore: p.emanuele,
      descr: "Aggiunta sezione automiglioramento",
    ),
    (
      vers: "0.6.0",
      date: datetime(day: 08, month: 01, year: 2025),
      autore: p.sara,
      descr: "Aggiornamento sezione qualità di processo",
    ),
    (
      vers: "0.5.0",
      date: datetime(day: 04, month: 01, year: 2025),
      autore: p.emanuele,
      descr: "Aggiunta metriche qualità di prodotto e tabelle",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 3, month: 01, year: 2025),
      autore: p.sara,
      descr: "Aggiornamento metriche di processo e tabelle",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 27, month: 12, year: 2024),
      autore: p.sara,
      descr: "Aggiornamento metriche di processo",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 19, month: 12, year: 2024),
      autore: p.sara,
      descr: "Aggiunte metriche di processo",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 11, month: 12, year: 2024),
      autore: p.sara,
      descr: "Aggiunta sezione introduzione",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 5, month: 12, year: 2024),
      autore: p.sara,
      descr: "Redazione documento",
    ),
  ),
  stato: [In redazione],
  // responsabile: ((p.loris),),
  //verificatore: ((p.samuele), (p.lorenzo)),
  redattori: (
    (p.sara),
  ),
  descrizione: [Questo documento contiene il _Piano di Qualifica_ descritto dal gruppo _ALimitedGroup_ per il capitolato C6 proposto da #M31],
  titolo: "Piano di Qualifica",
  body,
)

= Introduzione
== Scopo del documento
Il presente Piano di Qualifica rappresenta un documento fondamentale per la gestione e il monitoraggio continuo della qualità del progetto _software_ e dei processi coinvolti nel suo ciclo di vita.\
Il Piano di Qualifica si sviluppa attraverso tre dimensioni interconnesse:

+ *Piano della Qualità*
  - Definisce gli obiettivi qualitativi
  - Stabilisce gli standard di riferimento
  - Delinea le politiche e le strategie per raggiungere l'eccellenza


+ *Controllo di Qualità*
  - Implementa meccanismi di misurazione oggettivi
  - Verifica la conformità ai requisiti
  - Monitora le prestazioni attraverso metriche predefinite


+ *Miglioramento Continuo*
  - Analizza periodicamente i risultati
  - Identifica opportunità di ottimizzazione
  - Adatta costantemente processi e obiettivi

Il Piano di Qualifica rappresenta uno strumento strategico volto a garantire che il progetto:
- Rispetti integralmente i requisiti definiti
- Consegua gli obiettivi prefissati
- Mantenga elevati standard qualitativi

L'approccio metodologico adottato non configura la qualità come un elemento statico, bensì come un processo dinamico di apprendimento, miglioramento e ottimizzazione continua.

I destinatari del documento sono:
- Team di sviluppo
- Committenti
- Utenti finali

== Definizioni, acronimi e abbreviazioni
Per tutte le definizioni, acronimi e abbreviazioni utilizzati in questo documento, si faccia
riferimento al *Glossario*, fornito come documento separato, che contiene tutte le spiegazioni
necessarie per garantire una comprensione uniforme dei termini tecnici e dei concetti
rilevanti per il progetto.
== Riferimenti
=== Riferimenti normativi
- Norme di Progetto: \
  #link("alimitedgroup.github.io/norme-progetto.pdf")[alimitedgroup.github.io/norme-progetto.pdf]
- Capitolato d'appalto C6 Sistema di Gestione di un Magazzino Distribuito: \
  https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf


=== Riferimenti informativi
- Glossario: \
  #link("alimitedgroup.github.io/Glossario.pdf")[alimitedgroup.github.io/Glossario.pdf]


= Qualità di processo
La qualità di processo rappresenta un'esigenza primaria per garantire il successo del progetto software.
Assicura che i processi utilizzati siano efficaci, efficienti e conformi agli standard di qualità prefissati.
Per garantire la qualità di processo, il progetto si avvale di:
- *Modelli di riferimento*: CMMI (Capability Maturity Model Integration) e ISO/IEC 12207.
- *Metriche di processo*: strumenti per valutare le prestazioni e l’efficienza dei processi. Per ogni metrica definita, vengono fissate soglie quantitative che rappresentano i livelli minimi accettabili di qualità.
- *Revisioni periodiche*: sessioni di verifica e controllo che analizzano i risultati ottenuti rispetto agli obiettivi stabiliti.
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
    [*MPC01*], [Budget at Completion], [in linea conpreventivo], [≤ preventivo],
    [*MPC02*], [Earned Value], [≥ 0], [≤ EAC],
    [*MPC03*], [Planned Value], [≥ 0], [≤ BAC],
    [*MPC04*], [Actual Cost], [≥ 0], [≤ EAC],
    [*MPC05*], [Cost Performance Index], [≥ 0], [1],
    [*MPC06*], [Schedule Performance Index], [≥ 0], [1],
    [*MPC07*], [Estimate At Completion], [≥ 0], [≤ BAC],
    [*MPC08*], [Estimate To Complete], [≥ 0], [≤ BAC],
    [*MPC09*], [Time Estimate At Completion], [≥ 0], [≤ Durata pianificata],
  ),
  caption: [Soglie metriche processo di fornitura],
)

==== Budget at Completion (BAC)
#metric(
  cod: [MPC01],
  formula: [
    $"Budget at Completion" = "Costo totale del progetto"$
  ],
  desc: [Il Budget at Completion rappresenta il costo totale previsto per completare il progetto.],
)

==== Earned Value (EV)
#metric(
  cod: [MPC02],
  formula: [
    $"Earned Value" = "Budget at Completion" * "Percentuale di lavoro completato nello sprint"$
  ],
  desc: [L'indicatore Earned Value rappresenta il valore del lavoro _completato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se il lavoro svolto è in linea con le aspettative.],
)

==== Planned Value (PV)
#metric(
  cod: [MPC03],
  formula: [
    $"Planned Value" = "Budget at Completion" * "Percentuale di lavoro pianificato nello sprint"$
  ],
  desc: [L'indicatore Planned Value rappresenta il valore del lavoro _pianificato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se la pianificazione è rispettata.
    Il valore pianificato non può essere negativo e deve essere inferiore al BAC],
)

==== Actual Cost (AC)
#metric(
  cod: [MPC04],
  formula: [
    $"Actual Cost" = "Costo effettivo sostenuto nello sprint"$
  ],
  desc: [L'indicatore Actual Cost rappresenta il costo effettivo sostenuto per completare il lavoro nello sprint.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se i costi sono in linea con le aspettative.],
)

==== Cost Performance Index (CPI)
#metric(
  cod: [MPC05],
  formula: [
    $"Cost Performance Index" = "Earned Value" / "Actual Cost"$
  ],
  desc: [Il Cost Performance Index rappresenta il rapporto tra il valore del lavoro completato e il costo effettivo sostenuto.\
    Un valore maggiore di 1 indica che il progetto sta rispettando il budget, un valore minore di 1 indica che il progetto sta superando il budget.],
)

==== Schedule Performance Index (SPI)
#metric(
  cod: [MPC06],
  formula: [
    $"Schedule Performance Index" = "Earned Value" / "Planned Value"$
  ],
  desc: [Lo Schedule Performance Index rappresenta il rapporto tra il valore del lavoro completato e il valore del lavoro pianificato.\
    Un valore maggiore di 1 indica che il progetto sta rispettando la pianificazione, un valore minore di 1 indica che il progetto sta accumulando ritardi.],
)

/*SONO COMMENTATE PERCHE' MOLTO SIMILI A COST PERFORMANCE INDEX E SCHEDULE PERFORMANCE INDEX*/

/*==== Budget Variance

#metric(
  cod: [MPF7],
  formula: [
    $"Budget Variance" = ("Earned Value" - "Actual Cost" ) / "Actual Cost" * 100$
  ],
  desc: [La Budget Variance rappresenta la differenza percentuale tra il valore del lavoro completato e il costo effettivo sostenuto per completare il lavoro nello sprint.\
    Un valore positivo indica che il progetto sta rispettando il budget, un valore negativo indica che il progetto sta superando il budget.],
)

==== Effort Variance
#metric(
  cod: [MPF8],
  formula: [
    $"Effort Variance" = ("Ore Pianificate" - "Ore Effettive") / "Ore Pianificate" * "100"$
  ],
  desc: [L'Effort Variance rappresenta la differenza percentuale tra le ore pianificate e le ore effettive impiegate per completare il lavoro nello sprint.\
    Un valore positivo indica che il progetto sta rispettando la pianificazione, un valore negativo indica che il progetto sta accumulando ritardi.],
)*/

==== Estimate At Completion (EAC)
#metric(
  cod: [MPC07],
  formula: [
    $"Estimate At Completion" = "Budget at Completion" / "Cost Performance Index"$
  ],
  desc: [La metrica Estimate At Completion rappresenta una proiezione del costo finale totale del progetto basata sulla performance attuale.
    Utilizza il CPI come indicatore di efficienza per correggere la stima iniziale (BAC).
    Se CPI < 1, EAC sarà maggiore del BAC, indicando un probabile sforamento del budget.],
)

==== Estimate To Complete (ETC)
#metric(
  cod: [MPC08],
  formula: [
    $"Estimate To Complete" = "Estimate At Completion" - "Actual Cost"$
  ],
  desc: [La metrica Estimate To Complete stima quanto costerà completare il lavoro rimanente del progetto.
    Si calcola sottraendo i costi già sostenuti (AC) dalla stima del costo finale totale (EAC).
    Utile per la pianificazione del budget residuo necessario.],
)

==== Time Estimate At Completion (TEAC)
#metric(
  cod: [MPC09],
  formula: [
    $"Time Estimate At Completion" = "Durata pianificata" / "Schedule Performance Index"$
  ],
  desc: [La metrica Time Estimate At Completion proietta la durata finale del progetto basandosi sulla performance temporale attuale.
    Utilizza SPI come indicatore di efficienza temporale per correggere la stima iniziale.
    Se SPI < 1, TEAC sarà maggiore della durata pianificata, indicando un probabile ritardo.],
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
    [*MPC10*], [Code Coverage], [≥ 70%], [≥ 80%],
    [*MPC11*], [Technical Debt Ratio], [≤ 5%], [≤ 2%],
    [*MPC12*], [Sprint Velocity], [costante], [crescente],
    [*MPC13*], [Lead Time], [≤ 21], [≤ 14],
    [*MPC14*], [Defect Density], [≤ 1], [≤ 0.5],
    [*MPC15*], [Test Success Rate], [≥ 95%], [≥ 98%],
    [*MPC16*], [Deployment Frequency], [≥ 1 a sprint], [≥ 2 a sprint],
    [*MPC17*], [Change Failure Rate], [≤ 15%], [≤ 10%],
  ),
  caption: [Soglie metriche processo di sviluppo],
)
/*==== Cyclomatic Complexity

#metric(
  cod: [MPS1],
  formula: [
    $"Cyclomatic Complexity" = E - N + 2P$

  ],
  desc: [
- E = numero di archi nel grafo di controllo
- N = numero di nodi nel grafo di controllo
- P = numero di componenti connesse\
Misura la complessità del codice contando i percorsi linearmente indipendenti. Un valore superiore a 10 indica codice complesso che potrebbe richiedere refactoring.],
)*/

==== Code Coverage
#metric(
  cod: [MPC10],
  formula: [
    $"Code Coverage" = ("Linee di codice testate" / "Linee di codice totali") * 100$
  ],
  desc: [Percentuale di codice coperto da test automatizzati. Si raccomanda un coverage minimo del 80%.],
)

==== Technical Debt Ratio

#metric(
  cod: [MPC11],
  formula: [
    $"Technical Debt Ratio" = ("Remediation Cost" / "Development Cost") * 100$
  ],
  desc: [Rapporto tra il costo stimato per risolvere i problemi tecnici e il costo di sviluppo. Un valore superiore al 5% richiede attenzione.],
)

==== Sprint Velocity

#metric(
  cod: [MPC12],
  formula: [
    $"Sprint Velocity" = "Story Points completati nello sprint"$
  ],
  desc: [Media mobile degli story points completati negli ultimi 3 sprint. Utile per la capacity planning.],
)
==== Lead Time
#metric(
  cod: [MPC13],
  formula: [
    $"Lead Time" = "Data completamento" - "Data creazione task"$
  ],
  desc: [Tempo medio tra la creazione di una user story e il suo completamento. Indica l'efficienza del processo di sviluppo.],
)

==== Defect Density

#metric(
  cod: [MPC14],
  formula: [
    $"Defect Density" = "Numero di difetti" / "KLOC"$
  ],
  desc: [Numero di difetti per 1000 linee di codice. Un valore superiore a 1 indica possibili problemi di qualità.],
)

==== Test Success Rate
#metric(
  cod: [MPC15],
  formula: [
    $"Test Success Rate" = ("Test passati" / "Test totali") * 100$
  ],
  desc: [Percentuale di test automatizzati che passano con successo. Dovrebbe mantenersi sopra il 95%.],
)

==== Deployment Frequency

#metric(
  cod: [MPC16],
  formula: [
    $"Deployment Frequency" = "Numero deployment" / "Periodo di tempo"$
  ],
  desc: [Frequenza dei rilasci in produzione. Indica la maturità del processo CI/CD.],
)

==== Change Failure Rate
#metric(
  cod: [MPC17],
  formula: [
    $"Change Failure Rate" = ("Deployment falliti" / "Deployment totali") * 100$
  ],
  desc: [Percentuale di deployment che causano un fallimento in produzione. Dovrebbe essere inferiore al 15%.],
)



== Processi di supporto
=== Documentazione
==== Indice di Gulpease
#metric(
  cod: [MPC18],
  formula: [
    $"Indice Gulpease" = 89 - "numero di lettere" / "numero di parole" *100 + "numero di frasi" / "numero di parole" * 300$
  ],
  desc: [L'Indice Gulpease è un indice di leggibilità del testo.
    È utile per capire quanto un testo sia facile o difficile da leggere per un lettore medio. La formula tiene conto del numero di lettere, parole e frasi nel testo.\

    _Intervalli e interpretazioni_
    - Indice $gt.eq$ 80:
      Il testo è molto facile da leggere, comprensibile per chi ha completato solo la scuola elementare.

    - Indice compreso 60 e 80:
      Il testo è di media difficoltà, adatto a chi ha completato la scuola dell'obbligo.

    - Indice compreso 40 e 60:
      Il testo è abbastanza difficile, comprensibile per chi ha almeno un'istruzione di livello superiore.

    - Indice $lt$ 40:
      Il testo è molto difficile da leggere, comprensibile per lettori con un'istruzione universitaria.],
)


==== Correttezza ortografica
#metric(
  cod: [MPC19],
  formula: [
    $"Correttezza ortografica" = (1-"numero di errori ortografici" / "numero di parole" )* 100$
  ],
  desc: [La correttezza ortografica è un indicatore della qualità della documentazione.
    Una precisione del 100% significa che non ci sono errori ortografici.],
)

#figure(
  table(
    columns: (1fr, 2fr, 0.75fr),
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
    text(white)[*Obiettivo*], text(white)[*Descrizione*], text(white)[*Metrica*],

    //table row
    [*Correttezza linguistica*], [I documenti devono essere privi di errori ortografici o grammaticali], [MPC18],
    [*Leggibilità*], [I documenti devono essere comprensibili all'utente], [MPC19],
  ),
  caption: [Obiettivi qualità del processo di documentazione],
)


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
    [*MPC18*], [Indice di Gulpease], [≥ 60%], [≥ 80%],
    [*MPC19*], [Correttezza ortografica], [100%], [100%],
  ),
  caption: [Soglie metriche processo di documentazione],
)


= Qualità di prodotto
La qualità del prodotto rappresenta l’obiettivo centrale di ogni progetto software e si riferisce alla capacità del prodotto finale di soddisfare pienamente i requisiti, le aspettative e le esigenze degli utenti e dei committenti.
Essa è il risultato diretto della qualità dei processi adottati durante l'intero ciclo di vita del progetto.\

Un prodotto software è considerato di alta qualità quando:
- È *funzionale*, ovvero rispetta i requisiti funzionali e non funzionali definiti nell'analisi.
- È *affidabile*, garantendo prestazioni consistenti e prive di errori.
- È *usabile*, rendendo semplice e intuitiva l'interazione per gli utenti finali.
- È *efficiente*, ovvero ottimizzato per rispondere in modo rapido ed efficace alle richieste.
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
  caption: [Soglie metriche funzionalitá del prodotto],
)
=== Requisiti obbligatori soddisfatti
#metric(
  cod: [MPD01],
  formula: [
    $"Requisiti obbligatori soddisfatti" = "Numero di requisiti obbligatori soddisfatti" / "Numero di requisiti obbligatori totali" * 100$
  ],
  desc: [L'indicatore Requisiti obbligatori soddisfatti rappresenta la percentuale di requisiti obbligatori soddisfatti rispetto al totale dei requisiti obbligatori.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti essenziali del progetto.],
)

=== Requisiti desiderabili soddisfatti
#metric(
  cod: [MPD02],
  formula: [
    $"Requisiti desiderabili soddisfatti" = "Numero di requisiti desiderabili soddisfatti" / "Numero di requisiti desiderabili totali" * 100$
  ],
  desc: [L'indicatore Requisiti desiderabili soddisfatti rappresenta la percentuale di requisiti desiderabili soddisfatti rispetto al totale dei requisiti desiderabili.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti opzionali del progetto.],
)

=== Requisiti opzionali soddisfatti
#metric(
  cod: [MPD03],
  formula: [
    $"Requisiti opzionali soddisfatti" = "Numero di requisiti opzionali soddisfatti" / "Numero di requisiti opzionali totali" * 100$
  ],
  desc: [L'indicatore Requisiti opzionali soddisfatti rappresenta la percentuale di requisiti opzionali soddisfatti rispetto al totale dei requisiti opzionali.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti aggiuntivi del progetto.],
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
=== Branch Coverage
#metric(
  cod: [MPD04],
  formula: [
    $"Branch Coverage" = ("Rami testati" / "Rami totali") * 100$
  ],
  desc: [Percentuale di rami del codice coperti da test automatizzati. Si raccomanda un coverage minimo del 60%.],
)

=== Statement Coverage
#metric(
  cod: [MPD05],
  formula: [
    $"Statement Coverage" = ("Istruzioni testate" / "Istruzioni totali") * 100$
  ],
  desc: [Percentuale di istruzioni del codice coperte da test automatizzati. Si raccomanda un coverage minimo del 70%.],
)

=== Failure Density
#metric(
  cod: [MPD06],
  formula: [
    $"Failure Density" = ("Numero di difetti rilevati" / "KLOC")$
  ],
  desc: [Numero di failure per 1000 linee di codice (Kilo Lines of Code). Un valore superiore a 0.5 indica possibili problemi di affidabilità.],
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
=== Time on Task
#metric(
  cod: [MPD07],
  formula: [
    $"Time on Task" = "Tempo medio per completare un'attività"$
  ],
  desc: [Tempo medio impiegato per completare un'attività. Indica l'usabilità del prodotto.],
)

=== Error Rate
#metric(
  cod: [MPD08],
  formula: [
    $"Error Rate" = ("Errori totali" / "Azioni totali") * 100$
  ],
  desc: [Percentuale di errori commessi durante l'utilizzo del prodotto. Dovrebbe essere inferiore al 5%.],
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
=== Response Time
#metric(
  cod: [MPD09],
  formula: [
    $"Response Time" = "Tempo medio di risposta"$
  ],
  desc: [Tempo medio impiegato per rispondere a una richiesta. Indica l'efficienza del prodotto. Un tempo di risposta inferiore a 2 secondi è considerato accettabile, mentre un tempo inferiore a 1 secondo è considerato ottimo.],
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
  ),
  caption: [Soglie metriche manutenibilità del prodotto],
)
=== Code Smells
#metric(
  cod: [MPD10],
  formula: [
    $"Code Smells" = ("Numero di code smells" / "KLOC")$
  ],
  // Definizione di code smells: I code smells sono indicatori di potenziali problemi nel codice sorgente che possono influire negativamente sulla manutenibilità, leggibilità e qualità complessiva del software. Esempi comuni includono codice duplicato, metodi troppo lunghi, eccessiva complessità ciclomatica e nomi di variabili poco chiari.
  desc: [Numero di code smells per 1000 linee di codice. Un valore superiore a 10 indica possibili problemi di manutenibilità.],
)


=== Coefficient of Coupling (CoC)
#metric(
  cod: [MPD11],
  formula: [
    $"Coefficient of Coupling" = ("Numero di dipendenze" / "Numero di componenti")$
  ],
  desc: [Numero medio di dipendenze tra le componenti del sistema. Un valore superiore a 0.4 indica un accoppiamento eccessivo tra le componenti.],
)


== tabelle
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

    // Data rows
    [MPF1], [Budget at completion (BAC)], [≥ 0], [In linea col preventivo],
    [MPF2], [Earned value (EV)], [≥ 0], [≤ BAC],
    [MPF3], [Planned value (PV)], [≥ 0], [≤ BAC],
    [MPF4], [Actual cost (AC)], [≥ 0], [≤ EAC],
    [MPF5], [Cost performance index (CPI)], [≥ 0.95], [≥ 1],
    [MPF6], [Schedule performance index (SPI)], [≥ 0.95], [≥ 1],
    [MPF7], [Estimate at completion (EAC)], [Esattamente pari al BAC], [Esattamente pari al BAC],
    [MPF8], [Estimate to complete (ETC)], [≥ 0], [≤ EAC],
    [MPF9], [Time estimate at completion (TEAC)], [Errore del ± 3% rispetto alla durata pianificata], [Esattamente pari alla durata pianificata],
    [MPS1], [Requisiti obbligatori soddisfatti], [100%], [100%],
    [MPS2], [Requisiti desiderabili soddisfatti], [≥ 0%], [≥ 50%],
    [MPS3], [Requisiti opzionali soddisfatti], [≥ 0%], [≥ 40%],
    [MPS4], [Branch coverage], [≥ 60%], [≥ 85%],
    [MPS5], [Statement coverage], [≥ 70%], [≥ 90%],
    [MPS6], [Failure density], [≤ 0.5], [≤ 0.2],
    [MPS7], [Time on task], [≤ 10 min], [≤ 5 min],
    [MPS8], [Error rate], [≤ 5%], [≤ 2%],
    [MPS9], [Response time], [≤ 2 s], [≤ 1 s],
    [MPS10], [Code smells], [≤ 10], [0],
    [MPS11], [Coefficient of coupling (CoC)], [≤ 0.4], [≤ 0.1],
  ),
  caption: [Informazioni metriche],
)


= Metodi di testing
/* DA FARE */

= Cruscotto di valutazione
/* DA FARE */

= Iniziative di automiglioramento
== Introduzione
Il miglioramento continuo rappresenta un obiettivo primario per garantire la qualità del progetto software.
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
    [Assenza di controllo sulle modifiche dirette al branch principale può causare problemi di integrazione e qualità del codice], [Implementazione di branch protection su GitHub per evitare modifiche non autorizzate e garantire la revisione del codice],
    [Comunicare la rendicontazione ore separatamente durante la retrospettiva dello sprint rallenta ed appesantisce il flusso organizzativo], [Utilizzo di Foglio Google condiviso in cui annotare le ore impiegate di ciascun ruolo in ogni periodo asincronamente],
    [Nominare le risorse con formati arbitrari crea problemi di consistenza e rallenta notevolmente qualsiasi attività di ricerca], [Ideazione ed utilizzo di convenzioni per la nomenclatura di issue, branch, file e decisioni prese per garantire una maggiore chiarezza e uniformità],
  ),
  caption: [contromisure adottate per migliorare l'organizzazione],
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
    text(white)[*Ruolo interessato*], text(white)[*Descrizione problema*], text(white)[*Constromisura adottata*],

    // Data rows
    [Tutti i ruoli], [In fasi più avanzate del progetto diventa limitante dover ricoprire lo stesso ruolo per due settimane, lasciando insoddisfatte delle necessità e sfruttando male le ore produttive], [I ruoli possono cambiare ad ogni settimana, previo accordo tra le
      parti qualora questo si renda necessario, e con l’unico vincolo di non coprire due ruoli
      simultaneamente],
    [Verificatore], [Modificare o aggiornare documenti senza prima averlo sottoposto a verifica non è conforme ai buoni standard progettuali], [Il verificatore è tenuto a compilare ad ogni modifica la tabella relativa per ciascun documento],
  ),
  caption: [contromisure adottate per migliorare la gestione dei ruoli],
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
    text(white)[*Strumento interessato*], text(white)[*Descrizione problema*], text(white)[*Constromisura adottata*],

    // Data rows
    [Linguaggio Go], [Alcuni membri del gruppo non hanno familiarità con questa tecnologia], [Ogni membro ha autonomamente intrapreso un percorso di apprendimento per colmare le proprie lacune],
    [Sistema NATS], [Alcuni membri del gruppo non hanno familiarità con questa tecnologia], [Ogni membro ha autonomamente intrapreso un percorso di apprendimento per colmare le proprie lacune],
    [Glossario], [Risulta difficile riconoscere se una parola del documento è definita nel glossario, oltre che dispendioso assicurarsi manualmente che ogni occorrenza di una parola definita segua la stessa convenzione],
    [Tramite script Python è stato implementato un controllo automatico che verifica la presenza di ogni parola definita nel glossario e la sua corretta scrittura con l'aggiunta di una lettera "g" in apice al termine in tutti i documenti],
    [Sito], [La navigazione del sito è macchinosa e la presentazione non supporta la visualizzazione sugli schermi più piccoli], [Il sito è ristrutturato per garantire una navigazione più fluida e una visualizzazione ottimale su tutti i dispositivi],
  ),
  caption: [contromisure adottate per migliorare il rapporto con gli strumenti di lavoro],
)

== Considerazioni finali
Il processo di automiglioramento è un'attività continua e fondamentale per garantire la qualità del progetto.
Le contromisure adottate hanno permesso di risolvere o ridurre i problemi individuati, migliorando l'efficienza e l'efficacia del lavoro svolto.
Il gruppo si impegna a mantenere un approccio proattivo e collaborativo per individuare e risolvere tempestivamente eventuali criticità.
