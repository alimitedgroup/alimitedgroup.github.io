#import "../../lib/common.typ": *
#metadata[Glossario] <titolo>

#set text(lang: "it", font: "Hanken Grotesk")

// Prima pagina
#prima-pagina(
  "Glossario",
  [Stato], [Redazione],
  [Versione], [0.0.1],
  [Distribuzione], grid(align: left, gutter: 8pt, [_ALimitedGroup_], prof(p.tullio), prof(p.cardin)),
)

// Corpo
#set heading(numbering: "1.")
#set page(numbering: "1", header: header("Glossario"), footer: footer())
#counter(page).update(1)

#registro-modifiche((
  (vers: "0.0.1", 
  date: datetime(day: 07, month: 11, year: 2024),
  autore: p.emanuele,
  descr: "Redazione documento"),
))
#pagebreak()

#indice()
#pagebreak()

#for (letter, words) in yaml("glossario.yml") [
  #heading(letter, level: 1) // Intestazione per ogni lettera

  #for (word, definition) in words [
    #if (word != "") [  // Lascia vuoto se nessuna definizione da mostrare
      #heading(word, level: 2) // Intestazione per ogni parola
      #label(word)
      #definition.replace("\n", "").replace(regex(" +"), " ") // Definizione
    ] 
  ]
  #pagebreak()
]
