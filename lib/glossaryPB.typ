#import "common.typ": *
#let glossario(
  data: [],
  versioni: (),
  versione: [],
  stato: [],
  responsabile: (),
  verificatore: (),
  redattori: (),
  body,
) = {
  [#metadata[Glossаrio #versione] <titolo>]
  set text(lang: "it", font: "Hanken Grotesk")
  prima-pagina(
    [_Glossario_ \ Versione #versione],
    [],
    [Stato],
    stato,
    [Versione],
    versione,
    [Responsabili],
    grid(align: left, gutter: 8pt, ..responsabile.map(persona)),
    [Verificatori],
    grid(align: left, gutter: 8pt, ..verificatore.map(persona)),
    [Redattori],
    grid(align: left, gutter: 8pt, ..redattori.map(persona)),
    [Distribuzione],
    grid(align: left, gutter: 8pt, [_ALimitedGroup_]),
  )

  set enum(indent: 1em)
  set heading(numbering: none, hanging-indent: 1em)
  set page(numbering: "1", header: header("Glossario" + "\n Versione " + versione), footer: footer())
  counter(page).update(1)
  pagebreak()

  registro-modifiche(versioni)
  pagebreak()

  indice()
  pagebreak()

  body

  for (letter, words) in yaml("../03-PB/documenti-interni/glossario.yml") [
    #heading(letter, level: 1) // Intestazione per ogni lettera

    #for (word, definition) in words [
      #if (word != "") [
        // Lascia vuoto se nessuna definizione da mostrare
        #v(0.5em)
        #strong[#list(word)] // Intestazione per ogni parola
        #label(word)
        #definition.replace("\n", "").replace(regex(" +"), " ") // Definizione
      ]
    ]
    #if (letter != "Z") [
      #pagebreak()
    ]
  ]
}
