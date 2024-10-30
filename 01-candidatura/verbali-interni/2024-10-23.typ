// VI 23-10-2024

#import "../../lib.typ": *
#show: doc => verbale(
  regmodifiche: (
    ("1.0.0", "25-10", "Marco Piccoli", "-", "Approvazione documento"),
    ("0.1.0", "24-10", "Marco Piccoli", "-", "Modifica e verifica documento"),
    ("0.0.2", "23-10", "Matteo Schievano", "-", "Redazione documento"),
    ("0.0.1", "23-10", "Matteo Schievano", "-", "Creazione struttura e template documento"),
  ),
  data: datetime(day: 23, month: 10, year: 2024),
  versione: [1.0.0],
  stato: [Approvato],
  presenze: (
    "Lorenzo Stefani",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Samuele Esposito",
    "Sara Ferraro",
  ),
  odg: [Terza riunione di _ALimitedGroup_: vengono definite alcune istruzioni per realizzare le presentazioni degi eventi denominati _Diario di Bordo_. Si inizia a discutere di sistemi di _ticketing_ e gestione dei compiti. Alcune modifiche al codice _typst_ dei verbali.],
  doc,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*23 Ottobre 2024*], [*17.00*], [*18.15*])

+ Decisioni in merito alle presentazioni _Diario di Bordo_
+ Prime analisi sui sistemi di _ticketing_ e di gestione compiti
+ Utilizzo di _Google Calendar_ per la gestione degli eventi
+ Modifiche minori al codice _typst_ dei verbali

Data l'assenza di un componente eventuali correzioni alle decisioni riportate in questo documento saranno debitamente verbalizzate a seguito di
nuova riunione.
#pagebreak()

= Dettaglio riunione

== Decisioni in merito alle presentazioni _Diario di Bordo_

I componenti del gruppo hanno proposto che la realizzazione delle presentazioni per l'evento _Diario di Bordo_ definite nel calendario di Ingegneria del Software dovranno essere realizzate in typst come la restante parte dei documenti.

Viene definito inoltre che, come richiesto dalle indicazioni fornite, tale presentazione non supererà le *tre* diapositive di contenuto (ivi esclusa l'eventuale pagina iniziale riportante nome e logo del gruppo, non considerata di contenuto ma di presentazione) e dovrà contenere le seguenti informazioni:

- quanto realizzato dal giorno di formazione dei gruppi (in seguito, dall'ultimo _Diario di Bordo_);
- quanto fare nel prossimo periodo;
- difficoltà incontrate dal giorno di formazione dei gruppi (in seguito, dall'ultimo _Diario di Bordo_);
- dubbi su come procedere;

così come stabilito sempre dalle indicazioni fornite.

== Prime analisi sui sistemi di ticketing e di gestione compiti

Durante la riunione è stato proposto di provare ad utilizzare le _issue_ di GitHub come piattaforma di ticketing e di utilizzare le _board_ dello stesso servizio per avere rappresentazione visiva dei compiti da fare e permettere l'auto-assegnazione e l'assegnazione degli stessi.

Seguiranno nei giorni seguenti la modifica del Repository GitHub che ospita la documentazione per la realizzazione delle prime prove (che includeranno, al momento in via provvisoria, anche la realizzazione di alcune label personalizzate e comunque di quanto necessario allo svolgimento delle prove).

== Utilizzo di Google Calendar per la gestione degli eventi

In seguito ad alcune prove di utilizzo, il gruppo propone di utilizzare in pianta stabile l'applicativo _Google Calendar_ per la gestione degli appuntamenti e riunioni.
L'account utilizzato a tale scopo sarà l'account Google utilizzato per le comunicazioni esterne del gruppo.

== Modifiche minori al codice typst dei verbali

Il gruppo propone, con l'ottica di migliorare la gestione dei _file_ e in particolar modo dei verbali, l'utilizzo della seguente nomenclatura per indicare la tipologia di documento:

- *VI* per indicare un *Verbale Interno*;
- *VE* per indicare un *Verbale Esterno*;
- *DB* per indicare un *Diario di Bordo*;

Dato che l'aggiornamento del sito web avviene automaticamente, nel momento in cui viene caricato un nuovo file, per facilitare la denominazione di tali documenti verrà apposto, alla riga 1 del file sorgente (_.typ_) di ogni documento, la dicitura:


#align(center)[*```//[Tipo Verbale] GG-MM-AAAA_#```*]


dove:
- *```[Tipo Verbale]```* indica la dicitura scelta tra *VI*, *VE* o *DB*
- *``` GG-MM-AAAA```* indica il giorno in cui l'evento descritto ha avuto luogo scritto nel formato europeo
- *```#```* indica l'eventuale numero di riunione

Quest'ultimo carattere, ovvero *```#```*, è presente *se e solo se* nello stesso giorno sono state condotte più riunioni dello stesso tipo. Tale numero (con annesso il carattere _Underscore_) *non* va specificato per la prima riunione cronologicamente avvenuta.

Esempio di dicitura che corrisponde a questo verbale:
#align(center)[*```//VI 23-10-2024```*]
#pagebreak()
= Esiti della riunione

Il gruppo conclude la riunione con l'obbiettivo di realizzare le prime prove con GitHub Action. Si è inoltre deciso di concordare chi avrà il compito di presentare il primo _Diario di Bordo_ che si terrà il giorno 28 Ottobre 2024.