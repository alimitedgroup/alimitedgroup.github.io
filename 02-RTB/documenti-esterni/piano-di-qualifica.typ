#import "../../lib/importantdocs.typ": *
#import "../../lib/metriche.typ": *

#let ver = [0.2.0]

#show: body => importantdocs(
  data: datetime(day: 05, month: 12, year: 2024),
  tipo: [esterno],
  versione: ver,
  versioni: (
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
== Processi primari
=== Fornitura

==== Budget at Completion (BAC)
#metric(
  cod: [MPF1],
  formula: [
    $"Budget at Completion" = "Costo totale del progetto"$
  ],
  desc: [Il Budget at Completion rappresenta il costo totale previsto per completare il progetto.],
)

==== Earned Value (EV)
#metric(
  cod: [MPF2],
  formula: [
    $"Earned Value" = "Budget at Completion" * "Percentuale di lavoro completato nello sprint"$
  ],
  desc: [L'indicatore Earned Value rappresenta il valore del lavoro _completato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se il lavoro svolto è in linea con le aspettative.],
)

==== Planned Value (PV)
#metric(
  cod: [MPF3],
  formula: [
    $"Planned Value" = "Budget at Completion" * "Percentuale di lavoro pianificato nello sprint"$
  ],
  desc: [L'indicatore Planned Value rappresenta il valore del lavoro _pianificato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se la pianificazione è rispettata.
    Il valore pianificato non può essere negativo e deve essere inferiore al BAC],
)

==== Actual Cost (AC)
#metric(
  cod: [MPF4],
  formula: [
    $"Actual Cost" = "Costo effettivo sostenuto nello sprint"$
  ],
  desc: [L'indicatore Actual Cost rappresenta il costo effettivo sostenuto per completare il lavoro nello sprint.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se i costi sono in linea con le aspettative.],
)

==== Cost Performance Index (CPI)
#metric(
  cod: [MPF5],
  formula: [
    $"Cost Performance Index" = "Earned Value" / "Actual Cost"$
  ],
  desc: [Il Cost Performance Index rappresenta il rapporto tra il valore del lavoro completato e il costo effettivo sostenuto.\
    Un valore maggiore di 1 indica che il progetto sta rispettando il budget, un valore minore di 1 indica che il progetto sta superando il budget.],
)

==== Schedule Performance Index (SPI)
#metric(
  cod: [MPF6],
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
  cod: [MPF7],
  formula: [
    $"Estimate At Completion" = "Budget at Completion" / "Cost Performance Index"$
  ],
  desc: [La metrica Estimate At Completion rappresenta una proiezione del costo finale totale del progetto basata sulla performance attuale.
    Utilizza il CPI come indicatore di efficienza per correggere la stima iniziale (BAC).
    Se CPI < 1, EAC sarà maggiore del BAC, indicando un probabile sforamento del budget.],
)

==== Estimate To Complete (ETC)
#metric(
  cod: [MPF8],
  formula: [
    $"Estimate To Complete" = "Estimate At Completion" - "Actual Cost"$
  ],
  desc: [La metrica Estimate To Complete stima quanto costerà completare il lavoro rimanente del progetto.
    Si calcola sottraendo i costi già sostenuti (AC) dalla stima del costo finale totale (EAC).
    Utile per la pianificazione del budget residuo necessario.],
)

==== Time Estimate At Completion (TEAC)
#metric(
  cod: [MPF9],
  formula: [
    $"Time Estimate At Completion" = "Durata pianificata" / "Schedule Performance Index"$
  ],
  desc: [La metrica Time Estimate At Completion proietta la durata finale del progetto basandosi sulla performance temporale attuale.
    Utilizza SPI come indicatore di efficienza temporale per correggere la stima iniziale.
    Se SPI < 1, TEAC sarà maggiore della durata pianificata, indicando un probabile ritardo.],
)


=== Sviluppo
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
  cod: [MPS2],
  formula: [
    $"Code Coverage" = ("Linee di codice testate" / "Linee di codice totali") * 100$
  ],
  desc: [Percentuale di codice coperto da test automatizzati. Si raccomanda un coverage minimo del 80%.],
)

==== Technical Debt Ratio

#metric(
  cod: [MPS3],
  formula: [
    $"Technical Debt Ratio" = ("Remediation Cost" / "Development Cost") * 100$
  ],
  desc: [Rapporto tra il costo stimato per risolvere i problemi tecnici e il costo di sviluppo. Un valore superiore al 5% richiede attenzione.],
)

==== Sprint Velocity

#metric(
  cod: [MPS4],
  formula: [
    $"Sprint Velocity" = "Story Points completati nello sprint"$
  ],
  desc: [Media mobile degli story points completati negli ultimi 3 sprint. Utile per la capacity planning.],
)
==== Lead Time
#metric(
  cod: [MPS5],
  formula: [
    $"Lead Time" = "Data completamento" - "Data creazione task"$
  ],
  desc: [Tempo medio tra la creazione di una user story e il suo completamento. Indica l'efficienza del processo di sviluppo.],
)

==== Defect Density

#metric(
  cod: [MPS6],
  formula: [
    $"Defect Density" = "Numero di difetti" / "KLOC"$
  ],
  desc: [Numero di difetti per 1000 linee di codice. Un valore superiore a 1 indica possibili problemi di qualità.],
)

==== Test Success Rate
#metric(
  cod: [MPS7],
  formula: [
    $"Test Success Rate" = ("Test passati" / "Test totali") * 100$
  ],
  desc: [Percentuale di test automatizzati che passano con successo. Dovrebbe mantenersi sopra il 95%.],
)

==== Deployment Frequency

