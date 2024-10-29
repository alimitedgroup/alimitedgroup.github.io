// VI 28-10-2024

#import "../../lib.typ": *
#show: doc => verbale(
  regmodifiche: (
    ("0.0.3", "29-10", "Matteo Schievano", "-", "Modifiche di formattazione e correzioni minori"),
    ("0.0.2", "28-10", "Sara Ferraro", "-", "Redazione documento"),
    ("0.0.1", "28-10", "Sara Ferraro", "-", "Creazione struttura e template documento"),
  ),
  data: datetime(day: 28, month: 10, year: 2024),
  versione: [0.0.3],
  stato: [Redatto],
  presenze: (
    "Lorenzo Stefani",
    "Loris Libralato",
    "Emanuele Artusi",
    "Matteo Schievano",
    "Samuele Esposito",
    "Sara Ferraro",
  ),
  odg: [Quarta riunione di _ALimitedGroup_: vengono programmate e avviate le attività per la presentazione della candidatura e apportati alcuni miglioramenti al repository.],
  doc,
)

= Informazioni generali

#inizio-verbale-interno([*in presenza (Padova, complesso Paolotti)*], [*28 Ottobre 2024*], [*12.30*], [*15.30*])

+ Valutazione comparativa dei capitolati
+ Pianificazione temporale del progetto
+ Analisi dei ruoli e relative responsabilità
+ Analisi dei costi e preventivo
+ Gestione documentazione e repository

#pagebreak()

= Dettaglio riunione

== Valutazione comparativa dei capitolati
Il gruppo ha condotto un'analisi approfondita dei capitolati proposti, basando la valutazione su:
- Studio dettagliato della documentazione fornita
- Esiti dei colloqui con le aziende proponenti
- Discussione collegiale delle opportunità e criticità
- Valutazione delle competenze richieste in relazione alle capacità del team

Il gruppo ha confermato la seguente graduatoria di preferenza:
1. *C6-Sistema di gestione di un magazzino distribuito* (_M31_)
2. C4-NearYou - Smart custom advertising platform (_SyncLab Srl_)
3. C7-LLM: Assistente virtuale(_Ergon Informatica Srl_).

La scelta del *C6* come _capitolato preferito_ riflette l'interesse del gruppo per le tecnologie moderne e le architetture distribuite, oltre alla solidità della proposta progettuale presentata da _M31_.\
La decisione è stata presa all'unanimità dei presenti, considerando sia gli aspetti tecnici che le opportunità di crescita professionale offerte dal progetto.

== Pianificazione temporale del progetto
Dopo un'attenta analisi delle disponibilità e delle competenze individuali, il gruppo ha stabilito che:

- Ogni componente fornirà 92 ore produttive al progetto.
- Verranno dedicate 5 ore produttive settimanali individuali al progetto.

*Milestone principale*

Data di completamento progetto: *31/03/2025*

Questa pianificazione tiene conto delle diverse velocità di apprendimento e permette una gestione flessibile delle risorse, garantendo che ogni membro del team possa contribuire al massimo delle proprie potenzialità, indipendentemente dal livello di esperienza iniziale.\
Vengono anche considerate le settimane di pausa natalizia ed eventuali imprevisti.

== Analisi dei ruoli e relative responsabilità
I componenti del gruppo hanno analizzato attentamente le responsabilità affidate a ciascun ruolo.\
Ipotizzando un approccio SCRUM, con Sprint bisettimanali, si preve il seguente ammontare di tempo da assegnare a ciascun ruolo.

#table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: horizon,
  stroke: 0.7pt,
  [*Ruolo*], [*Ore*], [*(%)*],
  [Programmatore], [180.00], [28,0%],
  [Progettista], [150.00], [23,3%],
  [Verificatore], [136.00], [21,1%],
  [Amministratore], [60.00], [9,3%],
  [Analista], [60.00], [9,3%],
  [Responsabile], [58.00], [9,0%],
  [*Totale*], [*644.00*], [*100%*],
)


== Analisi dei costi e preventivo
Il gruppo _ALimitedGroup_, in base ai costi associati a ciascun ruolo, ha determinato un preventivo totale di *12.930,00 €* per il completamento del progetto.

== Gestione documentazione e repository
Il gruppo ha definito una organizzazione sistematica della documentazione:
1. Sito Web
  - Pianificazione degli aggiornamenti necessari al sito web collegato al repository GitHub
  - Implementazione delle modifiche per migliorare la presentazione della documentazione: viene indicata la versione affianco al documento.

2. Documentazione di Candidatura
- Organizzazione della cartella #emph[01_candidatura/] contenente:
  - Verbali interni ed esterni
  - Lettera di presentazione della candidatura
  - Valutazione capitolati
  - Preventivo dei costi e pianificazione temporale
  - Diari di bordo
- Creazione delle issue nella board di GitHub

#pagebreak()

= Esiti della riunione

Il gruppo conclude la riunione stabilendo che:
- Loris Libralato avrà il compito di redarre la _dichiarazione degli impegni_
- Matteo Schievano avrà il compito di redarre la _valutazione dei capitolati_
- Emanuele Artusi avrà il compito di redarre la _lettera di presentazione della candidatura_.

\ I documenti dovranno essere terminati entro il 31/10/2024 per permettere la loro verifica, eventuale modifica e approvazione.














