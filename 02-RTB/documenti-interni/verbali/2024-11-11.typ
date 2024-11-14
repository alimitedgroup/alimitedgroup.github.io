#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 11, month: 11, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 14, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.samuele,
      descr: "Approvazione del documento",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.matteo,
      descr: "Redazione del contenuto",
    ),
  ),
  stato: [Approvato],
  presenze: (p.samuele, p.sara, p.loris, p.marco, p.matteo, p.lorenzo),
  odg: [Sesta riunione di _ALimitedGroup_: vengono assegnati i nuovi ruoli, viene approvata la nuova versione del sito, vengono messi per iscritto i quesiti da porre ad #M31],
  disambiguatore: [],
  body,
)

= Informazioni Generali

#inizio-verbale-interno([*virtuale*], [*11 Novembre 2024*], [*14.15*], [*16.30*])
+ Accordare la cadenza degli incontri con l'azienda #M31
+ Domandare ad #M31 ulteriori dubbi riguardante i requisiti esposti nel capitolato
+ Importanti migliorie nel sito web
+ Assegnazione dei ruoli sino al giorno 18-11-2024

#pagebreak()
= Dettaglio riunione
== Accordare la cadenza degli incontri con l'azienda #M31 <riscontro>
Il gruppo _ALimitedGroup_ ha deciso di inviare una proposta ad #M31 circa la possibilità di organizzare un ulteriore incontro per stabilire la periodicità con cui:
- Mostrare, ad #M31, i progressi fatti dall'ultimo _meeting_;
- Sciogliere i dubbi sorti nell'arco di tempo fra gli incontri;
- Determinare, insieme ad #M31, l'effettiva correttezza e completezza del lavoro svolto;
- Effettuare tali _meeting_ con #M31, in modo da ottimizzare la realizzazione di _milestone_ nel progetto.

In seguito all'incontro, il gruppo vaglierà le opzioni disponibili e decidere l'iter da seguire.


== Domandare ad #M31 ulteriori dubbi riguardante i requisiti esposti nel capitolato

Come scritto nell'ultimo #link("https://alimitedgroup.github.io/VI%2004-11-2024%201.0.0.pdf")[verbale interno] nella sezione "Esiti della riunione", _ALimitedGroup_ ha analizzato attentamente i requisiti richiesti nel #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[capitolato di presentazione] di #M31: è stato deciso di chiedere a quest'ultima ulteriori approfondimenti riguardo alla sezione "Requisiti Funzionali Minimi" su:
Come scritto nell'ultimo #link("https://alimitedgroup.github.io/VI%2004-11-2024%201.0.0.pdf")[verbale interno] nella sezione "Esiti della riunione", _ALimitedGroup_ ha analizzato attentamente i requisiti richiesti nel #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[capitolato di presentazione]] di #M31: è stato deciso di chiedere a quest'ultima ulteriori approfondimenti riguardo alla sezione "Requisiti Funzionali Minimi" su:

- Il *riassortimento predittivo basato sul _Machine Learning_*, proponendo ad #M31 di semplificarlo utilizzando altre tecnologie a discapito del _ML_;
- La *risoluzione dei conflitti negli aggiornamenti concorrenti*, discutendo su come approcciare tale requisito.

Mentre, per la sezione "Requisiti di Sicurezza", _ALimitedGroup_ chiederà all'azienda proponente informazioni riguardo:
- Il *monitoraggio del sistema*, che viene posto come requisito obbligatorio ma che senza il requisito facoltativo "Sicurezza e controllo degli accessi", posto nella sezione antecedente, perde di significato.

Successivamente aver avuto un riscontro da parte di #M31, come scritto nella @riscontro, ogni nuova informazione riguardo i requisiti richiesti verrà scritta nei verbali futuri.
Successivamente aver avuto un riscontro da parte di #M31, come scritto nella @riscontro, ogni nuova informazione riguardo i requisiti richiesti verrà scritta nei verbali futuri. 


