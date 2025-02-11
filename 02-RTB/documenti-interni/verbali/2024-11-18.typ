#import "../../../lib/verbale.typ": *

#show: body => verbale(
  data: datetime(day: 18, month: 11, year: 2024),
  tipo: [interno],
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 24, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.samuele,
      descr: "Approvazione del documento.",
    ),
    (
      vers: "0.1.0",
      date: datetime(day: 19, month: 11, year: 2024),
      autore: p.matteo,
      verifica: p.lorenzo,
      descr: "Redazione del contenuto.",
    ),
  ),
  stato: [Approvato],
  presenze: (p.emanuele, p.samuele, p.sara, p.loris, p.marco, p.matteo, p.lorenzo),
  odg: [Settima riunione di _ALimitedGroup_: vengono definite alcune convenzioni sulla nomenclatura di _Branch_ e _Issue_ e viene fatto il punto della situazione. Infine, vengono assegnati i nuovi ruoli.],
  disambiguatore: [],
  body,
)

= Informazioni Generali

#inizio-verbale-interno([*virtuale*], [*18 Novembre 2024*], [*14.40*], [*15.30*])

+ Convenzioni sulla nomenclatura di _Branch_#super[g] e _Issue_#super[g] di _GitHub_#super[g]
+ Aggiornamento sui lavori in corso
+ Assegnazione dei ruoli sino al giorno 25-11-2024

#pagebreak()
= Dettaglio riunione
== Convenzioni sulla nomenclatura di _Branch_ e _Issue_ di _GitHub_

I componenti di _ALimitedGroup_ hanno deciso di utilizzare, da ora in avanti, una convenzione riguardante la denominazione di _Branch_#super[g] e _Issue_#super[g].
\
Da ora in avanti i *_Branch_*#super[g] seguiranno la seguente nomenclatura:

#align(center)[*`#-azione-documento-data`*]

Dove:
- Al posto di *\#* va inserito il numero della _Issue_#super[g] le cui modifiche operate nel branch determineranno la chiusura
- Al posto di *azione* va inserita l'azione fatta nel _Branch_#super[g] ovvero:
  - *redazione* per indicare la redazione di un nuovo documento
  - *aggiornamento* per indicare la modifica di un documento esistente
- Al posto di *documento* va inserito la tipologia di documento interessato dalla modifica, come, a mero scopo esemplificativo, *verbale* oppure *norme-progetto*
- Al posto di *data* la data del documento, se tale documento la prevede (ad esempio i *verbali*)

Le *_Issue_*#super[g] avranno una nomenclatura molto simile:

#align(center)[*azione documento data*]

Dove *azione*, *documento* e *data* hanno lo stesso significato della nomenclatura utilizzata per i _Branch_#super[g].

== Aggiornamento sui lavori in corso

Il gruppo si è aggiornato sugli esiti del lavoro asincrono svolto e ha iniziato a mettere in forma definitiva tutto il materiale raccolto riguardante l'*Analisi dei Requisiti#super[g]*, il *Piano di Progetto*, il *Glossario* e le *Norme di progetto*.

Data la necessità di redigere stabilmente tali documenti sono stati nominati degli amministratori aventi tale compito, come descritto nella @sez2.3.

I componenti di _ALimitedGroup_ hanno infine riguardato le domande, descritte nel #doc("VI 11-11-2024 v1.0.0")[*verbale interno* dell'*11 Novembre 2024*], da porre ad #M31 in vista dell'incontro che si terrà il giorno 19 Novembre 2024.

== Assegnazione dei ruoli sino al giorno 25-11-2024 <sez2.3>

I presenti del gruppo _ALimitedGroup_ decidono che, sino al giorno 25-11-2024, saranno assegnati ai seguenti componenti questi ruoli: \

#align(center)[*#persona(p.samuele)* $arrow.r$ *Responsabile*#super[g]]
#align(center)[*#persona(p.marco)* $arrow.r$ *Amministratore*#super[g] \ *#persona(p.emanuele)* $arrow.r$ *Amministratore*#super[g] \ *#persona(p.matteo)* $arrow.r$ *Amministratore*#super[g]]
#align(center)[*#persona(p.sara)* $arrow.r$ *Analista*#super[g] \ *#persona(p.loris)* $arrow.r$ *Analista*#super[g]]
#align(center)[*#persona(p.lorenzo)* $arrow.r$ *Verificatore*#super[g]]

Gli *amministratori* avranno compito di redigere il *presente verbale*, il *verbale* della *riunione* futura con #M31 e le *Norme di Progetto*, suddividendosi eventualmente tali compiti.

Agli *analisti* è dato il compito di proseguire l'*Analisi dei Requisiti#super[g]*.

#pagebreak()
= Esiti della riunione

Il gruppo conclude la riunione con i compiti assegnati e le decisioni e azioni intraprese, proseguendo dunque la realizzazione del progetto.

#pagebreak()
= Tabella delle decisioni e delle azioni

#tabella-decisioni(
  "DI20",
  "Decisa la nomenclatura per Branch e Issue di GitHub",
  "DI21",
  "Stabiliti i ruoli sino al 25-11-2024",
  issue(39),
  "Redazione verbale interno 18-11-2024",
  issue(40),
  "Redazione verbale esterno 19-11-2024 (dopo che la riunione con M31 sarà stata svolta)",
)
