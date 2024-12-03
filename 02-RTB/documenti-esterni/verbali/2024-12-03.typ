#import "../../../lib/verbale.typ" : *

#show: body => verbale(
  data: datetime(day: 03, month: 12, year: 2024),
  tipo: [esterno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 03, month: 12, year: 2024),
      autore: p.marco,
      verifica: p.lorenzo,
      descr: "Prima redazione del documento",
    ),
  ),
  stato: [In redazione],
  presenze: (p.emanuele, p.samuele, p.sara, p.loris, p.marco, p.matteo, p.lorenzo),
  odg: [Seconda riunione con #M31: esposizione di tutti gli _use-case_ individuati nell'Analisi dei Requisiti, sciolti i dubbi riguardo quest'ultimi],
  disambiguatore: [#M31],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*ibrida*],[*2 Dicembre 2024*],[*14:30*],[*15:55*],[#M31])
+ Esposizione di tutti gli _use-case_ individuati e scritti nel documento di Analisi dei Requisiti;
+ Sciolti eventuali dubbi riguardo quest'ultimi, per comprendere la qualità del lavoro svolto;
+ 

In questa riunione hanno partecipato, per conto, di #M31:
- #persona(p.luca), in modalità virtuale tramite _Microsoft Teams_;
- #persona(p.moones), in presenza;
- #persona(p.cristian), in presenza.

#pagebreak()

= Esposizione di tutti gli _use-case_
Nella seguente riunione abbiamo elencato ai rappresentanti di #M31, tutti i possibili _use-case_ individuati nel lavoro di analisi compiuto da ogni singolo componente.\
Ognuno di essi verrà pubblicato nel documento di *Analisi dei Requisiti*, quando questo sarà ultimato e completato. 

#pagebreak()

= Esiti della riunione

#pagebreak()

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  "",
  "",
  issue(57),
  "Redazione verbale esterno del 2 Dicembre 2024"
)
#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [*M31*])