# Requisiti Software

In merito al Sistema Operativo, le componenti del Sistema non fanno distinzione in quanto
il Sistema si appoggia completamente a **Docker**#super[G] per garantire la sua esecuzione
e le immagini utilizzate provengono direttamente dai _repository_#super[G] di Docker#super[G] o
vengono compilate mediante il compilatore di Go#super[G] scaricato anch'esso dai
_repository_#super[G] di Docker#super[G].

Per assicurare dunque il corretto funzionamento delle componenti del Sistema è dunque
necessario sia installato nella macchina il _Software_ Docker#super[G].

Per facilitare l'avvio del Sistema è possibile utilizzare l'applicativo **Just**, reperibile all'indirizzo [https://github.com/casey/just](https://github.com/casey/just): si tratta di una Utility in grado di eseguire, mediante un semplice comando, tutti i comandi a loro volta necessari per l'avvio del Sistema.
Il suo utilizzo resta tuttavia completamente facoltativo in quanto è pur sempre possibile inserire manualmente i comandi.
I comandi che **Just** esegue sono reperibili nel file `JustFile`.

La maggior parte di quanto necessario per compilare e avviare il Sistema viene automaticamento eseguito da `Docker`. Per eseguire tutte le operazioni possibili è dunque necessario avere un'installazione funzionante dei seguenti applicativi:

<!--typst-begin-exclude-->
  - `Docker Engine`, con versione `28.0.1`
  - `Just`, con versione `1.39.0`
  - `NATS`, con versione `2.10.25`
<!--typst-end-exclude-->

<!--raw-typst
#figure(
  table(
    columns: (1fr, 1fr),
    "Software", "Versione",
    "Docker Engine","28.0.1",
    "Just","1.39.0",
    "NATS","2.10.25",
  ),
  caption: [Elenco dei _Software_ utilizzati e loro versioni]
)
-->

