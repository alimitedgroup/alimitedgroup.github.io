#import "@preview/numbly:0.1.0": numbly
#import "@preview/touying:0.5.5": *
#import themes.dewdrop: *

#metadata[Presentazione tecnologie] <titolo>
#let date = datetime(day: 6, month: 2, year: 2025);

#set text(font: "Inria Sans", size: 25pt)

#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  navigation: "mini-slides",
  config-info(
    title: [Presentazione tecnologie],
    subtitle: [ALimitedGroup],
    author: [Emanuele Artusi, Samuele Esposito, Sara Ferraro, Loris Libralato, \
      Marco Piccoli, Matteo Schievano, Lorenzo Stefani],
    date: date,
    institution: [Ingegneria del Software],
    logo: emoji.school,
  ),
)

#title-slide()

== Sistema di Gestione di un Magazzino Distribuito

- Capitolato C6: Sistema di Gestione di un Magazzino Distribuito
- Garantire interoperabilità tra magazzini: ordini in uscita o ingresso,
  ordini tra magazzini (trasferimenti), notificare se ordini vanno sotto soglia
- Gestione utenti (aggiunta, rimozione e promozione ruolo)
- Consigli ML sono facoltativi

== Tecnologie utilizzate (1/2)

- Go (linguaggio di programmazione)
  - Alternative considerate: TypeScript
  - Scelto grazie alla sua diffusione nel nostro ambito (microservizi)
#v(1em)
- NATS (message broker)
  - Alternative considerate: Kafka, RabbitMQ
  - Può essere deployato "on the edge"
  - Consente di sviluppare test in maniera più semplice

== Tecnologie utilizzate (2/2)

- Docker
  - Permette di isolare i servizi, deployarli in maniera affidabile
  - Riproducibilità degli ambienti di sviluppo
#v(1em)
- Observability stack (Grafana, Prometheus, Loki, Mimir)
  - Alternative considerate: Elastic Stack per Observability
  - Permette di visualizzare log e metriche relative ai microservizi

#set text(weight: "bold")
#focus-slide[Demo]
