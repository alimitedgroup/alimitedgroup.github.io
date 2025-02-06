#import "../../lib/common.typ": *

#set text(lang: "it", font: "Hanken Grotesk")
#let versione = [0.4.0]

#metadata[Glossario v#versione] <titolo>

// Prima pagina
#prima-pagina(
  [_Glossario_ \ Versione #versione],
  [],
  [Stato],
  [Redazione],
  [Versione],
  versione,
  [Distribuzione],
  grid(align: left, gutter: 8pt, [_ALimitedGroup_], prof(p.tullio), prof(p.cardin)),
)

// Corpo

#set enum(indent: 1em)
#set heading(numbering: none, hanging-indent: 1em)
#set page(numbering: "1", header: header("Glossario" + "\n Versione " + versione), footer: footer())
#counter(page).update(1)

#registro-modifiche((
  (
    vers: "0.3.0",
    date: datetime(day: 09, month: 12, year: 2024),
    autore: p.marco,
    verifica: p.lorenzo,
    descr: "Aggiunte nuove definizioni al glossario.",
  ),
  (
    vers: "0.2.0",
    date: datetime(day: 29, month: 11, year: 2024),
    autore: p.matteo,
    verifica: p.sara,
    descr: "Risolto problema nella pagina di copertina e uniformato header del documento.",
  ),
  (
    vers: "0.1.0",
    date: datetime(day: 07, month: 11, year: 2024),
    autore: p.emanuele,
    verifica: p.lorenzo,
    descr: "Redazione documento.",
  ),
))
#pagebreak()

#indice()
#pagebreak()

#for (letter, words) in yaml("glossario.yml") [
  #heading(letter, level: 1) // Intestazione per ogni lettera

  #for (word, definition) in words [
    #if (word != "") [
      // Lascia vuoto se nessuna definizione da mostrare
      #strong[#list(word)] // Intestazione per ogni parola
      #label(word)
      #definition.replace("\n", "").replace(regex(" +"), " ") // Definizione
    ]
  ]
  #pagebreak()
]
