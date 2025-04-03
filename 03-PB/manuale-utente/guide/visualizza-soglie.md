# Visualizzare le soglie impostate

Il Sistema permette di ottenere una lista delle soglie di allerta impostate.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Globale**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `GA_TOKEN`.

Preparare e salvare in una variabile `GA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`GA_PARAMS=(-sS -H "Authorization: Bearer $GA_TOKEN" -H "Content-Type: application/json")`

È possibile procedere all'ottenimento della lista mediante la seguente richiesta:

`curl "${GA_PARAMS[@]}" -X GET localhost:8080/api/v1/notifications/queries`
