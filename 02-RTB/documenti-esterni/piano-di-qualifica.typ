#import "../../lib/importantdocs.typ": *
#import "../../lib/metriche.typ": *

#let ver = [0.2.0]

#show: body => importantdocs(
  data: datetime(day: 05, month: 12, year: 2024),
  tipo: [esterno],
  versione: ver,
  versioni: (
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
==== Earned Value
#metric(
  cod: [MPF1],
  formula: [
    $"Earned Value" = "Budget at Completion" * "Percentuale di lavoro completato nello sprint"$
  ],
  desc: [L'indicatore Earned Value rappresenta il valore del lavoro _completato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se il lavoro svolto è in linea con le aspettative.],
)

==== Planned Value
#metric(
  cod: [MPF2],
  formula: [
    $"Planned Value" = "Budget at Completion" * "Percentuale di lavoro pianificato nello spront"$
  ],
  desc: [L'indicatore Planned Value rappresenta il valore del lavoro _pianificato_ rispetto al budget totale previsto.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se la pianificazione è rispettata.
    Il valore pianificato non può essere negativo e deve essere inferiore al BAC],
)

==== Actual Cost
#metric(
  cod: [MPF3],
  formula: [
    $"Actual Cost" = "Costo effettivo sostenuto nello sprint"$
  ],
  desc: [L'indicatore Actual Cost rappresenta il costo effettivo sostenuto per completare il lavoro nello sprint.\
    L'indicatore è utile per monitorare l'andamento del progetto e valutare se i costi sono in linea con le aspettative.],
)


==== Cost Performance Index
#metric(
  cod: [MPF4],
  formula: [
    $"Cost Performance Index" = "Earned Value" / "Actual Cost"$
  ],
  desc: [Il Cost Performance Index rappresenta il rapporto tra il valore del lavoro completato e il costo effettivo sostenuto.\
    Un valore maggiore di 1 indica che il progetto sta rispettando il budget, un valore minore di 1 indica che il progetto sta superando il budget.],
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










