#import "/lib/common.typ": *

#{
  let nome = "Analisi dei requisiti"
  let versioni = (
    (
      vers: "0.0.1",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.loris,
      // verifica: p.,
      descr: "Creazione struttura e template documento",
    ),
  )
  let data = datetime(day: 12, month: 11, year: 2024)
  let stato = "Redazione"

  let versione = versioni.at(0).vers
  [ #metadata[#nome #versione] <titolo>]

  set list(indent: 1em)
  set enum(indent: 1em)
  set document(title: nome, date: data)
  set text(lang: "it", font: "Hanken Grotesk")
  show link: underline

  // @typstyle off
  prima-pagina(
    nome,
    [Stato], stato,
    [Versione], versione,
    [Distribuzione], grid(align: left, gutter: 8pt, [_ALimitedGroup_], prof(p.tullio), prof(p.cardin)),
  )

  set heading(numbering: "1.")
  set page(numbering: "1", header: header(nome), footer: footer())
  counter(page).update(1)
  pagebreak()

  registro-modifiche(versioni)
  pagebreak()

  indice()
  pagebreak()
}

= Introduzione

#lorem(10)

== Scopo del documento

#lorem(10)

== Scopo del prodotto

#lorem(10)