/// Crea un verbale
///
/// Parametri:
/// - odg: ordine del giorno
/// - data: la data della riunione, nella forma YYYY-MM-DD
/// - tipo: tipologia di verbale: "interno" o "esterno"
/// - presenze: array di nomi e cognomi dei presenti
/// - versione: attuale versione del documento
/// - stato: attuale stato del documento (approvato oppure no)
/// - regmodifiche: lista di modifiche, nella forma
/// ```typst
/// regmodifiche: (
///   ("0.0.1", "2024-10-15", "Samuele Esposito", "-", "Creazione struttura e template documento"),
///   ("0.0.1", "2024-10-15", "Samuele Esposito", "-", "Creazione struttura e template documento"),
///   ("0.0.1", "2024-10-15", "Samuele Esposito", "-", "Creazione struttura e template documento"),
/// )
/// ```
#let verbale(
  data: [],
  tipo: [interno],
  odg: [],
  presenze: (),
  versione: [],
  stato: [],
  distribuzione: ([_ALimitedGroup_], "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  regmodifiche: (),
  contenuto,
) = {
  set text(lang: "it")
  set list(indent: 1em)
  set enum(indent: 1em)

  // Prima pagina
  set align(center)
  set text(font: "Times New Roman")
  image("assets/altd.png", height: 7cm)
  v(4em)
  text(24pt, weight: "black", fill: black)[_Verbale_ #tipo #data]
  v(2.25em)

  show grid.cell.where(x: 0): cell => align(right, cell)
  show grid.cell.where(x: 1): cell => align(left, cell)
  set text(11pt)
  box(
    width: 80%,
    grid(
      columns: (1fr, 1fr),
      grid.vline(x: 1),
      inset: 8pt,
      [Stato], stato,
      [Versione], versione,
      [Presenti], grid(align: left, gutter: 8pt, ..presenze),
      [Distribuzione], grid(align: left, gutter: 8pt, ..distribuzione),
    ),
  )

  v(2em)
  text(14pt, weight: "black", fill: black)[Ordine del giorno]
  v(0.5em)
  text(10pt)[#odg]

  // Setup header, footer, contatore pagina
  set page(
    numbering: "1",
    header: [
      #grid(
        columns: (1fr, 1fr),
        align(left)[_ALimitedGroup_], align(right)[_Verbale_ #tipo #data],
      )
      #line(length: 100%)
    ],
    footer: [
      #set align(center)
      #line(length: 100%)
      #context [
        Pagina #counter(page).display(page.numbering) di #counter(page).final().first()
      ]
    ],
  )
  set align(left)
  set heading(numbering: "1.")
  counter(page).update(1)
  pagebreak()

  // Registro delle modifiche
  text(16pt, weight: "black", fill: black)[Registro delle Modifiche]
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (auto, auto, 0.5fr, 0.5fr, 1fr),
    stroke: none,
    inset: 5pt,
    align: center,
    table.header(
      text(12pt, fill: white)[*Vers.*],
      text(12pt, fill: white)[*Data*],
      text(12pt, fill: white)[*Autore*],
      text(12pt, fill: white)[*Ruolo*],
      text(12pt, fill: white)[*Descrizione*],
    ),
    ..regmodifiche.flatten()
  )
  pagebreak()

  //Indice
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice #v(3em)], indent: auto)
  pagebreak()

  // Resto del documento
  contenuto
}

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