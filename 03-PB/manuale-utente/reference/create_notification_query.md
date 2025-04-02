# POST `/notifications/queries`

Questa route consente di creare una query per le notifiche.

## Richiesta autenticazione

Si.

## Corpo della richiesta

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
        [`good_id`], [`string`], [Nome della merce], [`"Identificativo della merce"`],
        [`operator`], [`string`], [Operatore logico da utilizzare nella query], [`"<"`],
        [`threshold`], [`int`], [Valore numerico della query], [`"10"`],
   ),
   caption: [Corpo della richiesta di POST `/notifications/queries`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------------- | -------- | ----------------------- | ----------------------------- |
| `good_id` | `string` | Identificativo della merce | `"b55a6a92-6c3e-4934-9392-d6a40d940c81"` |
| `operator` | `string` | Operatore logico da utilizzare nella query | `"<"` |
| `threshold` | `int` | Valore numerico della query | `"10"` |
<!--typst-end-exclude-->
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
        [`good_id`], [`string`], [Identificativo della query creata], [`876f754f-e7da-4f07-b6de-258bbfb384bc`],
   ),
   caption: [Risposta di POST `/notifications/queries`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| --------- | -------- | --------------------------------- | -------------------------------------- |
| `query_id` | `string` | Identificativo della query creata | `876f754f-e7da-4f07-b6de-258bbfb384bc` |
<!--typst-end-exclude-->
