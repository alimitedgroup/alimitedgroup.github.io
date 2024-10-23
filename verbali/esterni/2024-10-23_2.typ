// VE 23-10-2024
#import "../../lib.typ": *
#set text(lang: "it")

#show: doc => verbale(
  data: [23-10-2024],
  tipo: [esterno],
  regmodifiche: (
    /*("1.0.0", "2024-10-15", "Samuele Esposito", "-", "Approvazione documento"),
    ("0.1.0", "17-10", "Marco Piccoli", "-", "Modifica e verifica documento"),*/
    ("0.0.2", "23-10", "Sara Ferraro", "-", "Redazione documento"),
    ("0.0.1", "23-10", "Sara Ferraro", "-", "Creazione struttura e template documento"),
  ),
  versione: [0.0.2],
  stato: [Redatto],
  presenze: (
    "Samuele Esposito",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Lorenzo Stefani",
    "Sara Ferraro",
  ),
  odg: [Primo incontro di _ALimitedGroup_ con l'azienda _Ergon_: vengono sciolti dubbi sorti durante la presentazione del capitolato],
  doc,
)
