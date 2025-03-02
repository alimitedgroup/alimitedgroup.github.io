# Requisiti

## Requisiti Hardware

## Requisiti Software

In merito al Sistema Operativo, le componenti del sistema non fanno distinzione in quanto il Sistema si appoggia completamente a **Docker**<!--raw-typst#super("G")--> per garantire la sua esecuzione e le immagini utilizzate provengono direttamente dai _repository_<!--raw-typst#super("G")--> di Docker o vengono compilate mediante il compilatore di Go scaricato anch'esso dai _repository_<!--raw-typst#super("G")--> di Docker<!--raw-typst#super("G")--> .

Per assicurare dunque il corretto funzionamento delle componenti del Sistema è dunque necessario sia installato nella macchina il _Software_ Docker<!--raw-typst#super("G")--> .

Per facilitare l'avvio del Sistema è possibile utilizzare l'applicativo **Just**, reperibile all'indirizzo [https://github.com/casey/just](https://github.com/casey/just): si tratta di una Utility in grado di eseguire, mediante un semplice comando, tutti i comandi a loro volta necessari per l'avvio del Sistema.
Il suo utilizzo resta tuttavia completamente facoltativo in quanto è pur sempre possibile inserire manualmente i comandi.
I comandi che **Just** esegue sono reperibili nel file `JustFile`.

Di seguito saranno comunque esposti tutti i Software utilizzati dal Sistema con le versioni utilizzate da _ALimitedGroup_.

[COMPLETARE ELENCO E METTERE VERSIONI CORRETTE]

<!--typst-begin-exclude-->
  - `Docker`, con versione `1.0.0`
  - `Go (compilatore)`, con versione `1.0.0`
  - `NATS`, con versione `1.0.0`
<!--typst-end-exclude-->

<!--raw-typst

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#800080")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#bf7fbf")
    } else {
      rgb("#d8b2d8")
    },
    columns: (1fr, 1fr),
    align: center,
    table.header(
      text(12pt, fill: white)[*Software*],
      text(12pt, fill: white)[*Versione*],
    ),
    "Docker","",
    "Go (compilatore)","",
    "NATS","",
)
)

-->

