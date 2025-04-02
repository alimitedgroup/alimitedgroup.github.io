# Login

Il Sistema possiede un Sistema di autenticazione mediante token: per poter accedere al Sistema è necessario avere un token valido.

Nella sua forma attuale, il Sistema permette di ottenere un token indicando il ruolo desiderato.

Per ottenere il token è sufficiente effettuare la seguente richiesta:

`curl -Ss -X POST "http://localhost:8080/api/v1/login" -d username=valore`

Dove, al posto di `valore` è possibile inserire uno dei seguenti valori:

- **global_admin**, per ottenere un token per il ruolo di **Admin Globale**;
- **local_admin**, per ottenere un token per il ruolo di **Admin Locale**;
- **client**, per ottenere un token per il ruolo di **Client**.

Per verificare la validità del token, è possibile salvare il token ricevuto in una variabile `TOKEN` eseguendo questo comando:

`TOKEN=$(curl -Ss -X POST "http://localhost:8080/api/v1/login" -d username=valore | jq -r '.token')`

Quindi è sufficiente creare un _header_ mediante questo comando:

`PARAMS=(-sS -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/json")`

E, infine, eseguire la richiesta di vеrifica:

`curl "${PARAMS[@]}" -X GET "http://localhost:8080/api/v1/is_logged"`

Se il processo è andato a buon fine, la risposta conterrà il ruolo scelto.
