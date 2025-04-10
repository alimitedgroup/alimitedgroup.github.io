#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": chart
#import "common.typ": *
#set par(justify: true)
#show link: underline
#show ref: underline

#let link-glossario(
  link-text,
) = {
  link("https://alimitedgroup.github.io/glossario")[#link-text]
}
#let link-norme(
  link-text,
) = {
  link("https://alimitedgroup.github.io/NP%20v1.0.0.pdf")[#link-text]
}

#let sprints = (
  "1": (
    preventivo: (
      (p.loris, 0, 0, 5, 0, 0, 0),
      (p.samuele, 5, 0, 0, 0, 0, 0),
      (p.sara, 0, 3, 4, 0, 0, 2),
      (p.lorenzo, 0, 2, 0, 0, 0, 4),
      (p.marco, 0, 2, 0, 0, 0, 2),
      (p.matteo, 0, 3, 0, 0, 0, 4),
      (p.emanuele, 0, 3, 0, 0, 0, 0),
    ),
    consuntivo: (
      (p.loris, 0, 0, 5, 0, 0, 0),
      (p.samuele, 5, 0, 0, 0, 0, 0),
      (p.sara, 0, 3, 4, 0, 0, 2),
      (p.lorenzo, 0, 2, 0, 0, 0, 5),
      (p.marco, 0, 5, 0, 0, 0, 3),
      (p.matteo, 0, 5, 0, 0, 0, 4),
      (p.emanuele, 0, 4, 0, 0, 0, 0),
    ),
  ),
  "2": (
    preventivo: (
      (p.loris, 5, 1, 2, 0, 0, 0),
      (p.samuele, 0, 4, 0, 0, 0, 0),
      (p.sara, 0, 0, 3, 0, 0, 2),
      (p.lorenzo, 0, 0, 0, 0, 0, 3),
      (p.marco, 0, 2, 4, 0, 0, 0),
      (p.matteo, 0, 1, 5, 0, 0, 0),
      (p.emanuele, 0, 0, 6, 0, 0, 0),
    ),
    consuntivo: (
      (p.loris, 5, 1, 2, 0, 0, 0),
      (p.samuele, 0, 4, 0, 0, 0, 0),
      (p.sara, 0, 0, 3, 0, 0, 2),
      (p.lorenzo, 0, 0, 0, 0, 0, 3),
      (p.marco, 0, 2, 4, 0, 0, 0),
      (p.matteo, 0, 2, 6, 0, 0, 0),
      (p.emanuele, 0, 0, 6, 0, 0, 0),
    ),
  ),
  "3": (
    preventivo: (
      (p.loris, 2, 0, 0, 0, 4, 0),
      (p.samuele, 0, 0, 0, 0, 4, 2),
      (p.sara, 0, 4, 2, 0, 0, 0),
      (p.lorenzo, 0, 0, 0, 0, 1, 0),
      (p.marco, 0, 0, 5, 0, 0, 0),
      (p.matteo, 0, 2, 6, 0, 0, 0),
      (p.emanuele, 0, 3, 3, 0, 0, 0),
    ),
    consuntivo: (
      (p.loris, 2, 0, 1, 0, 3, 0),
      (p.samuele, 0, 0, 0, 0, 4, 2),
      (p.sara, 0, 4, 2, 0, 0, 0),
      (p.lorenzo, 0, 0, 0, 0, 0, 0),
      (p.marco, 0, 0, 5, 0, 0, 0),
      (p.matteo, 0, 1, 7, 0, 0, 0),
      (p.emanuele, 0, 3, 3, 0, 0, 0),
    ),
  ),
  "4": (
    preventivo: (
      (p.loris, 1, 0, 0, 0, 4, 0),
      (p.samuele, 0, 0, 0, 0, 4, 1),
      (p.sara, 0, 3, 0, 0, 0, 0),
      (p.lorenzo, 0, 0, 2, 0, 0, 0),
      (p.marco, 0, 0, 5, 0, 0, 0),
      (p.matteo, 0, 2, 4, 0, 0, 0),
      (p.emanuele, 0, 2, 0, 0, 0, 2),
    ),
    consuntivo: (
      (p.loris, 1, 0, 0, 0, 3, 0),
      (p.samuele, 0, 0, 0, 0, 4, 1),
      (p.sara, 0, 3, 0, 0, 0, 0),
      (p.lorenzo, 0, 0, 2, 0, 0, 0),
      (p.marco, 0, 0, 5, 0, 0, 0),
      (p.matteo, 0, 4, 4, 0, 0, 0),
      (p.emanuele, 0, 2, 0, 0, 0, 4),
    ),
  ),
  "5": (
    preventivo: (
      (p.loris, 0, 2, 0, 0, 4, 1),
      (p.samuele, 0, 0, 0, 0, 4, 0),
      (p.sara, 0, 2, 0, 0, 0, 0),
      (p.lorenzo, 0, 0, 2, 0, 0, 0),
      (p.marco, 0, 0, 8, 0, 0, 0),
      (p.matteo, 2, 0, 6, 0, 0, 0),
      (p.emanuele, 0, 2, 1, 0, 0, 0),
    ),
    consuntivo: (
      (p.loris, 0, 1, 0, 0, 4, 1),
      (p.samuele, 0, 0, 0, 0, 4, 0),
      (p.sara, 0, 2, 0, 0, 0, 0),
      (p.lorenzo, 0, 0, 2, 0, 0, 0),
      (p.marco, 0, 0, 7, 0, 0, 0),
      (p.matteo, 1, 0, 7, 0, 0, 0),
      (p.emanuele, 0, 3, 1, 0, 0, 0),
    ),
  ),
  "6": (
    preventivo: (
      (p.loris, 0, 4, 0, 0, 5, 0),
      (p.samuele, 0, 0, 0, 0, 5, 0),
      (p.sara, 0, 2, 0, 0, 0, 6),
      (p.lorenzo, 0, 3, 0, 0, 0, 1),
      (p.marco, 2, 0, 0, 0, 0, 0),
      (p.matteo, 0, 0, 0, 0, 0, 7),
      (p.emanuele, 0, 0, 0, 0, 0, 5),
    ),
    consuntivo: (
      (p.loris, 0, 4, 0, 0, 4, 0),
      (p.samuele, 0, 0, 0, 0, 4, 0),
      (p.sara, 0, 2, 0, 0, 0, 7),
      (p.lorenzo, 0, 3, 0, 0, 0, 1),
      (p.marco, 2, 0, 0, 0, 0, 0),
      (p.matteo, 0, 0, 0, 0, 0, 9),
      (p.emanuele, 0, 0, 0, 0, 0, 7),
    ),
  ),
  "7": (
    preventivo: (
      (p.loris, 0, 2, 0, 5, 5, 2),
      (p.samuele, 0, 0, 8, 9, 5, 0),
      (p.sara, 0, 0, 0, 6, 9, 1),
      (p.lorenzo, 0, 0, 5, 7, 8, 5),
      (p.marco, 4, 1, 0, 0, 7, 6),
      (p.matteo, 0, 0, 0, 6, 8, 0),
      (p.emanuele, 0, 0, 0, 7, 9, 3),
    ),
    consuntivo: (
      (p.loris, 0, 3, 0, 9, 6, 2),
      (p.samuele, 0, 0, 10, 5, 5, 0),
      (p.sara, 0, 0, 0, 9, 10, 2),
      (p.lorenzo, 0, 0, 5, 5, 8, 5),
      (p.marco, 4, 2, 0, 0, 7, 7),
      (p.matteo, 0, 0, 0, 9, 9, 0),
      (p.emanuele, 0, 0, 0, 7, 9, 4),
    ),
  ),
  "8": (
    preventivo: (
      (p.loris, 0, 0, 0, 8, 8, 5),
      (p.samuele, 0, 5, 0, 8, 5, 5),
      (p.sara, 5, 0, 0, 2, 8, 4),
      (p.lorenzo, 0, 2, 0, 8, 8, 0),
      (p.marco, 0, 4, 0, 5, 9, 4),
      (p.matteo, 0, 0, 0, 5, 8, 3),
      (p.emanuele, 7, 0, 0, 8, 8, 0),
    ),
    consuntivo: (
      (p.loris, 0, 0, 0, 8, 7, 5),
      (p.samuele, 0, 5, 0, 8, 5, 5),
      (p.sara, 5, 0, 0, 7, 8, 4),
      (p.lorenzo, 0, 7, 0, 7, 8, 0),
      (p.marco, 0, 4, 0, 7, 7, 4),
      (p.matteo, 0, 0, 0, 5, 8, 3),
      (p.emanuele, 7, 0, 0, 8, 8, 0),
    ),
  ),
  "9": (
    preventivo: (
      (p.loris, 0, 0, 0, 4, 2, 7),
      (p.samuele, 0, 0, 0, 5, 4, 10),
      (p.sara, 0, 0, 0, 5, 6, 2),
      (p.lorenzo, 5, 0, 0, 5, 11, 4),
      (p.marco, 0, 0, 0, 3, 7, 7),
      (p.matteo, 2, 0, 0, 0, 3, 1),
      (p.emanuele, 0, 0, 0, 5, 6, 3),
    ),
    consuntivo: (
      (p.loris, 0, 0, 0, 4, 2, 7),
      (p.samuele, 0, 0, 0, 5, 4, 10),
      (p.sara, 0, 0, 0, 5, 6, 0),
      (p.lorenzo, 5, 0, 0, 6, 11, 4),
      (p.marco, 0, 0, 0, 3, 6, 6),
      (p.matteo, 4, 0, 0, 0, 3, 1),
      (p.emanuele, 0, 0, 0, 5, 6, 3),
    ),
  ),
)

