// VE 23-10-2024_2

#import "../../lib.typ": *
#show: doc => verbale(
  data: datetime(day: 23, month: 10, year: 2024),
  tipo: [esterno],
  regmodifiche: (
    ("1.0.1", "29-10", "Matteo Schievano", "-", "Aggiunta sezione per approvazione esterna"),
    (
      "1.0.0",
      "25-10",
      "Matteo Schievano",
      "-",
      "Modifiche di formattazione minori e approvazione documento",
    ),
    ("0.1.0", "23-10", "Marco Piccoli", "-", "Modifica e verifica documento"),
    ("0.0.2", "23-10", "Sara Ferraro", "-", "Redazione documento"),
    ("0.0.1", "23-10", "Sara Ferraro", "-", "Creazione struttura e template documento"),
  ),
  versione: [1.0.0],
  stato: [Approvato],
  presenze: (
    "Samuele Esposito",
    "Loris Libralato",
    "Marco Piccoli",
    "Matteo Schievano",
    "Lorenzo Stefani",
    "Sara Ferraro",
  ),
  odg: [Primo incontro di _ALimitedGroup_ con l'azienda _Ergon Informatica_: vengono chiariti i dubbi sorti durante la presentazione del capitolato],
  disambiguatore: [(Ergon)],
  doc,
)

= Informazioni generali
#inizio-verbale-esterno([*virtuale*], [*23 Ottobre 2024*], [*15.00*], [*15.30*], [_Ergon Informatica Srl_ ])
- chiarimenti sul capitolato e sulle tecnologie da utilizzare
- esposizioni domande riguardante il progetto.

L'incontro si è svolto tramite la piattaforma _Zoom_.\

L'azienda _Ergon Informatica Srl_ è stata rappresentata da:

- Gianluca Carlesso
- Anna Tieppo.
#pagebreak()


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
L'azienda ha assicurato piena libertà nella scelta dell'_LLM_.\
Potranno essere utilizzati modelli di _OpenAI_, _Meta_.\
In caso di necessità l'azienda fornirà account aziendali.\

== Documenti da testare
L'azienda ha specificato che i soli documenti da testare saranno testuali, ovvero documenti _PDF_ e _Word_. \
_Ergon Informatica Srl_ ha spiegato, inoltre, come l'analisi di immagini sia opzionale.

== Dominio di applicazione
L'azienda ha chiarito che il dominio di applicazione del modello sarà specifico, non generico.\
Verranno comunicate, successivamente all'aggiudicazione del capitolato, tutte le informazioni relative al dominio.

== Template di domanda e di risposta
L'azienda ha puntualizzato che verrà utilizzato un template contenente un elenco di domande e risposte frequenti. Il processo che l'LLM dovrà seguire è strutturato come segue:
- Interpretazione della domanda: l'LLM analizzerà la domanda posta dall'utente, cercando di comprenderne il significato e le intenzioni.

- Verifica nel template: una volta interpretata la domanda, l'LLM dovrà confrontarla con l'elenco delle domande già presenti nel template predefinito. Questo confronto sarà basato su somiglianze semantiche, non necessariamente su una corrispondenza esatta di parole.

- Risposta basata sul template:
  - se la domanda è già presente nel template: l'LLM fornirà la risposta corrispondente dal template, evitando la generazione di una nuova risposta.
  - se la domanda non è presente nel template: l'LLM utilizzerà le sue capacità di AI generativa per elaborare e fornire una nuova risposta basata sulle informazioni di cui dispone e sul contesto della domanda.

== Hosting
L'azienda ha chiarito che non è necessario occuparsi dell'hosting del progetto, e che sarà sufficiente fornire il codice sorgente all'interno di una repository (GitHub,GitLab).\
_Ergon Informatica Srl_ si occuperà di gestire l'hosting del servizio.

== Formazione e supporto
L'azienda proponente mette a disposizione del gruppo dei corsi online da seguire per l'approfondimento degli argomenti da trattare; inoltre verrà fornito supporto tramite chiamate settimanali programmate.

== Altro
L'azienda ha consigliato l'utilizzo di _.NET MAUI_ per la realizzazione dell'interfaccia utente.\
Ha dichiarato, inoltre, che la progettazione di una web app è facoltativa.

#pagebreak()

= Esiti della riunione
La riunione con l'azienda _Ergon Informatica Srl_ è stata esplicativa e formativa per tutti i presenti del gruppo, i rappresentati dell'azienda hanno risposto esaustivamente toccando punto per punto il progetto didattico. \
Tutti i presenti del gruppo _ALimitedGroup_ ringraziano l'azienda _Ergon Informatica Srl_ e i suoi rappresentanti per la disponibilità e la professionalità mostrataci durante il _meeting_.

#pagebreak()
= Approvazione esterna
#approvazione-esterna(nome_parte_esterna: [*Ergon Informatica Srl*])




