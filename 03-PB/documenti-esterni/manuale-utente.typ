#import "@preview/cmarker:0.1.2"
#import "../../lib/importantdocs.typ": *

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
