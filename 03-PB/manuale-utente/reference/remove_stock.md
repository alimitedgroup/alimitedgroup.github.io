# DELETE `/api/v1/goods/:good_id/warehouse/:warehouse_id/stock`

Questa route consente di rimuovere dello stock#super[G] ad una merce del magazzino.

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
        [`good_id`], [`string`], [L'identificativo della merce], [`7be87589-6835-4437-ba6a-96d6b9a383c1`],
        [`warehouse_id`], [`string`], [L'identificativo del magazzino], [`warehouse-1`],
   ),
   caption: [Variabili PATH di DELETE `/api/v1/goods/:good_id/warehouse/:warehouse_id/stock`],
)
-->
<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| -------------- | -------- | ------------------------------ | -------------------------------------- |
| `good_id` | `string` | L'identificativo della merce | `7be87589-6835-4437-ba6a-96d6b9a383c1` |
| `warehouse_id` | `string` | L'identificativo del magazzino | `warehouse-1` |
<!--typst-end-exclude-->

## Corpo della richiesta

Codifica: `application/json`

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
        [ `quantity`], [`int`], [La quantità di stock da rimuovere], [`10`],
   ),
   caption: [Corpo della richiesta di DELETE `/api/v1/goods/:good_id/warehouse/:warehouse_id/stock`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ---------- | ----- | --------------------------------- | ------- |
| `quantity` | `int` | La quantità di stock da rimuovere | `10` |
<!--typst-end-exclude-->

## Risposta: 200

L'operazione è stata eseguita con successo.

Corpo della risposta vuoto.
