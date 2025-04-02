# POST `/login`

Questa route consente di autenticarsi presso il servizio `api_gateway`, in modo da poter accedere alle route che richiedono autenticazione.

## Richiesta autenticazione

No.

## Corpo della richiesta

Codifica: `application/x-www-form-urlencoded`

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
        [ `username`], [`string`], [L'username con cui ci si vuole autenticare], [`admin`],
   ),
   caption: [Corpo della richiesta di POST `/login`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `username` | `string` | L'username con cui ci si vuole autenticare | `admin` |
<!--typst-end-exclude-->
## Risposta: 200

L'operazione è stata eseguita con successo.

Codifica: `application/json`

<!--raw-typst
#figure(
   table(
        columns: (1fr, 1fr, 1.5fr, 4.5fr),
        inset: 5pt,
        align: horizon,
        table.header(
            [#text(fill:white)[Nome]],
            [#text(fill:white)[Tipo]],
            [#text(fill:white)[Descrizione]],
            [#text(fill:white)[Esempio]],
        ),
        [ `token`], [`string`], [Un token JWT che autentica l'utente.], [`eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.
        eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZ
        SI6IkpvaG4gRG9lIiwiYWRtaW4iOn
        RydWUsImlhdCI6MTUxNjIzOTAyMn0.
        KMUFsIDTnFmyG3nMiGM6H9FNFUROf3wh7SmqJp-QV30`],
   ),
   caption: [Risposta di POST `/api/v1/login`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `token` | `string` | Un token JWT che autentica l'utente. | `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMn0.KMUFsIDTnFmyG3nMiGM6H9FNFUROf3wh7SmqJp-QV30` |
<!--typst-end-exclude-->
