# GET `/api/v1/goods`

Questa route consente di recuperare la lista di `good`s (merci)

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
        [`goods`], [`GoodAndAmount[]`], [ Una lista di merci, ognuna con la quantità disponibile globalmente e per singoli magazzini.], [`"goods": [{"name": "hat", "description": "a hat", "id": "e9281371-b9fe-41b4-968a-e510a98cf849", "amount": 20, "amounts": {"warehouse-1": 10, "warehouse-2": 10}}]`],
   ),
   caption: [Risposta di GET `/api/v1/goods`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------- | ----------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `goods` | `GoodAndAmount[]` | Una lista di merci, ognuna con la quantità disponibile globalmente e per singoli magazzini. | `"goods": [{"name": "hat", "description": "a hat", "id": "e9281371-b9fe-41b4-968a-e510a98cf849", "amount": 20, "amounts": {"warehouse-1": 10, "warehouse-2": 10}}]` |
<!--typst-end-exclude-->
