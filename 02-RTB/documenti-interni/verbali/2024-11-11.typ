#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 11, month: 11, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 12, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.matteo,
      descr: "Redazione del contenuto",
    ),
  ),
  stato: [Redatto],
  presenze: (p.samuele, p.sara, p.loris,p.marco, p.matteo, p.lorenzo),
  odg: [Sesta riunione di _ALimitedGroup_: vengono discusse],
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
== Accordare la cadenza degli incontri con l'azienda #M31
Il gruppo _ALimitedGroup_, stamani, ha inviato una proposta ad #M31 circa la possibilità di organizzare un ulteriore incontro per stabilire la periodicità con cui:
- Mostrare, ad #M31, i progressi fatti dall'ultimo _meeting_ ;
- Sciogliere i dubbi sorti durante i vari _meeting_ per determinare la correttezza e la completezza del lavoro svolto;
- Effettuare tali _meeting_ con #M31, in modo da inserire delle _milestone_ nel progetto




== Domandare ad #M31 ulteriori dubbi riguardante i requisiti esposti nel capitolato




#pagebreak()
== Importanti migliorie nel sito web 
_ALimitedGroup_ ha deciso di approvare la nuova versione del #underline[#link("https://alimitedgroup.github.io/index.html")[sito]], tale versione sarà permanente e non subirà ulteriori cambiamenti. \
La nuova versione rende più piacevole e più fruibile il sito nella sua interezza mostrando, per ogni categoria, ogni documento (Verbale, Diario di Bordo, etc...) relativo a quel periodo.\
All'interno del sito ci sono tre categorie:
- *Candidatura* : indica la prima parte del progetto, ovvero antecedente all'aggiudicazione degli appalti. All'interno conterrà tutti i verbali interni/esterni organizzati in quel periodo, oltre ad ulteriori documenti come:
  - Lettera di candidatura
  - Valutazione dei capitolati
  - Dichiarazione degli impegni
- *_RTB_*: indica la parte che _ALimitedGroup_ sta affrontando in questo momento, verranno mano a mano pubblicati i documenti relativi alla _Requirements and Tecnology Baseline_
- *_PB_* : indica la parte che andremo a svolgere in futuro, e che conterrà i documenti relativi alla _Product Baseline_
Inoltre, all'interno del sito potete trovare ogni riferimento _GitHub_ per ogni singolo componente di _ALimitedGroup_.

== Assegnazione dei ruoli sino al giorno 18-11-2024
I presenti del gruppo _ALimitedGroup_ decidono che sino al giorno 18-11-2024, saranno assegnati ai seguenti componenti questi ruoli: \
#align(center)[*#p.samuele.nome #p.samuele.cognome* $arrow.r$ *Responsabile*]
#align(center)[*#p.matteo.nome #p.matteo.cognome* $arrow.r$ *Verificatore*]
#align(center)[*#p.sara.nome #p.sara.cognome* $arrow.r$ *Analista*]
#align(center)[*#p.loris.nome #p.loris.cognome* $arrow.r$ *Analista*]

Sarà assegnato a *#p.marco.nome* *#p.marco.cognome* il compito di redigere questo verbale, mentre ai rimanenti componenti di _ALimitedGroup_ il proseguio delle norme di progetto e l'inizio del piano di progetto
#pagebreak()
= Esiti della riunione

#pagebreak()
= Tabella delle decisioni e delle azioni
#tabella-decisioni()