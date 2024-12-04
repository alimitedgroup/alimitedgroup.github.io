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
  odg: [Seconda riunione con #M31: esposizione di tutti gli _use-case_ individuati nell'Analisi dei Requisiti, sciolti i dubbi riguardo quest'ultimi, decisi i periodi dei prossimi _meeting_],
  disambiguatore: [#M31],
  body,
)

= Informazioni generali
#inizio-verbale-esterno([*ibrida*],[*3 Dicembre 2024*],[*14:30*],[*15:55*],[#M31])
+ Esposizione di tutti gli _use-case_ individuati e scritti nel documento di Analisi dei Requisiti;
+ Sciolti eventuali dubbi riguardo quest'ultimi, per comprendere la qualità del lavoro svolto;
+ Prossimi incontri con #M31

In questa riunione hanno partecipato, per conto, di #M31:
- #persona(p.luca), in modalità virtuale tramite _Microsoft Teams_;
- #persona(p.moones), in presenza;
- #persona(p.cristian), in presenza.

#pagebreak()

= Dettagli riunione
== Esposizione di tutti gli _use-case_
In questa riunione abbiamo elencato ai rappresentanti di #M31, tutti i possibili _use-case_ individuati nel lavoro di analisi compiuto da ogni singolo componente.\
Ognuno di essi verrà pubblicato nel documento di *Analisi dei Requisiti*, quando questo sarà ultimato e completato. 

== Sciolti i dubbi riguardo gli _use-case_
Per comprendere al meglio la qualità del lavoro svolto dal gruppo, _ALimitedGroup_ ha chiesto ai rappresentanti di #M31 una serie di domande riguardo ogni singolo _use-case_.
In particolare, il sig. #persona(p.luca) ha esposto un nuovo concetto legato agli _use-case_: gli _user-need_ (necessità dell'utente).\
Questi ultimi sono importanti perché definiscono le necessità (_needs_ per l'appunto) che un utente, non esperto, fornisce al committente riguardo il prodotto che implementerà. Un esempio riguardo questi _user-need_ è: volere un'applicazione velocissima e che abbia tempi di risposta brevi.

== Prossimi incontri con #M31
I prossimi incontri con l'azienda e i rappresentanti di #M31 verranno fissati in questi giorni e successivamente riportati nei prossimi verbali.\
#M31 ci consiglia di effettuare un ultimo _meeting_ prima del *20 Dicembre 2024*, data limite per via della chiusura natalizia dell'azienda. 

#pagebreak()

= Esiti della riunione
Sono state risolte tutte le perplessità riguardo gli _use-case_ elencati ai rappresentanti di #M31, facendo capire a tutto il gruppo la qualità del lavoro svolto fino ad adesso. \
Il gruppo si pone l'obiettivo di confrontarsi, prima, e decidere, dopo, quale architettura implementare per la gestione del magazzino distribuito. Tale decisione verrà presa prima del prossimo incontro con #M31, e verrà messa per iscritto nel verbale esterno futuro.\
_ALimitedGroup_ ringrazia #M31 e i suoi rappresentanti per averci accolto in sede, per la disponibilità e la professionalità mostrataci durante tutto l'arco della riunione.
#pagebreak()

= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  issue(57),
  "Redazione verbale esterno del 3 Dicembre 2024"
)
#pagebreak()

= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [*#M31*])