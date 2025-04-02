# POST `/orders`

Questa route consente di creare un trasferimento#super[G] di merci da un magazzino all'altro.

## Richiesta autenticazione

Si.

## Corpo della richiesta

Codifica: `application/json`

<!--raw-typst
#figure(
   table(
        columns: (1fr, 1.5fr, 2fr, 4fr),
        inset: 5pt,
        align: horizon,
        table.header(
            [#text(fill:white)[Nome]],
            [#text(fill:white)[Tipo]],
            [#text(fill:white)[Descrizione]],
            [#text(fill:white)[Esempio]],
        ),
        [`sender_id`], [`string`], [Identificativo del magazzino mittente], [`"warehouse-1"`],
        [`receiver_id`], [`string`], [Identificativo del magazzino destinatario], [`"warehouse-2"`],
        [`goods`], [`map[string]int64`], [Mappa delle merci con quantità associate], [`{"e6064c0c-4a0c-4f37-b810-7025510a6ecf": 10, "14794ce1-c418-42be-a564-d66e23833db8": 20}`],
   ),
   caption: [Corpo della richiesta di POST `/orders`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------------- | ------------------ | ----------------------------------------- | ------------------------------------------------------------------------------------------ |
| `sender_id` | `string` | Identificativo del magazzino mittente | `"warehouse-1"` |
| `receiver_id` | `string` | Identificativo del magazzino destinatario | `"warehouse-2"` |
| `goods` | `map[string]int64` | Mappa delle merci con quantità associate | `{"e6064c0c-4a0c-4f37-b810-7025510a6ecf": 10, "14794ce1-c418-42be-a564-d66e23833db8": 20}` |
<!--typst-end-exclude-->
## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`

<!--raw-typst
#figure(
   table(
        columns: (1fr, 1fr, 2fr, 4fr),
        inset: 5pt,
        align: horizon,
        table.header(
            [#text(fill:white)[Nome]],
            [#text(fill:white)[Tipo]],
            [#text(fill:white)[Descrizione]],
            [#text(fill:white)[Esempio]],
        ),
        [`transfer_id`], [`string`], [Identificativo del trasferimento creato],[`a877f9f4-5f98-4ede-8284-8ea1f74195d5`],
   ),
   caption: [Risposta di POST `/orders`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
| ------------- | -------- | --------------------------------------- | -------------------------------------- |
| `transfer_id` | `string` | Identificativo del trasferimento creato | `a877f9f4-5f98-4ede-8284-8ea1f74195d5` |
<!--typst-end-exclude-->
