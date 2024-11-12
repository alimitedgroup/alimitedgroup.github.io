#import "/lib/documento.typ": *

#show: doc => documento(
  nome: "Analisi dei requisiti",
  data: datetime(day: 12, month: 11, year: 2024),
  versioni: (
    (
      vers: "0.0.1",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.loris,
      // verifica: p.,
      descr: "Creazione struttura e template documento",
    ),
  ),
  stato: "Redazione",
  doc,
)

= Introduzione

#lorem(10)

== Scopo del documento

#lorem(10)

== Scopo del prodotto

#lorem(10)