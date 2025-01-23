#import "common.typ": *

/// Dichiara un verbale. Da usare in una show rule in questo modo:
///
/// ```typst
/// show body => verbale(tipo: [interno], /* ... */, body)
/// ```
///
/// - data (datetime): la data della riunione
/// - tipo (content): il tipo di riunione, o "interno" o "esterno"
/// - versioni (list): una lista di versioni; ogni versione è nella forma `(vers: "1.0.0", data: datetime(day: 30, month: 10, year: 2024), autore: p.samuele, descr: "Approvazione documento")`
/// - stato (content): lo stato del documento. Solitamente, è "verificato" o "approvato"
/// - presenze (list): lista di persone (membri della lista di persone `p`)
/// - odg (content): ordine del giorno
/// - disambiguatore (content): un disambiguatore nel caso ci siano più verbali dello stesso tipo nello stesso giorno
#let verbale(
  data: [],
  tipo: [],
  versioni: (),
  stato: [],
  presenze: (),
  odg: [],
  disambiguatore: [],
  body,
) = {
  let titolo = [_Verbale_ #tipo #data.display("[day]/[month]/[year]")]
  let versione = versioni.at(0).vers
  if tipo == [interno] {
    [ #metadata[VI #data.display("[day]-[month]-[year]") v#versione #disambiguatore] <titolo>]
  } else if tipo == [esterno] {
    [ #metadata[VE #data.display("[day]-[month]-[year]") v#versione #disambiguatore] <titolo>]
  } else {
    panic("Tipo di verbale sconosciuto: " + tipo)
  }

  set list(indent: 1em)
  set enum(indent: 1em)
  set document(title: titolo, date: data)
  set text(lang: "it", font: "Hanken Grotesk")
  show link: underline

  // @typstyle off
  prima-pagina(
    titolo,
    {
      v(2em)
      text(14pt, weight: "black", fill: black)[Ordine del giorno]
      v(0.5em)
      text(10pt)[#odg]
    },
    [Stato], stato,
    [Versione], versione,
    [Presenze], grid(align: left, gutter: 8pt, ..presenze.map(persona)),
    [Distribuzione],
    if tipo == [esterno]
    {
      grid(align: left, gutter: 8pt, [_ALimitedGroup_], [M31], prof(p.tullio), prof(p.cardin))
    }
    else
    {
      grid(align: left, gutter: 8pt, [_ALimitedGroup_], prof(p.tullio), prof(p.cardin))
    },
  )

  set heading(numbering: "1.")
  set page(numbering: "1", header: header(titolo), footer: footer())
  counter(page).update(1)
  pagebreak()

  registro-modifiche(versioni)
  pagebreak()

  indice()
  pagebreak()

  body
}

/// Inserisce l'inizio di un verbale interno
#let inizio-verbale-interno(
  modalità,
  data,
  inizio,
  fine,
) = [
  Con il seguente documento si attesta che in data #data
  è stata condotta, in modalità #modalità, una riunione durata dalle ore #inizio alle ore #fine con il seguente ordine del giorno:
]

#let inizio-verbale-esterno(
  modalità,
  data,
  inizio,
  fine,
  azienda,
) = [
  Con il seguente documento si attesta che in data #data
  è stata condotta, in modalità #modalità, una riunione durata dalle ore #inizio alle ore #fine con l'azienda #azienda riguardante i seguenti argomenti:
]

#let approvazione-esterna(
  nome_parte_esterna: [],
) = [
  Si attesta, con la seguente sezione, che il presente verbale è stato approvato da parte dei rappresentanti di #nome_parte_esterna.\
  Tale attestazione è comprovata dalla presenza, qui di seguito, delle firme dei rappresentanti:
]

#let tabella-decisioni(..decisioni) = {
  set align(center)
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (0.5fr, 0.5fr),
    inset: 5pt,
    align: center,
    table.header(
      text(12pt, fill: white)[*ID*],
      text(12pt, fill: white)[*Dettaglio*],
    ),

    ..decisioni.pos().map(x => align(center, x)),
  )
}