#import "../../lib/diario.typ": *

#show: ppt => presentazione(
  intestazioni: true,
  motto: true,
  pseudoanimazioni: false,
  date: datetime(day: 25, month: 11, year: 2024),
  contenuto1: [
    - Prosegue la redazione dell'Analisi dei Requisiti
    - Si è tenuta la prima riunione con l'azienda proponente (martedì 19 Novembre 2024) in cui abbiamo discusso i requisiti e le modalità del progetto
  ],
  contenuto2: [
    - Consegnare una bozza dell'analisi requisiti al proponente per la riunione del 3 Dicembre
  ],
  contenuto3: [
    - Capire come trattare un requisito minimo che diventa opzionale dopo la discussione con l'azienda
    - Le riunioni in modalità ibrida (metà a da remoto e metà in sede) sono difficili da gestire
  ],
)