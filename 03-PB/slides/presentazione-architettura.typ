#import "../../lib/common.typ": *
#import "../../lib/sleek-slides.typ": *

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
  = Perché microservizi?

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
