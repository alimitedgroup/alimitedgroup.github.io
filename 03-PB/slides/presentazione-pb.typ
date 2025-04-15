#import "../../lib/common.typ": *
#import "../../lib/sleek-slides.typ": *

#let trimmed-img = (path, trim: (:), alt: none) => context {
  let img = image(path)
  // Get dimensions of the source image
  let dims = measure(img)

  layout(size => {
    let left = trim.at("left", default: 0.0%)
    let right = trim.at("right", default: 0.0%)

    let top = trim.at("top", default: 0.0%)
    let bottom = trim.at("bottom", default: 0.0%)

    let width-rel-trimmed = 100.0% - left - right
    let height-rel-trimmed = 100.0% - top - bottom

    let width-source-trimmed = dims.width * width-rel-trimmed
    let height-source-trimmed = dims.height * height-rel-trimmed

    // Aspect ratio h/w of the layout (available space)
    let aspect-height-layout = size.height / size.width
    // Aspect ratio h/w of the trimmed image
    let aspect-height-trimmed = height-source-trimmed / width-source-trimmed

    let width-final-trimmed = none
    let height-final-trimmed = none

    // Compute final size of trimmed image
    // by expanding along dimension that first hits the layout constraints
    if aspect-height-layout >= aspect-height-trimmed {
      // Expand width of image
      width-final-trimmed = size.width
      height-final-trimmed = aspect-height-trimmed * width-final-trimmed
    } else {
      // Expand height of image
      height-final-trimmed = size.height
      width-final-trimmed = size.height / aspect-height-trimmed
    }

    // Compute the hypothetical size of the image without trimming
    let width-final-untrimmed = width-final-trimmed / float(width-rel-trimmed)
    let height-final-untrimmed = height-final-trimmed / float(height-rel-trimmed)

    box(
      clip: true,
      inset: (
        top: -(top * height-final-untrimmed),
        bottom: -(bottom * height-final-untrimmed),
        left: -(left * width-final-untrimmed),
        right: -(right * width-final-untrimmed),
      ),
      // TODO: Handle explicit sizing according to a parameter (e.g. don't scale over DPI limits)
      image(path, width: width-final-untrimmed, height: height-final-untrimmed, alt: alt),
    )
  })
}

#show: it => sleek-slides(
  title: "Presentazione PB",
  date: datetime(day: 16, month: 4, year: 2025),
  it,
)

#slide[
  = Stato del prodotto rispetto alle attese (1/2)

  #v(1em)

  #grid(
    columns: (1fr, 0.1fr, 1fr),
    image("../../assets/sviluppo-web-web-design.png"),
    [],
    [
      #v(1.3em)
      - Resa facoltativa la creazione di un client;
      #v(0.3em)
      - Implementate funzionalità chiave, soddisfatti i requisiti obbligatori;
      #v(0.3em)
      - Rimodulazione positiva.
    ],
  )
]

#slide[
  = Stato del prodotto rispetto alle attese (2/2)

  #box(width: 100%, height: 85%)[
    #place(bottom + right, image("../../assets/elenco-icona-simbolo-carta.png", width: 29%))

    #v(2.3em)
    - Raggiunto code coverage del 76%
    #v(0.3em)
    - Per raggiungere lo stato dell'arte bisognerebbe tendere al 100%
    #v(0.3em)
    - Due fattori hanno determinato una diminuzione: \
      → Progetto complesso, molte componenti \
      → Team di sviluppo piccolo
  ]
]

#slide[
  = Esito del colloquio con il Prof. Cardin

  #v(1em)

  - La presentazione è stata troppo lunga, lasciando scarso tempo per le domande.
  - Gli esempi mostrati al professore non sono stati adeguatamente scelti.

  Ci sono stati fatti notare alcuni errori:

  - Non sempre è stato ben applicato il principio della _"separation of concerns"_;
  - Specifica tecnica dettagliata, tranne per l'interazione tra componenti.
]

#slide[
  = Riscontro del proponente sull'MVP

  #v(0em)

  #grid(columns: (1fr, 42%), inset: 10pt)[
    #v(2em)
    - Positivo, il prodotto sviluppato ha raggiunto le aspettative.

    #v(1.0em)
    - Nei test di accettazione abbiamo fatto troppo affidamento sull'abilità "tecnica" del proponente.
  ][
    #v(1.3em)
    #align(horizon, image("../../assets/Team-spirit-bro.png"))
  ]
]

