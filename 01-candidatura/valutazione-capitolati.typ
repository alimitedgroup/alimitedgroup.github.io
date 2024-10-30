// VDC 29-10-2024

#import "../lib.typ": *
#show: doc => documento(
  nome: [Valutazione dei capitolati],
  data: datetime(day: 28, month: 10, year: 2024),
  regmodifiche: (
    ("0.0.4", "30-10", "Marco Piccoli", "-", "Aggiunta delle informazioni riguardanti i capitolato C5, C7 e C8 piccole modifiche"),
    ("0.0.3", "29-10", "Matteo Schievano", "-", "Aggiunta delle informazioni riguardanti i capitolati C2, C3 e C4"),
    (
      "0.0.2",
      "28-10",
      "Matteo Schievano",
      "-",
      "Realizzazione delle Informazioni generali ed aggiunta delle informazioni riguardanti il capitolato C1",
    ),
    (
      "0.0.1",
      "28-10",
      "Matteo Schievano",
      "-",
      "Creazione struttura e template documento",
    ),
  ),
  versione: [0.0.4],
  stato: [In redazione],
  doc,
)

= Informazioni generali

Il presente documento è stato redatto per motivare la scelta, presente nella @capitolato_scelto, del gruppo _ALimitedGroup_ di candidarsi per il capitolato:

#align(center)[*C6 = Sistema di gestione di un magazzino distribuito* \ avente come proponente \ #M31]

Di seguito saranno sintetizzate, per ogni capitolato, i punti a favore e a sfavore che i componenti hanno individuato.

#pagebreak()
= Capitolato C1: Artificial QI di _Zucchetti_

Il capitolato *C1 = Artificial QI* di *_Zucchetti_* propone di realizzare un programma in grado di valutare la capacità di rispondere ad una lista di problemi e domande da parte di un sistema che utilizza l'_Intelligenza Artificiale_.\

Lo scopo dunque è quello di permettere all'utilizzatore finale di comprendere in maniera approfondita come le scelte fatte di volta in volta cambino tale sistema, permettendo dunque di migliorare lo stesso.\

Sicuramente un progetto moderno, adatto ad un periodo in cui l'_Intelligenza Artificiale_ copre un ruolo importante nello sviluppo. Il capitolato permetterebbe sicuramente di approfondire questo contesto e il campo degli _Large Language Models (LLM)_ sviluppando un progetto _Open Source_ e con importante flessibilità implementativa.\

Valutando il capitolato, tuttavia, varie parti del gruppo hanno espresso la loro preoccupazione per il futuro di quanto sviluppato in quanto progetti atti alla valutazione di _LLM_ sono tutt'ora in sviluppo. \

Concludendo e considerando anche gli interessi comuni non fortemente inclinati verso l'_Intelligenza Artificiale_, il gruppo ha deciso di non proseguire la candidatura con questo capitolato.

#pagebreak()
= Capitolato C2: Vimar GENIALE di _Vimar_

Il capitolato *C2 = Vimar GENIALE* di *_Vimar_* propone la realizzazione di un applicativo adibito al supporto degli installatori. Nel dettaglio, l'applicativo dovrebbe essere in grado di rispondere a domande tecniche riguardanti varie tipologie di impianti prendendo come fonti risorse sia testuali che grafiche.\

Il gruppo si è dimostrato inizialmente interessato a questo capitolato per via del forte aiuto che un sistema simile potrebbe fornire agli installatori e al lavoro che quotidianamente svolgono, nonché per alcune delle tecnologie proposte per lo sviluppo, quali l'utilizzo di ambienti _containerizzati_, _Intelligenza Artificiale Generativa_ e, opzionalmente, degli _Amazon Web Services (AWS)_.\

Il gruppo ha poi tuttavia riconsiderato la scelta di questo capitolato per via dell'attuale sviluppo nel mercato di sistemi simili (che ugualmente sfruttano i _Large Language Models_ e l'_Intelligenza Artificiale_) e per le scelta comunicativa riguardantre la richiesta di ulteriori informazioni in merito al capitolato, scelta da noi ritenuta complessivamente poco efficace.

#pagebreak()
= Capitolato C3: Automatizzare le routine digitali tramite l'intelligenza generativa di _VarGroup_

Il capitolato *C3 = Automatizzare le routine digitali tramite l'intelligenza generativa* di *_VarGroup_* propone di realizzare un sistema che permetta l'esecuzione automatica di vari _workflows_ composti da vari _tasks_ dato un _prompt_ fornito dall'utente.\

Il gruppo ritiene che questo capitolato proponga un _concept_ sicuramente interessante e con forti potenzialità: combina infatti temi moderni come l'_Intelligenza Artificiale_ e l'attività quotidiana, riuscendo potenzialmente a semplificare l'esecuzione delle stesse.
Un ulteriore punto favore è anche l'utilizzo di linguaggi di programmazione e strumenti recenti, quali *C\#* e *React*, nonché risorse oramai molto diffuse quali gli _Amazon Web Services (AWS)_.
In ultimo anche il buon supporto fornito dall'azienda è stato valutato molto positivamente.\

_ALimitedGroup_ ha tuttavia preferito non proseguire con la candidatura di questo capitolato per la sua possibile capacità di resistenza a cambiamenti futuri: per poter funzionare quanto sviluppato dovrà necessariamente fare affidamento alle _API_ fornite dai vari programmi e servizi da "automatizzare". Un cambiamento di queste _API_ potrebbe dunque fortemente compromettere l'efficacia di quanto sviluppato.
In secondo luogo ha avuto importanza in questa decisione anche gli interessi dei componenti, non fortemente inclinati verso l'_Intelligenza Artificiale Generativa_.

#pagebreak()
= Capitolato C4: NearYou - Smart custom advertising platform di _SyncLab_

