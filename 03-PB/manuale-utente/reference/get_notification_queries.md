# GET `/api/v1/notifications/queries`

Questa route consente di recuperare la lista di query delle notifiche.

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
        [`queries`], [`Query[]`], [ Una lista di query delle notifiche, ognuna con il tipo di soglia monitorata.], [`"queries": [{"query_id":"39dfe1b4-35b2-467b-b86f-a915ac362cba","good_id": "hat-1","operator": "<","threshold": 5}]`],
   ),
   caption: [Risposta di GET `/notifications/queries`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------- | ----------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `queries` | `Query[]` | Una lista di query delle notifiche, ognuna con il tipo di soglia monitorata. | `"queries": [{"query_id":"39dfe1b4-35b2-467b-b86f-a915ac362cba","good_id": "hat-1","operator": "<","threshold": 5}]` |
<!--typst-end-exclude-->
