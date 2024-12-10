// VI 15-10-2024

#import "../../lib/legacy.typ": *
#show: doc => verbale(
  data: datetime(day: 15, month: 10, year: 2024),
  regmodifiche: (
    ("1.0.0", "30-10", "Samuele Esposito", "-", "Approvazione documento"),
    ("0.1.0", "17-10", "Marco Piccoli", "-", "Modifica e verifica documento"),
    ("0.0.2", "16-10", "Schievano Matteo", "-", "Redazione documento"),
    ("0.0.1", "15-10", "Samuele Esposito", "-", "Creazione struttura e template documento"),
  ),
  versione: [1.0.0],
  stato: [Approvato],
  presenze: (
    "Emanuele Artusi",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Samuele Esposito",
    "Sara Ferraro",
  ),
  odg: [Prima riunione di _ALimitedGroup_: vengono proposte le prime _task_ da portare a termine],
  doc,
)

= Informazioni generali

#inizio-verbale-interno([*virtuale*], [*15 Ottobre 2024*], [*14.30*], [*15.34*])

1. Decisione del nome del gruppo
2. Realizzazione del logo del gruppo
3. Definizione dell'email del gruppo
4. Definizione dei canali di comunicazione
5. Definizione struttura generale dei verbali
6. Valutazione dei capitolati disponibili

Data l'assenza di un componente eventuali correzioni alle decisioni riportate in questo documento saranno debitamente verbalizzate a seguito di
nuova riunione.
#pagebreak()

= Dettaglio riunione

== Decisione del nome del gruppo

Durante la riunione è stato proposto _*ALimitedGroup*_ come nome di
rappresentanza del nostro gruppo.

== Realizzazione del logo del gruppo

Successivamente l'approvazione da parte di tutti i presenti del nuovo nome, è stato creato un logo che rappresentava appieno i valori del gruppo:
#figure(
  image("../../assets/altd.png", width: 40%, format: "png"),
  caption: [Logo scelto dati presenti],
)<logo>

Dopo aver discusso internamente, si è deciso ufficialmente di utilizzare l'immagine in @logo come logo per rappresentare il nostro gruppo.

== Definizione dell'email del gruppo

Per tutte le comunicazioni verso l'esterno da parte del nostro gruppo è stato proposto l'utilizzo della seguente mail:\
#align(center)[#emph[#link("mailto:alimitedgroup@gmail.com")]]

== Definizione dei canali di comunicazione

Durante la riunione è stato per il momento proposto di utilizzare i seguenti
canali di comunicazione interne:

- _Telegram_ è stato proposto di utilizzare un gruppo _Telegram_ per comunicare
  di informazioni generali riguardante le attività del gruppo (ad esempio, per
  proporre nuove riunioni)
- _Discord_: è stato proposto di utilizzare un server _Discord_ per
  realizzare riunioni virtuali

== Definizione della struttura generale dei verbali

Durante la riunione è stato concordato l'utilizzo di un _template standard_
per la redazione dei verbali di riunioni interne ed esterne.
#pagebreak()
== Valutazione dei capitolati disponibili

Durante la riunione è stato proposto che, in base ai comuni interessi e alle
conoscenze attuali, i seguenti capitolati, nell'ordine di preferenza, potrebbero
essere di interesse per lo sviluppo:

1. C6 = *Sistema di Gestione di un Magazzino Distribuito* avente
  come proponente *M31*
2. C2 = *Vimar GENIALE* avente come proponente *VIMAR*
3. C7 = *LLM: Assistente Virtuale* avente come proponente *Ergon*

È stato proposto, inoltre, di contattare il proponente _M31_ per porre alcune
ulteriori domande riguardanti il capitolato, tra cui:

- Richiesta maggiori dettagli in merito alla gestione della concorrenza
- Richiesta maggiori dettagli in merito allo svolgimento degli _Unit Test_
- Richiesta ulteriori dettagli riguardo la divisione architetturale proposta

= Esiti della riunione

In seguito al termine della riunione, il gruppo decide di conocordare una
nuova riunione da svolgersi il prima possibile per confermare quanto
proposto nel seguente documento con tutti i membri.

Ha altresì proposto di concordare l'invio, quanto prima, di una mail per richiedere un colloquio con _M31_.