# Visualizzare le merci nel Sistema

Il Sistema permette l'ottenimento della lista delle merci presenti nel Sistema.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Globale**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `GA_TOKEN`.

Preparare e salvare in una variabile `GA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`GA_PARAMS=(-sS -H "Authorization: Bearer $GA_TOKEN" -H "Content-Type: application/json")`

È possibile quindi ottenere una lista delle merci eseguendo il seguente comando:

`curl "${GA_PARAMS[@]}" -X GET "http://localhost:8080/api/v1/goods"`
