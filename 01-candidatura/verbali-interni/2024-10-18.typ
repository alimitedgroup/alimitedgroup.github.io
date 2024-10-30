// VI 18-10-2024

#import "../../lib.typ": *
#show: doc => verbale(
  regmodifiche: (
    ("1.0.0", "30-10", "Samuele Esposito", "-", "Approvazione documento"),
    ("0.1.0", "22-10", "Marco Piccoli", "-", "Modifica e verifica documento"),
    ("0.0.2", "21-10", "Matteo Schievano", "-", "Redazione documento"),
    ("0.0.1", "21-10", "Matteo Schievano", "-", "Creazione struttura e template documento"),
  ),
  data: datetime(day: 18, month: 10, year: 2024),
  versione: [1.0.0],
  stato: [Approvato],
  presenze: (
    "Emanuele Artusi",
    "Lorenzo Stefani",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Samuele Esposito",
    "Sara Ferraro",
  ),
  odg: [Seconda riunione di _ALimitedGroup_: vengono discusse le tecnologie da utilizzare durante tutto il progetto, viene confermato quanto discusso nella precedente riunione],
  doc,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*18 Ottobre 2024*], [*17.00*], [*19.30*])

+ Conferma delle decisioni intraprese durante la riunione del 15 Ottobre 2024
+ Discussione sul repository GitHub dedicato alla documentazione
+ Ulteriori discussioni sulla redazione dei verbali
+ Discussione aggiuntiva sui capitolati
#pagebreak()

= Dettaglio riunione

== Conferma delle decisioni

Durante la riunione Lorenzo Stefani si è detto d'accordo sulle decisioni intraprese nella riunione svoltasi in data 15 Ottobre 2024.

Sono dunque confermate le decisioni descritte al capitolo 2 sezioni 1, 2, 3, 4 e 5 del verbale denominato 2024-10-15.pdf.

In merito alla sezione 6 del capitolo 2 si veda la @capitolati del presente documento.

== Discussione sul _repository GitHub_ dedicato alla documentazione

Durante la riunione è stato deciso di realizzare un _repository_ GitHub dedicato a raccogliere la documentazione relativa al progetto didattico. \
È stato altresì deciso di realizzare un sito web che sarà hostato mediante l'utilizzo di _GitHub Pages_.

Tale _repository_ dovrà in conclusione contenere:

- i _file .typ_ riguardanti la struttura dei verbali
- i _file .typ_ relativi ai singoli verbali
- ulteriori _file_ a supporto dei verbali
- tutti i _file_ relativi al sito web

== Ulteriori discussioni sulla redazione dei verbali

È stato deciso, dopo alcune prove realizzate dal 15 Ottobre 2024 al 17 Ottobre 2024, di utilizzare il linguaggio Typst per la redazione dei documenti.

La struttura dei verbali dovrà contenere, nel seguente ordine:

+ Immagine di copertina formata da logo del gruppo, tipologia di documento (verbale), data svolgimento della riunione, stato del documento, versione, presenti e informazioni riguardanti la distribuzione;
+ Registo delle modifiche, formato da una tabella riportante, per ogni modifica, nuova versione del documento, data della modifica, autore, ruolo attuale dell'autore e descrizione dei cambiamenti;
+ Indice dei contenuti;
+ Capitolo relativo all'informazioni generali della riunone tra cui data, modalità di svolgimento (in presenza o virtuale, da intendersi mediante piattaforma Discord come stabilito dalla sezione 4 del capitolo 2 del verbale nominato 2024-10-15.pdf) e ordine del giorno;
+ riassunto di quanto discusso per ogni punto dell'ordine del giorno;
+ Esiti della riunione.

== Discussione aggiuntiva sui capitolati <capitolati>

Nell'ultima parte della riunione è stato discusso l'interessamento del gruppo verso altri capitolati.\
Il gruppo ha preso in maggiore considerazione il seguente capitolato:\
#align(center)[ C4 = *NearYou - Smart custom advertising platform*] avente come proponente *SyncLab*.

Dopo il sorgere di alcuni dubbi, il gruppo ha rivalutato la possibilità di aderire al capitolato \
#align(center)[C2 = *Vimar GENIALE*] avente come proponente *VIMAR*, perciò si è deciso di ridiscutere nelle prossime riunioni di tale capitolato per un'analisi più approfondita.

= Esiti della riunione

Il gruppo conclude la riunione stabilendo la necessità di analizzare in maniera asincrona i capitolati alla ricerca di eventuali domande da proporre ad eventuali incontri con altre aziende proponenti.

Decide altresì di realizzare alcuni primi test riguardanti il _repository_ dei documenti e il sito web.

In ultima istanza, a seguito delle decisioni intraprese in merito alla struttura dei verbali, sarà redatto in maniera definitiva il verbale della riunione svolta il 15 Ottobre 2024.