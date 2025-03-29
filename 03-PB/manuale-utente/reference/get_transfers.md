# GET `/api/v1/transfers`

Questa route consente di recuperare la lista di `transfer`s (trasferimenti)

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
        [`transfers`], [`Transfer[]`], [Una lista di trasferimenti, con le relative informazioni.], [`[{"transfer_id": "9ae7b261-3ade-49be-962c-b9c036aee947", "status": "Filled", "sender_id": "warehouse_001", "receiver_id": "warehouse_002", "goods": {"e8e0e7e9-3df6-44d9-86d9-341eedaf3e74": 2, "6c0344b8-262b-4ff6-8922-62d898d76f07": 3}}]`],
   ),
   caption: [Risposta di GET `/api/v1/transfers`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ----------- | ------------ | --------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `transfers` | `Transfer[]` | Una lista di trasferimenti, con le relative informazioni. | `[{"transfer_id": "9ae7b261-3ade-49be-962c-b9c036aee947", "status": "Filled", "sender_id": "warehouse_001", "receiver_id": "warehouse_002", "goods": {"e8e0e7e9-3df6-44d9-86d9-341eedaf3e74": 2, "6c0344b8-262b-4ff6-8922-62d898d76f07": 3}}]` |
<!--typst-end-exclude-->