#slide[
  = Difficoltà dell'ultimo periodo

  #v(1em)

  #grid(columns: (43%, 1fr))[
    #align(horizon, image("../../assets/Pair programming-rafiki.svg"))
  ][
    #v(2em)
    - Rischio tecnologico \
      -> contrastato con pair programming;

    #v(2em)
    - Tempistica limitata \
      -> riunioni settimanali per suddividerci il lavoro e dettare i ritmi.
  ]

]

#slide[
  = Miglioramenti nel Way of Working

  #box(height: 73%, width: 100%)[
    - Maggiore comunicazione con l’azienda

    #v(-0.3em)
    - Riunioni interne più frequenti \
      → Miglior gestione del carico di lavoro \
      → Migliore intervento sui problemi

    #v(-0.3em)
    - Migliore stima delle ore per task \
      → Allocazione più efficace delle risorse

    #v(-0.3em)
    - Aumento della produttività \
      → 1 ora produttiva ogni 1,2 ore reali

    #v(-0.3em)
    - Uso del pair programming \
      → Condivisione delle competenze
    #place(right + horizon, image("../../assets/riunione-bella.png", width: 44%))
  ]
]

#slide[
  = Autovalutazione dell'Apprendimento

  - Apprendimento di Golang e NATS

  - Adozione di architetture avanzate \
    → Architettura esagonale \
    → Microservizi

  - Lo sviluppo è solo una parte del lavoro \
    → Fondamentale una buona analisi e progettazione

  - Miglioramento nel lavoro di gruppo \
    → Pianificazione e gestione delle risorse \
    → Valorizzazione delle competenze eterogenee del team
]

#slide[
  = Consuntivo a finire

  #show table.cell: cl => if cl.x == 0 and cl.y != 0 {
    align(left, cl)
  } else {
    align(center, cl)
  }

  #set text(fill: black)

  #table(
    fill: (x, y) => if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 0.4em,
    stroke: black,
    table.header(
      [*Ruolo*],
      [*Resp.*],
      [*Amm.*],
      [*An.*],
      [*Proge.*],
      [*Progr.*],
      [*Ver.*],
      [*Tot.*],
    ),

    [Loris Libralato], [8], [9], [8], [21], [29], [15], [90],
    [Samuele Esposito], [5], [9], [10], [18], [30], [18], [90],
    [Sara Ferraro], [5], [14], [9], [21], [24], [17], [90],
    [Lorenzo Stefani], [5], [12], [9], [18], [27], [18], [89],
    [Marco Piccoli], [6], [13], [21], [10], [20], [20], [90],
    [Matteo Schievano], [5], [12], [24], [14], [20], [17], [92],
    [Emanuele Artusi], [7], [12], [10], [20], [23], [18], [90],
    [*Totale*], [*41*], [*81*], [*91*], [*122*], [*173*], [*123*], [*631*],
  )
]

#slide[
  = Budget a finire

  #let euro(n) = {
    str(n) + "€"
  }
  #let ore(n) = str(n)

  #set text(fill: black)

  #show table.cell: cl => if cl.x == 0 and cl.y != 0 {
    align(left, cl)
  } else {
    align(center, cl)
  }

  #align(
    center,
    table(
      columns: 5,
      inset: 0.5em,
      fill: (x, y) => if (calc.gcd(y, 2) == 2) {
        rgb("#bf7fbf")
      } else {
        rgb("#d8b2d8")
      },
      [*Ruolo*], [*Costo*], [*Ore*], [*Ore rimanenti*], [*Budget rimanente*],
      [Responsabile], euro(41 * 30), ore(41), ore(0), euro(0),
      [Amministratore], euro(81 * 20), ore(81), ore(0), euro(0),
      [Analista], euro(91 * 25), ore(91), ore(2), euro(2 * 25),
      [Progettista], euro(122 * 25), ore(122), ore(5), euro(5 * 25),
      [Programmatore], euro(173 * 15), ore(173), ore(4), euro(4 * 15),
      [Verificatore], euro(123 * 15), ore(123), ore(2), euro(2 * 15),
      [*Totale*], strong(euro(12615)), strong(ore(631)), strong(ore(13)), [*265€ (+ 50€)*],
    ),
  )
]
