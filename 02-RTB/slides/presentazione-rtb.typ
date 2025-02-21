#import "../../lib/common.typ": *

#set page(paper: "presentation-16-9", margin: 0pt)
#set text(fill: white, size: 24pt, font: "Hanken Grotesk")

#metadata("Presentazione RTB") <title>

#let slide(body) = {
  body

  metadata("Utile solo per la pagina")
  place(bottom + left, text(size: 16pt)[#context {counter(metadata).get().at(0)} / 10])

  pagebreak(weak: true)
}


#let title = [
  #text(size: 50pt, weight: "black")[Presentazione RTB]
  #text(size: 25pt)[Gruppo n° 8 - A.A. 2024/2025]

  #text(size: 30pt, weight: "bold")[ALimitedGroup]

  #text(size: 20pt)[21/02/2025]
]

// Immagine torre archimede
#place(top, box(image("../../assets/ta.png", width: 100%)))

// Gradient inferiore
#place(
  bottom,
  dy: 25pt,
  skew(
    rect(
      fill: gradient.linear(rgb("#3b1763"), rgb("#af252c"), angle: 135deg),
      width: 100%,
      height: 62%,
    ),
    ay: -1.5deg,
  ),
)

// Titolo
#place(
  center + bottom,
  rect(align(center + top, title), stroke: none, width: 58%, height: 55%),
  dy: 1.8em,
)

// #place(bottom + right, image("../../assets/altd_black.png", height: 60%), dy: 4em, dx: 1em)
#place(bottom + left, image("../../assets/altd_black.png", height: 32.5%), dx: 1em, dy: -0.6em)
#place(bottom + right, image("../../assets/unipd_white.svg", height: 30%), dx: -1em, dy: -0.8em)

#set page(
  margin: 1.5em,
  background: rect(
    width: 100%,
    height: 100%,
    fill: gradient.linear(rgb("#3b1763"), rgb("#af252c"), angle: 135deg),
  ),
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
