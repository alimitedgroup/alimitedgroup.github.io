#import "common.typ": *

/// Dichiara un documento. Da usare in una show rule in questo modo:
///
/// ```typst
/// show body => documento(tipo: [interno], /* ... */, body)
/// ```
///
/// - data (datetime): la data aggiornata del documento
/// - tipo (content): il tipo di documento, o "interno" o "esterno"
/// - versioni (list): una lista di versioni; ogni versione è nella forma `(vers: "1.0.0", data: datetime(day: 30, month: 10, year: 2024), autore: p.samuele, descr: "Approvazione documento")`
/// - stato (content): lo stato del documento. Solitamente, è "verificato" o "approvato"
#let documento(
  nome: [],
  data: [],
  tipo: [],
  versioni: (),
  stato: [],
  body,
) = {
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

  body
}
