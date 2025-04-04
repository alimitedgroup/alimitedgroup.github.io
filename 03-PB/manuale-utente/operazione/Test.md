La realizzazione del Sistema è proceduta di pari passo con la realizzazione e l'esecuzione di test#super[G]. Qui sarà brevemente spiegato come eseguire tali test#super[G].

Per informazioni approfondite si consiglia la lettura del [**Piano di Qualifica#super[G] v.2.0.0**](https://alimitedgroup.github.io/PQ%20v2.0.0.pdf).

# Esecuzione dei _test_ di unità ed integrazione <!--raw-typst <testpar> -->

Per eseguire i tеst di unità ed integrazione è sufficiente aprire un prօmpt dei comandi (o _shell_) nella radice dell'installazione ed eseguire questi due comandi:

`go generate ./...`
`go tеst -race -covermode atomic ./...`

L'output sarà simile al seguente:

```
? github.com/alimitedgroup/MVP/common [no tеst files]
        github.com/alimitedgroup/MVP/common/dto coverage: 0.0% of statements
? github.com/alimitedgroup/MVP/common/dto/request [no tеst files]
? github.com/alimitedgroup/MVP/common/dto/response [no tеst files]
? github.com/alimitedgroup/MVP/common/lib [no tеst files]
        github.com/alimitedgroup/MVP/common/lib/broker coverage: 0.0% of statements
        github.com/alimitedgroup/MVP/common/lib/observability coverage: 0.0% of statements
? github.com/alimitedgroup/MVP/common/stream [no tеst files]
        github.com/alimitedgroup/MVP/srv/api_gateway coverage: 0.0% of statements
ok github.com/alimitedgroup/MVP/srv/api_gateway/adapterin

[...]

ok github.com/alimitedgroup/MVP/srv/warehouse/adapter/sender 1.219s coverage: 92.6% of statements
? github.com/alimitedgroup/MVP/srv/warehouse/adapter/stream [no tеst files]
ok github.com/alimitedgroup/MVP/srv/warehouse/business 1.158s coverage: 77.4% of statements
? github.com/alimitedgroup/MVP/srv/warehouse/business/model [no tеst files]
? github.com/alimitedgroup/MVP/srv/warehouse/business/port [no tеst files]
        github.com/alimitedgroup/MVP/srv/warehouse/config coverage: 0.0% of statements
```

Dove il valore iniziale di ogni riga indica:

- `?`: nella cartella non sono presenti test#super[G];
- `ok`: i test#super[G] nella cartella che segue sono stati superati.

Un output non simile a questo indica il fallimento di uno dei test#super[G] presenti.

# Esecuzione dei _test_ di accettazione

I test#super[G] di accettazione sfruttano `curl`, `nats`#super[G] e `jq` per poter essere eseguiti.

I test#super[G] sono disponibili all'interno della cartella `tests` nella radice dell'installazione: è sufficiente aprire un prompt#super[G] dei comandi (o _shell_) in questa cartella ed eseguire gli script.
