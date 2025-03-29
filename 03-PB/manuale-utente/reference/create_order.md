# POST `/api/v1/orders`

Questa route consente di creare un ordine di merci.

## Richiesta autenticazione

Si.

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
        [`name`], [`string`], [Nome dell'ordine], [`"ordine1"`],
        [`full_name`], [`string`], [Nome completo del cliente], [`"Mario Rossi"`],
        [`address`], [`string`], [Indirizzo del cliente], [`"Via Roma 10, Milano"`],
        [`goods`], [`map[string]int64`], [Mappa delle merci con quantità associate], [`{"b55a6a92-6c3e-4934-9392-d6a40d940c81": 5, "7f2a6642-a6bf-4c79-acad-43f1038761b5": 3}`],
   ),
   caption: [Corpo della richiesta di POST `/api/v1/orders`], 
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ----------- | ------------------ | ---------------------------------------- | ---------------------------------------------------------------------------------------- |
| `name` | `string` | Nome dell'ordine | `"ordine1"` |
| `full_name` | `string` | Nome completo del cliente | `"Mario Rossi"` |
| `address` | `string` | Indirizzo del cliente | `"Via Roma 10, Milano"` |
| `goods` | `map[string]int64` | Mappa delle merci con quantità associate | `{"b55a6a92-6c3e-4934-9392-d6a40d940c81": 5, "7f2a6642-a6bf-4c79-acad-43f1038761b5": 3}` |
<!--typst-end-exclude-->
## Risposta: 200

L'operazione è stata eseguita con successo.

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
        [`order_id`], [`string`], [Identificativo dell'ordine creato], [`c7bea6a8-8f44-4146-b6ab-c84ba0d14774`],
   ),
   caption: [Risposta di POST `/api/v1/orders`], 
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ---------- | -------- | --------------------------------- | -------------------------------------- |
| `order_id` | `string` | Identificativo dell'ordine creato | `c7bea6a8-8f44-4146-b6ab-c84ba0d14774` |
<!--typst-end-exclude-->