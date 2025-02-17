#import "../../lib/common.typ": *

#set text(lang: "it", font: "Hanken Grotesk")
#let versione = [0.5.0]

#metadata[Glossario v#versione] <titolo>

// Prima pagina
#prima-pagina(
  [_Glossario_ \ Versione #versione],
  [],
  [Stato],
  [In redazione],
  [Versione],
  versione,
  [Responsabili],
  [#persona(p.samuele) \ #persona(p.loris)],
  [Verificatori],
  [#persona(p.sara) \ #persona(p.lorenzo) ],
  [Redattori],
  [#persona(p.emanuele) \ #persona(p.marco) \ #persona(p.matteo) ],
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
    vers: "0.5.0",
    date: datetime(day: 17, month: 02, year: 2025),
    autore: p.marco,
    verifica: p.lorenzo,
    descr: "Migliorata la struttura del documento, aggiunta la sezione di Introduzione",
  ),
  (
    vers: "0.4.0",
    date: datetime(day: 25, month: 01, year: 2025),
    autore: p.marco,
    verifica: p.lorenzo,
    descr: "Aggiunte nuove definizioni al glossario.",
  ),
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

= Introduzione
Questo documento nasce con lo scopo di evitare qualsiasi tipo di ambiguità o dubbi riguardanti la terminologia adoperata all'interno dei documenti del progetto. Per questo motivo, vengono di seguito esposte le definizioni dei termini specifici adottando una struttura alfabetica per facilitare la navigazione del documento.\
La nomenclatura utilizzata per evidenziare che una parola, con annessa la sua definizione, è presente all'interno del Glossario viene indicata come segue:
#align(center)[parola#super[G]]
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
