#let slide(body) = {
  body

  metadata("Utile solo per la pagina")

  set text(size: 16pt)
  place(
    bottom,
    grid(
      columns: (0.5fr, 1fr, 0.5fr),
      align(
        left,
        context [
          #counter(metadata).get().at(0)
          \/
          #counter(metadata).final().at(0)
        ],
      ),
      align(center, context [#document.title - #document.date.display("[day]/[month]/[year]")]),
      align(right)[ALimitedGroup],
    ),
  )

  pagebreak(weak: true)
}

#let title-slide(evento, data) = {
  let title = [
    #text(size: 50pt, weight: "black", evento) \
    #text(size: 25pt)[Gruppo n° 8 - A.A. 2024/2025]

    #text(size: 30pt, weight: "bold")[ALimitedGroup]

    #text(size: 20pt, data)
  ]

  // Immagine torre archimede
  place(top, box(image("../assets/ta.png", width: 100%)))

  // Gradient inferiore
  place(
    bottom,
    dy: 25pt,
    skew(
      rect(
        fill: gradient.linear(rgb("#3b1763"), rgb("#af252c"), angle: 135deg),
        width: 100%,
        height: 62%,
      ),
      ay: -1.5deg,
    ),
  )

  // Titolo
  place(
    center + bottom,
    rect(align(center + top, title), stroke: none, width: 100%, height: 55%),
    dy: 1.4em,
  )

  place(bottom + left, image("../assets/altd_black.png", height: 32.5%), dx: 1em, dy: -0.6em)
  place(bottom + right, image("../assets/unipd_white.svg", height: 30%), dx: -1em, dy: -0.8em)
}

#let sleek-slides(
  body,
  title: "Presentazione RTB",
  date: datetime(day: 7, month: 4, year: 2025),
) = {
  [ #metadata(title) <titolo> ]

  set document(date: date, title: title)
  set page(paper: "presentation-16-9", margin: 0pt)
  set text(fill: white, size: 24pt, font: "Hanken Grotesk")

  title-slide(title, date.display("[day]/[month]/[year]"))

  set page(
    margin: 1.5em,
    background: rect(
      width: 100%,
      height: 100%,
      fill: gradient.linear(rgb("#3b1763"), rgb("#af252c"), angle: 135deg),
    ),
  )

  body
}