#metric(
  cod: [MPS8],
  formula: [
    $"Deployment Frequency" = "Numero deployment" / "Periodo di tempo"$
  ],
  desc: [Frequenza dei rilasci in produzione. Indica la maturità del processo CI/CD.],
)

==== Change Failure Rate
#metric(
  cod: [MPS9],
  formula: [
    $"Change Failure Rate" = ("Deployment falliti" / "Deployment totali") * 100$
  ],
  desc: [Percentuale di deployment che causano un fallimento in produzione. Dovrebbe essere inferiore al 15%.],
)



== Processi di supporto
=== Documentazione
==== Indice di Gulpease
#metric(
  cod: [MPD1],
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
  cod: [MPD2],
  formula: [
    $"Correttezza ortografica" = (1-"numero di errori ortografici" / "numero di parole" )* 100$
  ],
  desc: [La correttezza ortografica è un indicatore della qualità della documentazione.
    Una precisione del 100% significa che non ci sono errori ortografici.],
)


== Qualità di prodotto
=== Funzionalità
==== Requisiti obbligatori soddisfatti
#metric(
  cod: [MPS1],
  formula: [
    $"Requisiti obbligatori soddisfatti" = "Numero di requisiti obbligatori soddisfatti" / "Numero di requisiti obbligatori totali" * 100$
  ],
  desc: [L'indicatore Requisiti obbligatori soddisfatti rappresenta la percentuale di requisiti obbligatori soddisfatti rispetto al totale dei requisiti obbligatori.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti essenziali del progetto.],
)

==== Requisiti desiderabili soddisfatti
#metric(
  cod: [MPS2],
  formula: [
    $"Requisiti desiderabili soddisfatti" = "Numero di requisiti desiderabili soddisfatti" / "Numero di requisiti desiderabili totali" * 100$
  ],
  desc: [L'indicatore Requisiti desiderabili soddisfatti rappresenta la percentuale di requisiti desiderabili soddisfatti rispetto al totale dei requisiti desiderabili.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti opzionali del progetto.],
)

==== Requisiti opzionali soddisfatti
#metric(
  cod: [MPS3],
  formula: [
    $"Requisiti opzionali soddisfatti" = "Numero di requisiti opzionali soddisfatti" / "Numero di requisiti opzionali totali" * 100$
  ],
  desc: [L'indicatore Requisiti opzionali soddisfatti rappresenta la percentuale di requisiti opzionali soddisfatti rispetto al totale dei requisiti opzionali.\
    L'indicatore è utile per monitorare il grado di soddisfacimento dei requisiti aggiuntivi del progetto.],
)

=== Affidabilità
==== Branch Coverage
#metric(
  cod: [MPS4],
  formula: [
    $"Branch Coverage" = ("Rami testati" / "Rami totali") * 100$
  ],
  desc: [Percentuale di rami del codice coperti da test automatizzati. Si raccomanda un coverage minimo del 60%.],
)

==== Statement Coverage
#metric(
  cod: [MPS5],
  formula: [
    $"Statement Coverage" = ("Istruzioni testate" / "Istruzioni totali") * 100$
  ],
  desc: [Percentuale di istruzioni del codice coperte da test automatizzati. Si raccomanda un coverage minimo del 70%.],
)

==== Failure Density
#metric(
  cod: [MPS6],
  formula: [
    $"Failure Density" = ("Numero di difetti rilevati" / "KLOC")$
  ],
  desc: [Numero di failure per 1000 linee di codice (Kilo Lines of Code). Un valore superiore a 0.5 indica possibili problemi di affidabilità.],
)

=== Usabilità
==== Time on Task
#metric(
  cod: [MPS7],
  formula: [
    $"Time on Task" = "Tempo medio per completare un'attività"$
  ],
  desc: [Tempo medio impiegato per completare un'attività. Indica l'usabilità del prodotto.],
)

==== Error Rate
#metric(
  cod: [MPS8],
  formula: [
    $"Error Rate" = ("Errori totali" / "Azioni totali") * 100$
  ],
  desc: [Percentuale di errori commessi durante l'utilizzo del prodotto. Dovrebbe essere inferiore al 5%.],
)

=== Efficienza
==== Response Time
#metric(
  cod: [MPS9],
  formula: [
    $"Response Time" = "Tempo medio di risposta"$
  ],
  desc: [Tempo medio impiegato per rispondere a una richiesta. Indica l'efficienza del prodotto. Un tempo di risposta inferiore a 2 secondi è considerato accettabile, mentre un tempo inferiore a 1 secondo è considerato ottimo.],
)

=== Manutenibilità
==== Code Smells
#metric(
  cod: [MPS10],
  formula: [
    $"Code Smells" = ("Numero di code smells" / "KLOC")$
  ],
  // Definizione di code smells: I code smells sono indicatori di potenziali problemi nel codice sorgente che possono influire negativamente sulla manutenibilità, leggibilità e qualità complessiva del software. Esempi comuni includono codice duplicato, metodi troppo lunghi, eccessiva complessità ciclomatica e nomi di variabili poco chiari.
  desc: [Numero di code smells per 1000 linee di codice. Un valore superiore a 10 indica possibili problemi di manutenibilità.],
)

==== Coefficient of Coupling (CoC)
#metric(
  cod: [MPS11],
  formula: [
    $"Coefficient of Coupling" = ("Numero di dipendenze" / "Numero di componenti")$
  ],
  desc: [Numero medio di dipendenze tra le componenti del sistema. Un valore superiore a 0.4 indica un accoppiamento eccessivo tra le componenti.],
)

== tabelle
#figure(
  table(
    columns: (auto, auto, auto, auto),
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
    [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*],

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




