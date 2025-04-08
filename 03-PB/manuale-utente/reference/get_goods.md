# GET `/api/v1/goods`

Questa route consente di recuperare la lista di `good`#super[G] (merci)

## Richiesta autenticazione

Sì.

## Corpo della richiesta

Nessuno.

## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`

<!--raw-typst
#figure(
   table(
        columns: (1fr, 2fr, 2fr, 4fr),
        inset: 5pt,
        align: horizon,
        table.header(
            [#text(fill:white)[Nome]],
            [#text(fill:white)[Tipo]],
            [#text(fill:white)[Descrizione]],
            [#text(fill:white)[Esempio]],
        ),
        [`goods`], [`GoodAnd
        Amount[]`], [ Una lista di merci, ognuna con la quantità disponibile globalmente e per singoli magazzini.], [`"goods": [{"name": "hat", "description": "a hat", "id": "e9281371-b9fe-41b4-968a-e510a98cf849", "amount": 20, "amounts": {"warehouse-1": 10, "warehouse-2": 10}}]`],
   ),
   caption: [Risposta di GET `/api/v1/goods`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------- | ----------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `goods` | `GoodAndAmount[]` | Una lista di merci, ognuna con la quantità disponibile globalmente e per singoli magazzini. | `"goods": [{"name": "hat", "description": "a hat", "id": "e9281371-b9fe-41b4-968a-e510a98cf849", "amount": 20, "amounts": {"warehouse-1": 10, "warehouse-2": 10}}]` |
<!--typst-end-exclude-->
