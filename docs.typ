#import "@preview/tidy:0.4.1"
#import "lib/documentazione.typ" as docs-template

#metadata([docs]) <titolo>

#set text(font: "Hanken Grotesk")
#show heading.where(level: 1): set text(size: 19pt)
#show heading.where(level: 3): set text(size: 19pt)
#show heading.where(level: 4): set text(size: 12pt, weight: "medium")

#align(center)[= Documentazione]
#align(center)[== Modulo `common`]

#import "lib/common.typ"
#let module = tidy.parse-module(
  read("lib/common.typ"),
  name: "common",
  scope: (common: common),
  preamble: "import common: *;",
)
#tidy.show-module(
  module,
  style: docs-template,
  show-outline: true,
  omit-empty-param-descriptions: true,
  show-module-name: false,
  local-names: (parameters: [Signature], default: [Default]),
  sort-functions: none,
)

#align(center)[== Modulo `verbale`]

#import "lib/verbale.typ"
#let module = tidy.parse-module(
  read("lib/verbale.typ"),
  name: "common",
  scope: (verbale: verbale),
  preamble: "import verbale: *;",
)
#tidy.show-module(
  module,
  style: docs-template,
  show-outline: true,
  omit-empty-param-descriptions: true,
  show-module-name: false,
  local-names: (parameters: [Signature], default: [Default]),
  sort-functions: none,
)
