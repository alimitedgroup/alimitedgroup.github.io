#import "../../lib/common.typ": *
#import "@preview/cetz:0.3.1": *
#import "@preview/cetz-plot:0.1.0": chart

#set text(lang: "it", font: "Hanken Grotesk")
#set list(indent: 1em)
#set par(justify: true)
#show link: underline
#show ref: underline

#let versione = [0.1.0]
#let nome-documento = [Piano di Qualifica]
#let link-glossario(
  link-text,
) = {
  link("https://alimitedgroup.github.io/glossario%200.1.0")[#link-text]
}
#let link-norme(
  link-text,
) = {
  link("https://alimitedgroup.github.io/norme%20di%progetto%200.1.0")[#link-text]
}

#metadata[Piano di qualifica #versione] <titolo>
#prima-pagina(
  nome-documento + "\nVersione " + versione,
  [],
  [Stato],
  [Redazione],
  [Versione],
  versione,
  [Distribuzione],
  grid(align: left, gutter: 8pt, [_ALimitedGroup_], [M31], prof(p.tullio), prof(p.cardin)),
)

#set heading(numbering: "1.")
#set page(numbering: "1", header: header(nome-documento + " v" + versione), footer: footer())
#counter(page).update(1)

#registro-modifiche((
  (
    vers: "0.1.0",
    date: datetime(day: 5, month: 12, year: 2024),
    autore: p.sara,
    descr: "Redazione documento",
  ),
))
#pagebreak()

#indice()
#pagebreak()