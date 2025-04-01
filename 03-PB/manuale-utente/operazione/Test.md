La realizzazione del sistema è proceduta di pari passo con la realizzazione e l'esecuzione di test. Qui sarà brevemente spiegato come eseguire tali test.

Per informazioni approfondite

# Esecuzione dei test di unità ed integrazione

Per eseguire i test di unità ed integrazione è sufficiente aprire un prompt dei comandi (o _shell_) nella radice dell'installazione ed eseguire questi due comandi:

`go generate ./...`
`go test -race -covermode atomic ./...`

L'output sarà simile al seguente:

```
?       github.com/alimitedgroup/MVP/common     [no test files]
        github.com/alimitedgroup/MVP/common/dto         coverage: 0.0% of statements
?       github.com/alimitedgroup/MVP/common/dto/request [no test files]
?       github.com/alimitedgroup/MVP/common/dto/response        [no test files]
?       github.com/alimitedgroup/MVP/common/lib [no test files]
        github.com/alimitedgroup/MVP/common/lib/broker          coverage: 0.0% of statements
        github.com/alimitedgroup/MVP/common/lib/observability           coverage: 0.0% of statements
?       github.com/alimitedgroup/MVP/common/stream      [no test files]
        github.com/alimitedgroup/MVP/srv/api_gateway            coverage: 0.0% of statements
ok      github.com/alimitedgroup/MVP/srv/api_gateway/adapterin

[...]

ok      github.com/alimitedgroup/MVP/srv/warehouse/adapter/sender       1.219s  coverage: 92.6% of statements
?       github.com/alimitedgroup/MVP/srv/warehouse/adapter/stream       [no test files]
ok      github.com/alimitedgroup/MVP/srv/warehouse/business     1.158s  coverage: 77.4% of statements
?       github.com/alimitedgroup/MVP/srv/warehouse/business/model       [no test files]
?       github.com/alimitedgroup/MVP/srv/warehouse/business/port        [no test files]
        github.com/alimitedgroup/MVP/srv/warehouse/config               coverage: 0.0% of statements
```

Dove il valore iniziale di ogni riga indica:

- `?`: nella cartella non sono presenti test;
- `ok`: i test nella cartella che segue sono stati superati.

Un output non simile a questo indica il fallimento di uno dei test presenti.

# Esecuzione dei test di accettazione

I test di accettazione sfruttano `curl`, `nats` e `jq` per poter essere eseguiti.

I test sono disponibili all'interno della cartella `tests` nella radice dell'installazione: è sufficiente aprire un prompt dei comandi (o _shell_) in questa cartella ed eseguire gli script.