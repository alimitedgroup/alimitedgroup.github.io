#import "../../lib/common.typ": *
#import "../../lib/sleek-slides.typ": *

#show: it => sleek-slides(
  title: "Tecnologie",
  date: datetime(day: 6, month: 2, year: 2025),
  it,
)

#slide[
  = Sistema di Gestione di un Magazzino Distribuito

  #v(1.3em)
  - Capitolato C6: Sistema di Gestione di un Magazzino Distribuito
  #v(0.3em)
  - Garantire interoperabilità tra magazzini: ordini,
    ordini tra magazzini (trasferimenti), notificare se ordini vanno sotto soglia
  #v(0.3em)
  - Gestione utenti (aggiunta, rimozione e promozione ruolo)
  #v(0.3em)
  - Consigli ML sono facoltativi
]

#slide[
  == Tecnologie utilizzate (1/2)

  #v(1.3em)
  - Go (linguaggio di programmazione)
    - Alternative considerate: TypeScript
    - Scelto grazie alla sua diffusione nel nostro ambito (microservizi)
  #v(1em)
  - NATS (message broker)
    - Alternative considerate: Kafka, RabbitMQ
    - Può essere deployato "on the edge"
    - Consente di sviluppare test in maniera più semplice
]

#slide[
  == Tecnologie utilizzate (2/2)

  #v(1.3em)
  - Docker
    - Permette di isolare i servizi, deployarli in maniera affidabile
    - Riproducibilità degli ambienti di sviluppo
  #v(1em)
  - Observability stack (Grafana, Prometheus, Loki, Mimir)
    - Alternative considerate: Elastic Stack per Observability
    - Permette di visualizzare log e metriche relative ai microservizi
]
