#import "../../../lib/verbale.typ" : *

#show: body => verbale(
  data: datetime(day:26, month:11, year:2024),
  tipo: [interno],
  versioni: (
    (
      vers: "0.1.0",
      date: datetime(day: 26, month: 11, year: 2024),
      autore: p.marco,
      verifica: p.sara,
      descr: "Redazione del contenuto",
    ),
  ),
  stato: [In redazione],
  presenze: (
    p.emanuele,
    p.samuele,
    p.sara,
    p.loris,
    p.marco,
    p.matteo,
    p.lorenzo
  ),
  odg: [Ottava riunione di _ALimitedGroup_: vengono decisi i ruoli, vengono decisi i tempi limite e la struttura per redigere i prossimi documenti],
  body,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*26 Novembre 2024*], [*14.30*], [*16.30*])
+ 
+ Aggiornamenti sui lavori in corso
+
+ Vengono assegnati i ruoli sino al giorno 02-12-2024

#pagebreak()
= Dettaglio riunione
==
==
==
== Vengono assegnati i ruoli sino al giorno 02-12-2024
I presenti del gruppo _ALimitedGroup_ decidono che, sino al giorno 02-12-2024, saranno assegnati ai seguenti componenti questi ruoli: \

#align(center)[*#persona(p.loris)* $arrow.r$ *Responsabile*] \
#align(center)[*#persona(p.samuele)* $arrow.r$ *Amministratore*] 
#align(center)[*#persona(p.marco)* $arrow.r$ *Amministratore*]\

#align(center)[*#persona(p.sara)* $arrow.r$ *Verificatore*] 
#align(center)[*#persona(p.lorenzo)* $arrow.r$ *Verificatore*]\

#align(center)[*#persona(p.emanuele)* $arrow.r$ *Analista*]
#align(center)[*#persona(p.matteo)* $arrow.r$ *Analista*]\

Sarà assegnato a *#persona(p.marco)* il compito di redigere questo verbale, mentre ai rimanenti componenti di _ALimitedGroup_ il proseguio della redazione del glossario e l'inizio delle norme e del piano di progetto.
#pagebreak()
= Esiti della riunione

#pagebreak()

= Tabella delle decisioni e delle azioni