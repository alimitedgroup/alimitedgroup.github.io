# PUT `/api/v1/goods/:good_id`

Questa route consente di aggiornare una merce.

## Richiesta autenticazione

Si.

## Variabili PATH

<!--raw-typst
#figure(
   table(
        columns: (1fr, 1fr, 3fr, 2fr),
        inset: 8pt,
        align: horizon,
        table.header(
            [#text(fill:white)[Nome]],
            [#text(fill:white)[Tipo]],
            [#text(fill:white)[Descrizione]],
            [#text(fill:white)[Esempio]],
        ),
        [`good_id`], [`string`], [L'identificativo della merce], [`c8225f15-ba60-47f6-8f84-ee72ca3d3d73`],
   ),
   caption: [Variabili PATH di PUT `/api/v1/goods/:good_id`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| --------- | -------- | ---------------------------- | -------------------------------------- |
| `good_id` | `string` | L'identificativo della merce | `c8225f15-ba60-47f6-8f84-ee72ca3d3d73` |
<!--typst-end-exclude-->

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
        [`name`], [`string`], [Nome della merce], [`"Abito blu"`],
        [`description`], [`string`], [Descrizione della merce], [`"Abito blu di alta qualità"`],
   ),
   caption: [Corpo della richiesta di PUT `/api/v1/goods/:good_id`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------------- | -------- | ----------------------- | ----------------------------- |
| `name` | `string` | Nome della merce | `"Abito blu"` |
| `description` | `string` | Descrizione della merce | `"Abito blu di alta qualità"` |
<!--typst-end-exclude-->
## Risposta: 200

L'operazione è stata eseguita con successo.

Corpo della risposta vuoto.
