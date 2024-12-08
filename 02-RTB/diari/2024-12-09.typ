#import "../../lib/diario.typ": *

#show: ppt => presentazione(
  intestazioni: true,
  motto: true,
  pseudoanimazioni: false,
  date: datetime(day: 9, month: 12, year: 2024),
  contenuto1: [
    - Svolto la riunione con il proponente M31 in cui sono stati chiariti dei requisiti
    - Verificato il Piano di Progetto per il primo sprint
    - Redatto la prima versione dell'Analisi dei Requisiti
    - Iniziato lo studio delle tecnologie golang, NATS e vari paradigmi dei microservizi
  ],
  contenuto2: [
    - Iniziare la redazione del Piano di Qualifica
    - Completare il Piano di Progetto per il secondo sprint
    - Rilasciare la prima versione stabile dell'Analisi dei Requisiti
  ],
  contenuto3: [
    - Complessità nello studio dei sistemi a microservizi
  ],
)