#import "../../lib/glossary.typ": *

#let vers = [0.5.0]

#show: body => glossario(
  data: datetime(day: 17, month: 02, year: 2025),
  versioni: (
    (
      vers: "0.5.0",
      date: datetime(day: 17, month: 02, year: 2025),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Migliorata la struttura del documento, aggiunta la sezione di Introduzione.",
    ),
    (
      vers: "0.4.0",
      date: datetime(day: 25, month: 01, year: 2025),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Aggiunte nuove definizioni al glossario.",
    ),
    (
      vers: "0.3.0",
      date: datetime(day: 09, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Aggiunte nuove definizioni al glossario.",
    ),
    (
      vers: "0.2.0",
      date: datetime(day: 29, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.sara,
      descr: "Risolto problema nella pagina di copertina e uniformato header del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 07, month: 11, year: 2024),
      autore: p.emanuele,
      verifica: p.lorenzo,
      descr: "Redazione documento.",
    ),
  ),
  stato: [In redazione],
  responsabile: ((p.samuele), (p.loris)),
  verificatore: ((p.sara), (p.lorenzo)),
  redattori: ((p.emanuele), (p.marco), (p.matteo)),
  versione: vers,
  body,
)

= Introduzione
Questo documento nasce con lo scopo di evitare qualsiasi tipo di ambiguità o dubbi riguardanti la terminologia adoperata all'interno dei documenti del progetto. Per questo motivo, vengono di seguito esposte le definizioni dei termini specifici adottando una struttura alfabetica per facilitare la navigazione del documento.\
La nomenclatura utilizzata per evidenziare che una parola, con annessa la sua definizione, è presente all'interno del Glossario viene indicata come segue:
#align(center)[parola#super[G]]
#pagebreak()