#let cella(dati, preventivo, i, j) = {
  let dat = dati.at(i).at(j)
  let prev = if preventivo != none {
    preventivo.at(i).at(j)
  }

  if j == 0 {
    persona(dat)
  } else if preventivo == none and dat == 0 {
    [-]
  } else if preventivo == none {
    [#dat]
  } else if dat == prev and dat == 0 {
    [-]
  } else if dat == prev and dat != 0 {
    [#dat]
  } else if dat >= prev {
    [#dat #text(red)[(+#(dat - prev))]]
  } else {
    [#dat #text(green, [(#(dat - prev))])]
  }
}

#let tabella-ruoli(ruoli, dati, preventivo, descrizione) = {
  set par(justify: false)
  show table.cell: cl => if cl.x == 0 and cl.y != 0 {
    align(left, cl)
  } else if cl.x == 0 {
    align(bottom + left, cl)
  } else if cl.y == 0 {
    rotate(-45deg, reflow: false, align(left, cl))
  } else {
    align(bottom + center, cl)
  }
  figure(
    table(
      columns: (2.5fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      inset: (x, y) => if y == 0 {
        (x: 1.9em, y: 0.7em)
      } else {
        (x: 1.1em, y: 0.6em)
      },
      fill: (x, y) => if calc.rem(y, 2) == 1 {
        luma(235)
      },
      stroke: (x, y) => if y >= 1 {
        1pt + black
      } else {
        none
      },
      table.header([], ..ruoli.map(strong)),

      // @typstyle off
      ..for i in range(0, dati.len()) {
        (
          ..for j in range(0, dati.at(i).len()) {
            (cella(dati, preventivo, i, j),)
          },
        )
      }
    ),
    caption: descrizione,
  )
}

#let grafico-ruoli(ruoli, dati, posizioni-legenda, descr) = {
  // data è un array di dizionari `(percentuale: 42, titolo: "thanks for all the fish")`
  let data = ()
  let globsum = dati.map(r => r.slice(1).sum()).sum()
  for (i, ruolo) in ruoli.enumerate() {
    let sum = dati.map(row => row.at(i + 1)).sum(default: 0)
    data.push((
      percentuale: sum / globsum * 100,
      titolo: ruolo + " - " + str(calc.round(sum / globsum * 100, digits: 0)) + "%",
    ))
  }

  // slice-style: pal_colors,
  figure(
    canvas({
      import draw: *
      chart.piechart(
        data,
        name: "pie",
        position: (1em, 0),
        radius: 1.8,
        value-key: "percentuale",
        label-key: "titolo",
        outer-label: (content: none),
        gap: 2deg,
        legend: (label: none),
      )

      set-style(content: (padding: .2))
      for (i, dat) in data.enumerate() {
        if dat.percentuale > 0 {
          // Calculate the point at 35% of the distance from the border of a slice to its center
          let outer = "pie.chart.item-" + str(i)
          let inner = "pie.chart.item-" + str(i) + "-inner"
          line(outer, inner, stroke: none, mark: none, name: "midline-" + str(i))
          let middle = (name: "midline-" + str(i), anchor: 35%)

          let line-dir = posizioni-legenda.at(i)
          let line-anchor = if posizioni-legenda.at(i) > 0 {
            "west"
          } else {
            "east"
          }
          let percent = calc.round(dat.percentuale * 100 / data.map(x => x.percentuale).sum())

          line(middle, (rel: (posizioni-legenda.at(i), 0)), name: "line-" + str(i))
          content((), [#ruoli.at(i) - #percent%], anchor: line-anchor)
          mark(
            (name: "line-" + str(i), anchor: 0%),
            (name: "line-" + str(i), anchor: 1%),
            symbol: "o",
            anchor: "center",
            fill: white,
            width: 1,
          )
        } else { }
      }
    }),

    caption: descr,
    supplement: [Grafico],
  )
}

#let impegni(
  preventivo: false,
  numero,
  posizioni-legenda: (2, 2, 2, 2, 2, 2),
  descrizioneT,
  descrizioneG,
) = {
  let dati = sprints.at(str(numero))
  let (dati, preventivo) = if preventivo {
    (dati.consuntivo, dati.preventivo)
  } else {
    (dati.preventivo, none)
  }

  let ruoli = (
    "Responsabile",
    "Amministratore",
    "Analista",
    "Progettista",
    "Programmatore",
    "Verificatore",
  )

  v(3em)
  tabella-ruoli(ruoli, dati, preventivo, descrizioneT)
  grafico-ruoli(ruoli, dati, posizioni-legenda, descrizioneG)
}

#let prospetto-orario(sprint, descrizione) = {
  let sprint = str(sprint)
  let ore-spese-sprint = 0
  let budget-speso-sprint = 0
  let tot-budget-speso-prec = 0
  let ore-spese-tot = 0
  let ore-tot = ruoli.values().map(ruolo => ruolo.max-ore).sum()
  let budget-tot = 12930
  let sprint-idx = sprints.keys().position(x => x == sprint)

  set align(center)
  figure(
    table(
      columns: 6,
      align: center,
      [Ruolo], [Costo], [Ore], [Costo], [Ore rimanenti], [Budget rimanente],

      ..for (i, ruolo) in ruoli.values().enumerate() {
        let ore-spese = sprints.at(sprint).consuntivo.map(row => row.at(i + 1)).sum()
        ore-spese-sprint += ore-spese
        budget-speso-sprint += ruolo.costo * ore-spese

        let ore-spese-prev = sprints
          .values()
          .slice(0, sprint-idx)
          .map(sprint => sprint.consuntivo.map(row => row.at(i + 1)).sum())
          .sum(default: 0)
        let budget-speso-prec = ruolo.costo * ore-spese-prev
        let ore-rimanenti = ruolo.max-ore - ore-spese-prev - ore-spese
        let ore-rimanenti-prev = ruolo.max-ore - ore-spese-prev
        let budget-rimanente = ruolo.costo * ore-rimanenti
        let budget-rimanente-prev = budget-rimanente + ruolo.costo * ore-spese

        tot-budget-speso-prec += budget-speso-prec
        ore-spese-tot += ore-rimanenti

        (
          ruolo.nome,
          str(ruolo.costo) + "€/h",
          if ore-spese != 0 {
            str(ore-spese)
          } else {
            [-]
          },
          if ore-spese != 0 {
            str(ore-spese * ruolo.costo) + "€"
          } else {
            [-]
          },
          str(ore-rimanenti)
            + if ore-spese != 0 {
              text(red, " (" + str(ore-rimanenti - ore-rimanenti-prev) + ")")
            },
          str(budget-rimanente)
            + "€"
            + if ore-spese != 0 {
              text(red, " (" + str(budget-rimanente - budget-rimanente-prev) + "€)")
            },
        )
      },
      [Totale],
      [-],
      str(ore-spese-sprint),
      str(budget-speso-sprint) + "€",
      str(ore-spese-tot) + text(red)[ (#{-ore-spese-sprint})],
      str(budget-tot - tot-budget-speso-prec - budget-speso-sprint) + text(red)[ (#{-budget-speso-sprint}€)],
    ),
    caption: descrizione,
  )
}
