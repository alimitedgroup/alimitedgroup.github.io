# Ricevere le notifiche

Il Sistema al momento non possiede un _endpoint_ per poter recuperare le notifiche, ma è possibile utilizzare `nats`#super[G] per ascoltare i canali in cui vengono pubblicati.

Per farlo è sufficiente installare `nats`#super[G] (per istruzioni si consiglia la lettura del paragrafo dedicato nel [Repository del progetto](https://github.com/nats-io/natscli#installation)) ed eseguire il comando:

`nats sub "stock.alert.>"`

Ci si troverà quindi in ascolto di tutte le notifiche inviate dal sistema.

<!--raw-typst #pagebreak() -->