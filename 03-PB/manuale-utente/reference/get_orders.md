# GET `/api/v1/orders`

Questa route consente di recuperare la lista di `order`s (ordini)

## Richiesta autenticazione

Si.

## Corpo della richiesta

Nessuno.

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
        [`orders`], [`Order[]`], [Una lista di ordini, con le relative informazioni.], [`[{"order_id": "0353a051-f1a4-40fd-9189-aedbd28cb0a7", "status": "Filled", "name": "Order 1", "full_name": "Mario Rossi", "address": "Via Roma 1, Milano", "goods": {"002bcb63-32b3-4087-ab5b-2cbb881f8824": 2, "67209dcc-2103-49af-aeb1-4c81a8fb3ddd": 3}, "reservations": ["74092245-36b4-473a-bacc-b1bbe245a113", "f6410fea-7518-45ff-b39d-622a488f6304"]}]`],
   ),
   caption: [Risposta di GET `/api/v1/orders`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| -------- | --------- | -------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `orders` | `Order[]` | Una lista di ordini, con le relative informazioni. | `[{"order_id": "0353a051-f1a4-40fd-9189-aedbd28cb0a7", "status": "Filled", "name": "Order 1", "full_name": "Mario Rossi", "address": "Via Roma 1, Milano", "goods": {"002bcb63-32b3-4087-ab5b-2cbb881f8824": 2, "67209dcc-2103-49af-aeb1-4c81a8fb3ddd": 3}, "reservations": ["74092245-36b4-473a-bacc-b1bbe245a113", "f6410fea-7518-45ff-b39d-622a488f6304"]}]` |
<!--typst-end-exclude-->
