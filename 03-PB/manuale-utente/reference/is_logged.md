# GET `/api/v1/is_logged`

Questa route consente di verificare lo stato di autenticazione. Inoltre, consente di ottenere il proprio ruolo attuale, qualora non sia desiderabile ottenerlo estraendolo dal token JWT.

## Richiesta autenticazione

Sì. Per ulteriori dettagli, fare riferimento a "autenticazione e autorizzazione", all'interno dei concetti.
<!-- TODO: passare ad usare la citazione @procedura_autenticazione -->

## Corpo della richiesta

Nessuno.

## Risposta: 200

Il token fornito è valido

Codifica: `application/json`

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
        [`role`], [`string`], [Il ruolo dell'utente associato al token fornito. Il ruolo può essere uno tra le tre stringhe `client`, `local_admin` e `global_admin`.], [`global_admin`],
   ),
   caption: [Risposta di GET `/is_logged`],
)
-->

<!--typst-begin-exclude-->
| Nome | Tipo | Descrizione | Esempio |
|------------ |---------- |-------------------------------------------- |----------- |
| `role` | `string` | Il ruolo dell'utente associato al token fornito. Il ruolo può essere uno tra le tre stringhe `client`, `local_admin` e `global_admin`. | `global_admin` |
<!--typst-end-exclude-->
