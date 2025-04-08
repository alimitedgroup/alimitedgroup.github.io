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
  title: "Presentazione Architettura",
  date: datetime(day: 9, month: 4, year: 2025),
  it,
)

#slide[
  = Ripasso capitolato

  #v(1.3em)
  - Capitolato C6: Sistema di Gestione di un Magazzino Distribuito
  #v(0.3em)
  - Garantire interoperabilità tra magazzini: ordini,
    ordini tra magazzini (trasferimenti),
    notificare se stock scende di soglia
  #v(0.3em)
  - Accesso al Sistema mediante chiamate API
  #v(0.3em)
  - Operazione ammissibile solo con token valido e ruolo scelto corretto
]

#slide[
  = Architettura di deployment: Microservizi

  #v(1.3em)
  - L'idea iniziale del capitolato spinge molto verso questa opzione;
  #v(0.3em)
  - Maggiore affidabilità;
  #v(0.3em)
  - Migliore lavoro asincrono, con decomposizione per sottodominio;
  #v(0.3em)
  - Più facile fare _zero downtime deployment_;
  #v(0.3em)
  - Possibilità di distribuzione geografica;
]

#slide[
  = Microservizi sviluppati

  #align(
    center,
    // questa box serve per aggiungere margine all'immagine
    box(
      height: 80%,
      fill: white,
      inset: 0.5em,
      image("../../assets/drawio/microservizi_Pagina1.svg"),
    ),
  )
]

#slide[
  = Architettura Esagonale (1/2)
  #v(0.2em)

  - Abbiamo scelto il pattern dell'Architettura Esagonale per isolare la business logic dalle componenti esterne.
  #v(0.1em)
  - La comunicazione tra classi avviene tramite interfacce, iniettate nei costruttori, seguendo il principio della Dependency Injection.
  #v(0.1em)
  - Questo approccio rende il sistema facilmente testabile: la business logic può essere verificata in modo indipendente.
]

#slide[
  = Architettura Esagonale (2/2)
  #v(0.2em)

  - Le porte d'ingresso e le porte d'uscita definiscono i confini della business logic.
  #v(0.1em)
  - Questa architettura logica ci permette di cambiare tecnologie senza stravolgere la business logic del servizio
  #v(0.1em)
  - In un contesto a microservizi, l'architettura esagonale aumenta il disaccoppiamento dei singoli servizi, facilitando l'evoluzione del sistema e la sostituzione di componenti tecnologiche.
]

#slide[
  = UML Warehouse Microservice (1/4)

  #box(trimmed-img("../../assets/warehouse/warehouse.png"), width: 93%)
]

#slide[
  = UML Warehouse Microservice (2/4)

  #box(
    trimmed-img(
      "../../assets/warehouse/warehouse.png",
      trim: (left: 15%, right: 44%, top: 10%, bottom: 55%),
    ),
    width: 95%,
  )
]

#slide[
  = UML Warehouse Microservice (3/4)

  #box(
    trimmed-img(
      "../../assets/warehouse/warehouse.png",
      trim: (left: 17.4%, right: 43%, top: 33%, bottom: 23%),
    ),
    width: 83%,
  )
]

#slide[
  = UML Warehouse Microservice (4/4)

  #box(
    trimmed-img(
      "../../assets/warehouse/warehouse.png",
      trim: (left: 35.4%, right: 43%, top: 63.5%, bottom: 2%),
    ),
    width: 56%,
  )
]

#slide[
  = UML Order Microservice (1/4)

  #box(
    trimmed-img("../../assets/order/General.png"),
    width: 79%,
  )
]

#slide[
  = UML Order Microservice (2/4)

  #box(
    trimmed-img(
      "../../assets/order/General.png",
      trim: (left: 44.5%, right: 16%, top: 11.5%, bottom: 52.8%),
    ),
    width: 79%,
  )
]

#slide[
  = UML Order Microservice (3/4)

  #box(
    trimmed-img(
      "../../assets/order/General.png",
      trim: (left: 44.5%, right: 09%, top: 38.8%, bottom: 24%),
    ),
    width: 89%,
  )
]

#slide[
  = UML Order Microservice (4/4)

  #box(
    trimmed-img(
      "../../assets/order/General.png",
      trim: (left: 45.2%, right: 09%, top: 70%, bottom: 0%),
    ),
    width: 100%,
  )
]

#slide[
  = Pattern - Dependency Injection

  #v(0.2em)
  - Molti componenti del Sistema possiedono dipendenze verso altri componenti (esempio, hanno un’istanza di una struttura come attributo)
  #v(0.1em)
  - Per renderle note e non nascoste abbiamo reso note queste dipendenze inserendole come parametri obbligatori nelle funzioni costruttrici
  #v(0.1em)
  - Abbiamo utilizzato il framework fx di Uber per gestire le dipendenze
  #v(0.1em)
  - L’utilizzo di un framework ci ha aiutato nella realizzazione dei test e ha semplificato il modo in cui le istanze necessarie vengono fornite
]

#slide[
  = Pattern - Object Adapter

  #v(1.3em)
  - L’utilizzo dell’architettura esagonale ha reso necessario l’utilizzo di Adapter specie per mettere in collegamento la business logic con la persistence logic
  #v(1.2em)
  - Gli adapter utilizzati in questo modo implementano delle interfacce della business logic e possiedono un attributo della struttura che ha funzioni della persistence logic
]

#slide[
  = Pattern - Strategy (1/2)

  #v(1.3em)
  - Attualmente il Sistema non possiede un’autenticazione con nome utente e password, ma fornisce un token di accesso se il ruolo richiesto è valido
  - L’azienda proponente, #M31, ha però richiesto di fare attenzione a questo aspetto in quanto l’autenticazione deve essere facilmente migliorabile in futuro
]

#slide[
  = Pattern - Strategy (2/2)

  #v(1.3em)
  - Abbiamo dunque realizzato un’interfaccia IauthenticateUserStrategy che fa implementare un metodo che, dati i dati di accesso forniti, ne valuti la correttezza
  - È stata una scelta tra questo pattern e il Template Method: il Template Method è tuttavia utile solo se tutti gli algoritmi di autenticazione hanno gli stessi passaggi ma differiscono per il comportamento di almeno uno di essi
  - Nel nostro caso, questo può non essere vero specie aggiungendo “livelli” di sicurezza
]