Il capitolato *C4 = NearYou - Smart custom advertising platform* di *_SyncLab_* ha come obbiettivo quello di realizzare una piattaforma di _advertising_ personalizzato mediante l'aiuto dell'_Intelligenza Artificiale_ cercando di così risolvere definitvamente il problema della pubblicità non mirata e poco efficace.\

Il gruppo _ALimitedGroup_ ha mosso un interesse particolare nei confronti di questo capitolato e per questo motivo ha infatti deciso di realizzare un incontro formativo con l'azienda i cui esiti possono essere consultati nel relativo #link("https://alimitedgroup.github.io/VE%2023-10-2024%201.0.0%20(SyncLab).pdf")[#underline[verbale esterno]].\

Nel dettaglio, _ALimitedGroup_ ha valutato positivamente la possibilità di approfondire tecnologie di gestione di _Big Data_ e _Data Streaming_ e l'occasione di realizzare una piattaforma che, per essere efficace, deve avere un'architettura in grado di supportare un alto numero di utenti ed eventi.
Ha inoltre ritenuto molto positivo l'impiego dei _Large Language Models (LLM)_ ad un caso diverso dalla realizzazione di un _chatbot_ e con obbiettivi assolutamente validi per il mercato attuale.\

In conclusione, il gruppo ha tuttavia deciso di non proseguire con la candidatura del presente capitolato: ha infatti mosso una forte preoccupazione in merito alla gestione corretta delle informazioni sensibili degli utenti, specialmente considerando i ferrei regolamenti in materia da parte dell'Unione Europea.

#pagebreak()
= Capitolato C5: 3Dataviz di _SanMarco Informatica_

Il capitolato *C5 = 3Dataviz* proposto da *_SanMarco Informatica_* ha come scopo la realizzazione di un'interfaccia web per la visualizzazione in forma tridimensionale di dati tramite barre verticali (istrogramma 3D) e i relativi dati di origine (tabella).\

Il gruppo trova interessante ed innovativo questo progetto soprattutto per la sua scalabilità all'interno del mercato odierno, infatti la visualizzazione di dati per aziende e liberi professionisti è diventata di carattere rilevante oggigiorno.
All'interno del capitolato, inoltre, _ALimitedGroup_ trova molto positivo l'uso di tecnologie come *_React_*, *_Angular_* e *_TypeScript_* per la realizzazione di tutta l'architettura . \

Tali tecnologie, purtroppo, sono concentrate nello sviluppo massiccio di codice lato _frontend_ rispetto ad altri capitolati visti, il gruppo, infatti, è interessato di più alla realizzazione di codice lato _backend_. \

In conclusione il gruppo ha deciso di non proseguire con la candidatura del presente capitolato.
#pagebreak()
= Capitolato C6: Sistema di gestione di un magazzino distribuito di #M31 <capitolato_scelto>

#pagebreak()
= Capitolato C7: LLM: Assistente Virtuale di _Ergon_
Il capitolato *C7 = LLM: Assistente Virtuale* proposto da *_Ergon_* ha come scopo la realizzazione di un assistente virtuale che, per l'appunto, assista i clienti nella ricerca di informazioni sui prodotti disponibili e risponda alla domande più frequenti.\

Il gruppo _ALimitedGroup_ ha mosso un interesse particolare nei confronti di questo capitolato e per questo motivo ha infatti deciso di realizzare un incontro formativo con l'azienda i cui esiti possono essere consultati nel relativo #link("https://alimitedgroup.github.io/VE%2023-10-2024%201.0.1%20(Ergon).pdf")[#underline[verbale esterno]].\

Nel dettaglio, il gruppo, ha valutato molto positivamente la formazione e il supporto offertaci dall'azienda, infatti, quest'ultima mette a disposizione corsi di formazione specifici e l'affiancamento diretto con un referente dedicato.
L'azienda _Ergon_, inoltre, è flessibile sulle tecnologie da utilizzare per la realizzazione di questo capitolato facendo, così, aumentare il nostro interesse.\

Al contrario, però, l'integrazione necessaria di un sistema di raccolta feedback da parte degli utenti per migliorare continuamente le risposte degli _LLM_ comporta l'aumento di:
#list([Complessità],
[Configurazione della _LLM_],
[Addestramento della _LLM_]) 
Questo potrebbe richiedere ulteriore tempo per essere ottimizzati in maniera sufficiente.\

In conclusione il gruppo ha deciso di non proseguire con la candidatura del presente capitolato.
#pagebreak()
= Capitolato C8: _Requirement Tracker_ di _BlueWind_

Il capitolato *C8 = _Requirement Tracker_ - Plug-in VS Code* proposto da *_Bluewind_* chiede la realizzazione di un _plug-in_ per _Visual Studio Code_ che automatizzerà il tracciamento dei requisiti di progetto nel codice sorgente e fornirà suggerimenti per migliorare la qualità dei requisiti.\

Il gruppo valuta positivamente la possibilità di imparare lo sviluppo in ambito _embedded_, ma soprattutto la creazione di un prodotto che potrebbe far risparmiare tempo prezioso durante lo sviluppo embedded.\

_ALimitedGroup_ giudica, invece, negativamente:
#list([la descrizione del capitolato],[l'utilizzo del _plug-in_ per _visual studio code_]) 
La prima per essere molto sintetica e poco chiara, mentre la seconda sulla base delle conoscenze poco applicabili al mercato del lavoro. \

Inoltre, su questo progetto, c'è un'alta possibilità di fallimento essendo, il problema alla base, molto ampio e complesso. \

In conclusione il gruppo ha deciso di non proseguire con la candidatura del presente capitolato.
#pagebreak()
= Capitolato C9: BuddyBot di _AzzurroDigitale_