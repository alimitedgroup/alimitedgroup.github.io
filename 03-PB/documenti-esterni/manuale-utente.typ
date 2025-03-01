#import "@preview/cmarker:0.1.2"
#import "../../lib/importantdocs.typ": *

#show: body => importantdocs(
  versione: "0.2.0",
  titolo: "Manuale Utente",
  data: datetime.today(),
  descrizione: "Questo documento contiene le informazioni utili per l'utilizzo del "
    + [_Minimum Viable Product_]
    + " realizzato da AlimitedGroup",
  responsabile: (p.samuele,),
  verificatore: (p.emanuele,),
  stato: [In redazione],
  redattori: (p.samuele, p.matteo),
  versioni: (
    (
      vers: "0.1.0",
      date: datetime.today(),
      descr: "Stesura parte introduttiva del documento.",
      autore: p.matteo,
      verifica: p.emanuele,
    ),
    (
      vers: "0.1.0",
      date: datetime.today(),
      descr: "Preparazione base documento.",
      autore: p.samuele,
      verifica: p.emanuele,
    ),
  ),
  body,
)

#let render(filepath, level) = {
  let basename = "../manuale-utente/" + filepath
  basename = basename.split("/").slice(0, -1).join("/")
  cmarker.render(
    read("../manuale-utente/" + filepath),
    scope: (image: (path, alt: none) => align(center, image(basename + "/" + path, alt: alt, height: 30%))),
  )
}

#let walk_nav(data, level) = {
  for value in data {
    let a2 = value.values().at(0)
    if type(a2) == str {
      render(a2, level)
    } else {
      walk_nav(a2, level + 1)
    }
  }
}

#walk_nav(yaml("../../mkdocs.yml").nav, 1)
