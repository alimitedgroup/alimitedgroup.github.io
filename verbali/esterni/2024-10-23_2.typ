// VE 23-10-2024_2

#import "../../lib.typ": *
#set text(lang: "it")
#set list(indent: 1em)
#set enum(indent: 1em)
#show: doc => verbale(
  data: [23-10-2024],
  tipo: [esterno],
  regmodifiche: (
    /*("1.0.0", "2024-10-15", "Samuele Esposito", "-", "Approvazione documento"),
    ("0.1.0", "17-10", "Marco Piccoli", "-", "Modifica e verifica documento"),*/
    ("0.0.2", "23-10", "Sara Ferraro", "-", "Redazione documento"),
    ("0.0.1", "23-10", "Sara Ferraro", "-", "Creazione struttura e template documento"),
  ),
  versione: [0.0.2],
  stato: [Redatto],
  presenze: (
    "Samuele Esposito",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Lorenzo Stefani",
    "Sara Ferraro",
  ),
  odg: [Primo incontro di _ALimitedGroup_ con l'azienda _Ergon_: vengono chiariti dubbi sorti durante la presentazione del capitolato],
  doc,
)

= Informazioni generali
Con il seguente documento si attesta che in data *23 Ottobre 2024* è stata condotta, in modalità *virtuale*, una riunione durata dalle ore *15.00* alle ore *15.30* con l'azienda _Ergon Informatica Srl_.\
L'incontro si è svolto tramite la piattaforma _Zoom_.\

L'azienda _Ergon Informatica Srl_ è stata rappresentata da:
- Gianluca Carlesso
- Anna Tieppo.


= Motivo della riunione
Dopo aver analizzato il capitolato _LLM: ASSISTENTE VIRTUALE_ presentato dall'azienda, il gruppo _ALimitedGroup_ ha chiesto dei chiarimenti riguardanti:
- tipologia di LLM utilizzabili
- tipologia di documenti da testare
- dominio di applicazione del modello
- template di domanda e di risposta
- hosting del servizio
- formazione e supporto fornito dall'azienda

= Resoconto
== LLM utilizzabili
L'azienda ha assicurato piena libertà nella scelta dell'LLM.\
Potranno essere utilizzati modelli di OpenAI, Meta.\
In caso di necessità l'azienda fornirà anche account aziendali.\

== Documenti da testare
L'azienda ha specificato che i documenti da testare saranno testuali: documenti Word,PDF...\
È opzionale l'analisi di immagini.

== Dominio di applicazione
L'azienda ha chiarito che il dominio di applicazione del modello sarà specifico, non generico.\
Verrà comunicato.

== Template di domanda e di risposta
L'azienda ha puntualizzato che verrà utilizzato un template contenente un elenco di domande e risposte frequenti. Il processo che l'LLM  dovrà seguire è strutturato come segue:
  - Interpretazione della domanda: l'LLM analizzerà la domanda posta dall'utente, cercando di comprenderne il significato e le intenzioni.

  - Verifica nel template: una volta interpretata la domanda, l'LLM dovrà confrontarla con l'elenco delle domande già presenti nel template predefinito. Questo confronto sarà basato su somiglianze semantiche, non necessariamente su una corrispondenza esatta di parole.

  - Risposta basata sul template:
    - se la domanda è già presente nel template: l'LLM fornirà la risposta corrispondente dal template, evitando la generazione di una nuova risposta.
    - se la domanda non è presente nel template: l'LLM utilizzerà le sue capacità di AI generativa per elaborare e fornire una nuova risposta basata sulle informazioni di cui dispone e sul contesto della domanda.

== Hosting
L'azienda ha chiarito che non è necessario occuparsi dell'hosting del progetto. Sarà sufficiente fornire il codice sorgente all'interno di una repository (GitHub,GitLab).\
_Ergon Informatica Srl_ si occuperà di gestire l'hosting del servizio.

== Formazione e supporto
L'azienda fornisce dei corsi online da seguire per l'approfondimento degli argomenti da trattare.\
Verrà fornito supporto tramite chiamate settimanali programmate.

== Altro 
L'azienda ha consigliato l'utilizzo di _.NET MAUI_ per la realizzazione dell'interfaccia utente.\
Ha inoltre dichiarato che è facoltativa la progettazione di una web app.






