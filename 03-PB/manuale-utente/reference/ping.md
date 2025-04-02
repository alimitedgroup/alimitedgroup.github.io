# GET `/ping`

Questa route consente di verificare se il servizio `api_gateway` è correttamente in esecuzione.

## Richiesta autenticazione

No.

## Parametri

Nessuno.

## Corpo della richiesta

Nessuno.

## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`

<!--raw-typst
#figure(
   table(
        columns: (1fr, 1fr, 3fr, 2fr),
        inset: 5pt,
        align: horizon,
        table.header(
            [#text(fill:white)[Nome]],
            [#text(fill:white)[Tipo]],
            [#text(fill:white)[Descrizione]],
            [#text(fill:white)[Esempio]],
        ),
        [`message`], [`string`], [Valore fisso, sempre uguale a "pong".], [`pong`],
   ),
   caption: [Risposta di GET `/ping`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `message` | `string` | Valore fisso, sempre uguale a "pong". | `pong` |
<!--typst-end-exclude-->
