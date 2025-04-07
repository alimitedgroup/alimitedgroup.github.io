#import "../../lib/common.typ": *
#import "../../lib/sleek-slides.typ": *

#show: it => sleek-slides(
  title: "Presentazione RTB",
  date: datetime(day: 21, month: 2, year: 2025),
  it,
)

#slide[
  == Aggiornamento comprensione obiettivi del capitolato (1/2)

  #v(1.2em)

  - Analisi dei Requisiti: abbiamo trovato molti requisiti impliciti;
  #v(1.2em)

  #figure(
    table(
      align: horizon,
      stroke: white,
      columns: 4,
      inset: 8pt,
      table.header(
        [#text(fill: white)[*Tipologia*]],
        [#text(fill: white)[*Obbligatori*]],
        [#text(fill: white)[*Desiderabili*]],
        [#text(fill: white)[*Opzionali*]],
      ),

      [Funzionali], [170], [22], [0],
      [Qualità], [9], [1], [0],
      [Vincolo], [5], [0], [0],
    ),
  )
  #v(1.2em)

  - Alcuni requisiti ora sono facoltativi (e.g. notifiche _machine learning_).
]

#slide[
  == Aggiornamento comprensione obiettivi del capitolato (2/2)
  #set par(leading: 1em)
  #v(1em)
  - Forte rischio tecnologico: poca esperienza del gruppo nelle tecnologie scelte;

  #align(
    center,
    grid(
      columns: 2,
      inset: 0.8em,
      image("../../assets/nats.png", height: 20%), image("../../assets/golang.svg"),
    ),
  )
  - Sfida interessante: sincronizzare i compiti tra microservizi dello stesso tipo.
]

#slide[
  == Modifiche migliorative (1/3)

  #v(2em)

  - Ristrutturate Norme di Progetto;

  #v(1em)

  - Ristrutturata Analisi dei Requisiti, divisa tra _frontend_ e _backend_;

  #v(1em)

  - Aggiunta di una versione del Glossario fruibile direttamente tramite _browser_.
]

#slide[
  == Modifiche migliorative (2/3)

  - Ristrutturato sito.

  #align(
    center,
    grid(
      columns: 2,
      gutter: 1em,
      image("../../assets/sito_vecchio.jpg", height: 75%), image("../../assets/sito_nuovo.png", height: 75%),
    ),
  )
]

#slide[
  == Modifiche migliorative (3/3)
  #v(2em)

  - Organizzazione più specifica;
  #v(1em)

  - _Pull request_ più brevi.
]

#slide[
  == Autovalutazione del lavoro svolto

  #set par(leading: 1.3em)

  #v(2em)

  - Generalmente, il gruppo è soddisfatto;

  #v(1em)

  - Ognuno ha contribuito al raggiungimento della _Requirements and Technology Baseline_;

  #v(1em)

  - Abbiamo avuto poche riunioni con #M31.
]

#slide[
  == Esito della riunione con il Prof. Cardin

  #v(2em)

  - Dopo un'iniziale fase di disaccordo, le nostre scelte sono state ritenute ponderate e giustificate;

  #v(1em)

  - Sono stati segnalati alcuni piccoli errori sul documento di Analisi dei Requisiti, che abbiamo già iniziato a correggere;

  #v(1em)

  - Abbiamo ricevuto il *semaforo verde*.
]

#slide[
  == Consuntivo di periodo allo stato attuale
  #v(2em)
  #figure(image("../../assets/consuntivo.png", width: auto))
]

#slide[
  == Preventivo a finire
  #v(2em)
  #figure(image("../../assets/preventivo.png", width: auto))
]
