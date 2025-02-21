#import "@preview/tidy:0.4.1"
#import tidy.utilities: *

// Color to highlight function names in
#let fn-color = rgb("#4b69c6")


// Colors for Typst types
#let type-colors = (
  "content": rgb("#a6ebe6"),
  "color": rgb("#a6ebe6"),
  "string": rgb("#d1ffe2"),
  "none": rgb("#ffcbc4"),
  "auto": rgb("#ffcbc4"),
  "boolean": rgb("#ffedc1"),
  "integer": rgb("#e7d9ff"),
  "float": rgb("#e7d9ff"),
  "ratio": rgb("#e7d9ff"),
  "length": rgb("#e7d9ff"),
  "angle": rgb("#e7d9ff"),
  "relative-length": rgb("#e7d9ff"),
  "fraction": rgb("#e7d9ff"),
  "symbol": rgb("#eff0f3"),
  "array": rgb("#eff0f3"),
  "dictionary": rgb("#eff0f3"),
  "arguments": rgb("#eff0f3"),
  "selector": rgb("#eff0f3"),
  "module": rgb("#eff0f3"),
  "stroke": rgb("#eff0f3"),
  "function": rgb("#f9dfff"),
)

#let get-type-color(type) = type-colors.at(type, default: rgb("#eff0f3"))





// Create beautiful, colored type box
#let show-type(type) = {
  h(2pt)
  box(outset: 2pt, fill: get-type-color(type), radius: 2pt, raw(type))
  h(2pt)
}



#let show-parameter-list(fn, display-type-function) = {
  {
    set text(font: "Cascadia Mono", size: 0.70em, weight: 340)
    text(fn.name, fill: fn-color)
    "("
    let inline-args = fn.args.len() <= 4
    if not inline-args {
      "\n  "
    }
    let items = ()
    for (arg-name, info) in fn.args {
      let types
      if "types" in info {
        types = ": " + info.types.map(x => display-type-function(x)).join(" ")
      }
      items.push(arg-name + types)
    }
    items.join(if inline-args {
      ", "
    } else {
      ",\n  "
    })
    (
      if not inline-args {
        "\n"
      }
        + ")"
    )
    if fn.return-types != none {
      " -> "
      fn.return-types.map(x => display-type-function(x)).join(" ")
    }
  }
}


// Create a parameter description block, containing name, type, description and optionally the default value.
#let show-parameter-block(
  name,
  types,
  content,
  style-args,
  show-default: false,
  default: none,
) = block(
  inset: 10pt,
  fill: luma(98%),
  width: 100%,
  breakable: style-args.break-param-descriptions,
  [
    #box(heading(level: style-args.first-heading-level + 3, name))
    #h(.5cm)
    #types.map(x => (style-args.style.show-type)(x)).join([ #text("or", size: .6em) ])

    #content
    #if show-default [ #parbreak() Default: #raw(lang: "typc", default) ]
  ],
)


#let show-variable(
  var,
  style-args,
) = {
  {
    [
      #heading(text(font: "Cascadia Mono", size: 0.70em, weight: 340, fill: fn-color, var.name))
      #label(style-args.label-prefix + var.name)
    ]

    pad(
      left: 3%,
      eval-docstring(var.description, style-args),
    )
    v(2em, weak: true)
  }
}

#let show-function(
  fn,
  style-args,
) = {
  {
    [
      #heading(show-parameter-list(fn, style-args.style.show-type), level: style-args.first-heading-level + 1)
      #label(style-args.label-prefix + fn.name + "()")
    ]


    pad(
      left: if fn.args.len() > 0 {
        2%
      } else {
        6%
      },
      {
        eval-docstring(fn.description, style-args)

        for (name, info) in fn.args {
          let types = info.at("types", default: ())
          let description = info.at("description", default: "")
          if description == "" and style-args.omit-empty-param-descriptions {
            continue
          }
          (style-args.style.show-parameter-block)(
            name,
            types,
            eval-docstring(description, style-args),
            style-args,
            show-default: "default" in info,
            default: info.at("default", default: none),
          )
        }
      },
    )
    v(2em, weak: true)
  }
}


#let show-reference(label, name, style-args: none) = {
  let output
  if "no-namespace" in style-args {
    output = text(fill: fn-color, raw(name))
  } else {
    output = text(fill: purple, raw("#" + style-args.label-prefix)) + text(fill: fn-color, raw("." + name))
  }
  link(label, output)
}


#let show-outline(module-doc, style-args: none) = {
  let prefix = module-doc.label-prefix
  style-args.insert("no-namespace", none)

  text([Costanti:], weight: "bold")
  let constants = ()
  for var in module-doc.variables {
    let ref = show-reference(label(prefix + var.name), var.name, style-args: style-args)
    constants.push(ref)
  }
  list(..constants)

  text([Funzioni:], weight: "bold")
  let functions = ()
  for fn in module-doc.functions {
    let ref = show-reference(label(prefix + fn.name + "()"), fn.name + "()", style-args: style-args)
    functions.push(ref)
  }
  list(..functions)
}

#import tidy.show-example: show-example as show-example-base

#let show-example(
  ..args,
) = {
  show-example-base(
    ..args,
    code-block: block.with(radius: 3pt, stroke: .5pt + luma(200)),
    preview-block: block.with(radius: 3pt, fill: rgb("#e4e5ea")),
    col-spacing: 5pt,
  )
}
