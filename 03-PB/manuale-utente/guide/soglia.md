# Impostare una soglia di allerta

Il Sistema permette di aggiungere una soglia di allerta per ricevere notifiche quando le scorte globalmente disponibile di una merce scendono sotto una certa soglia.

Anzitutto è necessario ottenere un token per il ruolo di **Admin Globale**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `GA_TOKEN`.

Preparare e salvare in una variabile `GA_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`GA_PARAMS=(-sS -H "Authorization: Bearer $GA_TOKEN" -H "Content-Type: application/json")`

È possibile procedere alla creazione di una soglia di allerta mediante il seguente comando:

`curl "${GA_PARAMS[@]}" -X POST localhost:8080/api/v1/notifications/queries \
  -d '{"good_id": "id_merce", "operator": "<", "threshold": soglia}'`

dove:

- al posto di **id_merce** è necessario inserire l'id della merce da tenere sotto osservazione;
- al posto di **soglia** è necessario inserire la soglia sotto cui notificare l'allerta.

La query avrà subito effetto: per verificare le notifiche in arrivo vedere la Sezione dedicata di questo manuale.