#pagebreak()
== Importanti migliorie nel sito web
_ALimitedGroup_ ha deciso di approvare la nuova versione del #link("https://alimitedgroup.github.io/index.html")[sito]: tale versione non subirà più importanti cambiamenti come questo. \
== Importanti migliorie nel sito web 
_ALimitedGroup_ ha deciso di approvare la nuova versione del #underline[#link("https://alimitedgroup.github.io/index.html")[sito]]: tale versione non subirà più importanti cambiamenti come questo. \
La nuova versione rende più piacevole e fruibile il sito nella sua interezza mostrando, per ogni categoria, ogni documento (Verbale, Diario di Bordo, etc...) relativo a quel periodo.\
A tal proposito, le categorie presenti nel sito sono:
- *Candidatura* : indica la prima parte del progetto, ovvero antecedente all'aggiudicazione degli appalti. Questa sezione contiene tutti i verbali interni/esterni organizzati in quel periodo, oltre ad ulteriori documenti come:
  - Lettera di candidatura
  - Valutazione dei capitolati
  - Dichiarazione degli impegni
- *_RTB_*: indica la parte che _ALimitedGroup_ sta affrontando in questo momento. Qui verranno mano a mano pubblicati i documenti relativi alla _Requirements and Tecnology Baseline_;
- *_PB_* : indica la parte che andremo a svolgere in futuro e che conterrà i documenti relativi alla _Product Baseline_.
- *_PB_* : indica la parte che andremo a svolgere in futuro e che conterrà i documenti relativi alla _Product Baseline_.
Inoltre, abbiamo reso possibile la visualizzazione del sito compatibile con _smartphone_ e _tablet_ per rendere l'accesso, alle risorse e documenti, più facile. \
Infine, all'interno del sito è ora possibile trovare i riferimenti ai profili _GitHub_ di ogni membro di _ALimitedGroup_.

== Assegnazione dei ruoli sino al giorno 18-11-2024
I presenti del gruppo _ALimitedGroup_ decidono che, sino al giorno 18-11-2024, saranno assegnati ai seguenti componenti questi ruoli: \
I presenti del gruppo _ALimitedGroup_ decidono che, sino al giorno 18-11-2024, saranno assegnati ai seguenti componenti questi ruoli: \

#align(center)[*#p.samuele.nome #p.samuele.cognome* $arrow.r$ *Responsabile*]
#align(center)[*#p.matteo.nome #p.matteo.cognome* $arrow.r$ *Verificatore*]
#align(center)[*#p.sara.nome #p.sara.cognome* $arrow.r$ *Analista*]
#align(center)[*#p.loris.nome #p.loris.cognome* $arrow.r$ *Analista*]

Sarà assegnato a *#persona(p.marco)* il compito di redigere questo verbale, mentre ai rimanenti componenti di _ALimitedGroup_ il proseguio della redazione del glossario e l'inizio delle norme e del piano di progetto.

#pagebreak()
= Esiti della riunione
Il gruppo conclude la riunione con i compiti assegnati e le decisioni e azioni intraprese,
concludendo di redigere il Glossario entro la prossima riunione ed iniziando la stesura dei nuovi documenti, non appena finita quella di quest'ultimo.

Il gruppo, inoltre, procederà a contattare #M31 e attenderà riscontro da quest'ultima per decidere il/i prossimo/i incontro/i futuro/i.
concludendo di redigere il Glossario entro la prossima riunione ed iniziando la stesura dei nuovi documenti, non appena finita quella di quest'ultimo. \
Il gruppo, inoltre, procederà a contattare #M31 e attenderà riscontro da quest'ultima per decidere il/i prossimo/i incontro/i futuro/i.

#pagebreak()
= Tabella delle decisioni e delle azioni
#tabella-decisioni(
  "DI18",
  "Stabiliti i nuovi ruoli per componente",
  "DI19",
  "Contattare M31",
  issue(23),
  "Continuazione redazione glossario",
  issue(26),
  "Aggiornamento sito alla nuova versione, ora disponibile",
  issue(27),
  "Redazione diario di bordo 12-11-2024",
  issue(30),
  "Inizio redazione analisi dei requisiti",
  issue(31),
  "Redazione verbale interno 11-11-2024",
  issue(34),
  "Inizio redazione norme di progetto",
  issue(35),
  "Inizio redazione piano di progetto",
)
