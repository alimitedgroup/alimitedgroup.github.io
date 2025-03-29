# GET `/api/v1/warehouses`

Questa route consente di recuperare la lista di `warehouse`s (magazzini)

## Richiesta autenticazione

No.

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
        [`ids`], [`string[]`], [Una lista di ID dei magazzini.], [`"ids": ["f7465619-4e3c-4a3e-8f0d-0379666bb47a", "2ecd185a-f7a6-4834-b29c-92657485d284"]`],
   ),
   caption: [Risposta di GET `/api/v1/warehouses`], 
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `ids` | `string[]` | Una lista di ID dei magazzini. | `"ids": ["f7465619-4e3c-4a3e-8f0d-0379666bb47a", "2ecd185a-f7a6-4834-b29c-92657485d284"]` |
<!--typst-end-exclude-->