#import "../../lib/importantdocs.typ"
#import "../../lib/metriche.typ"

#let ver = [0.2.0]

#show: body => importantdocs(
  data: datetime(day: 05, month: 12, year: 2024),
  tipo: [esterno],
  versione: ver,
  versioni: (
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
  responsabile: ((p.loris),),
  //verificatore: ((p.samuele), (p.lorenzo)),
  redattori: (
    (p.sara),
  ),
  descrizione: [Questo documento contiene l'_Piano di Qualifica_ descritta dal gruppo _ALimitedGroup_ per il capitolato C6 proposto da #M31],
  titolo: "Piano di Qualifica",
  body,
)

= Introduzione
== Scopo del documento
Il presente Piano di Qualifica rappresenta un documento fondamentale per la gestione e il monitoraggio continuo della qualità del progetto software e dei processi coinvolti nel suo ciclo di vita.\
Il Piano di Qualifica si sviluppa attraverso tre dimensioni interconnesse:

+ Piano della Qualità
  - Definisce gli obiettivi qualitativi
  - Stabilisce gli standard di riferimento
  - Delinea le politiche e le strategie per raggiungere l'eccellenza


+ Controllo di Qualità
  - Implementa meccanismi di misurazione oggettivi
  - Verifica la conformità ai requisiti
  - Monitora le prestazioni attraverso metriche predefinite


+ Miglioramento Continuo
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
- Norme di Progetto
alimitedgroup.github.io/norme-progetto.pdf
- Capitolato d’appalto C6 Sistema di Gestione di un Magazzino Distribuito:
https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf


=== Riferimenti informativi
- Glossario:
alimitedgroup.github.io/Glossario.pdf


= Qualità di processo
== Processi primari
=== Fornitura
#metric(
  code: "MPC-2",
  formula: $ 100 dot (Ore "Consuntivate" - Ore "Preventivate") / Ore "Preventivate" $,
  description: "Questa metrica valuta la percentuale di variazione dell'impegno orario complessivo tra preventivo e consuntivo in uno sprint. Il valore è positivo quando viene preventivato un impegno orario inferiore a quello effettivamente svolto, mentre è negativo quando viene preventivato un impegno orario maggiore a quello effettivamente svolto.",
)


= Qualità di prodotto

