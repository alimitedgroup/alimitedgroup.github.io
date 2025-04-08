# Visualizzare i magazzini presenti nel Sistema

Il Sistema permette di reperire una lista di tutti i magazzini presenti nel Sistema e che hanno subito almeno un'aggiunta di _stock#super[G]_.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Globale**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `GA_TOKEN`.

Preparare e salvare in una variabile `GA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`GA_PARAMS=(-sS -H "Authorization: Bearer $GA_TOKEN" -H "Content-Type: application/json")`

È possibile quindi ottenere i magazzini con la seguente richiesta:

`curl "${GA_PARAMS[@]}" -X GET "http://localhost:8080/api/v1/warehouses"`
