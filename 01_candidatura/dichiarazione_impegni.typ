// PC 28-10-2024

#import "../lib.typ": *
#show: doc => documento(
  nome: [Dichiarazione impegni],
  data: datetime(day: 29, month: 10, year: 2024),
  regmodifiche: (
    ("0.0.2", "29-10", "Loris Libralato", "-", "Ruoli e ore"),
    ("0.0.1", "28-10", "Loris Libralato", "-", "Creazione struttura documento"),
  ),
  versione: [0.0.2],
  stato: [In redazione],
  doc,
)

= Introduzione
Questo documento include il preventivo del progetto, con il dettaglio delle ore suddivise per ruolo e il relativo costo.

= Impegno
Ogni membro del gruppo si impegna a dedicare al progetto un totale di 92 ore produttive, ripartite equamente tra i seguenti ruoli.

== Individuale

#table(
  columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 1.1em,
  table.header(
    [*Nome*],
    [*Resp*],
    [*Am*],
    [*An*],
    [*Proge*],
    [*Progr*],
    [*Ve*],
    [*Tot*],
  ),

  [Lorenzo Stefani], [0h], [0h], [0h], [0h], [0h], [0h], [92h],
  [Loris Libralato], [0h], [0h], [0h], [0h], [0h], [0h], [92h],
  [Marco Piccoli], [0h], [0h], [0h], [0h], [0h], [0h], [92h],
  [Matteo Schievano], [0h], [0h], [0h], [0h], [0h], [0h], [92h],
  [Samuele Esposito], [0h], [0h], [0h], [0h], [0h], [0h], [92h],
  [Sara Ferraro], [0h], [0h], [0h], [0h], [0h], [0h], [92h],
  [Emanuele Artusi], [0h], [0h], [0h], [0h], [0h], [0h], [92h],
  [*Totale*], [*58h*], [*60h*], [*60h*], [*150h*], [*180h*], [*136h*], [*644h*],
)
#pagebreak()

== Riassunto costi

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 1.1em,
  table.header(
    [*Ruolo*],
    [*Costo Orario*],
    [*Ore*],
    [*Costo*],
  ),

  [Responsabile], [30€/h], [58h], [1740€],
  [Amministratore], [20€/h], [60h], [1200€],
  [Analista], [25€/h], [60h], [1500€],
  [Progettista], [25€/h], [150h], [3750€],
  [Programmatore], [15€/h], [180h], [2700€],
  [Verificatore], [15€/h], [136h], [2040€],
  [*Totale*], [-], [*644h*], [*12930€*],
)

= Ruoli

== Responsabile
Il responsabile sarà particolarmente presente nella fase iniziale per coordinare le attività del gruppo; man mano che il progetto avanzerà, il team acquisirà crescente autonomia, consentendo una riduzione progressiva delle ore dedicate a questo ruolo, che si concentrerà principalmente sulla comunicazione con il proponente e sulla redazione dei verbali.

== Amministratore
Si occupa della gestione dell'infrastruttura delle repository con test e deploy automatici, della piattaforma Google Cloud e del deployment dei relativi microservizi. Supporta inoltre il team nella configurazione degli ambienti di sviluppo e nell'ottimizzazione del workflow. Il suo contributo orario sarà costante per tutta la durata del progetto, con un picco durante il deploy dell'MVP.

== Analista
Essenziale nelle prime fasi del progetto per identificare e chiarire i requisiti funzionali, il monte ore associato a questo ruolo diminuirà con il progredire del lavoro, pur restando attivo per aggiornare o adattare i requisiti in base alle discussioni con il proponente. Questo ruolo è fondamentale, poiché facilita il lavoro successivo di progettisti e programmatori.

== Progettista
Questo ruolo trasforma i requisiti funzionali in un design architetturale, producendo documenti e schemi esplicativi e definendo le scelte tecnologiche. Nel contesto di questo progetto, l'aspetto architetturale è particolarmente rilevante; per questo motivo, abbiamo deciso di assegnare un numero consistente di ore a questa funzione, poiché un design inadeguato potrebbe generare difficoltà significative per i programmatori.

== Programmatore
Il programmatore è responsabile dello sviluppo del software, traducendo il design architetturale in codice funzionante. Collabora strettamente con il progettista per assicurarsi che tutte le funzionalità siano implementate secondo le specifiche. Il suo lavoro è fondamentale per il progresso del progetto e richiede una buona conoscenza delle tecnologie scelte. Il monte ore assegnato a questo ruolo sarà distribuito in modo uniforme durante le varie fasi di sviluppo.

== Verificatore
Il verificatore ha il compito di garantire che il prodotto finale rispetti gli standard di qualità e soddisfi i requisiti funzionali stabiliti. Si occupa di eseguire test approfonditi e revisioni del software, identificando eventuali bug o aree di miglioramento. Questo ruolo è cruciale per assicurare la soddisfazione del cliente e per ridurre al minimo i problemi post-lancio. Il contributo orario di questo ruolo sarà più intenso nelle fasi finali del progetto, quando si svolgeranno i test di integrazione e le verifiche finali prima della consegna.


= Costi
Il costo previsto per la realizzazione del progetto è di *Euro 12.930*.

= Consegna
La data ultima per la consegna del progetto è fissata improrogabilmente al 31 marzo 2025.