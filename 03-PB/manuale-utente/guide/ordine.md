# Effettuare un ordine

Il Sistema permette la realizzazione di ordini: la seguente guida illustrerà come realizzarne uno, presupponendo che ci sia sufficiente quantità per poterlo portare a termine.

Anzitutto è necessario ottenere un token per il ruolo di **Client**: per maggiori informazioni vedere la Sezione dedicata al login.

La guida considererà ottenuto questo token e salvato in una variabile `C_TOKEN`.

Preparare e salvare in una variabile `C_PARAMS` l'header da inviare assieme alla richiesta con il seguente comando:

`C_PARAMS=(-sS -H "Authorization: Bearer $C_TOKEN" -H "Content-Type: application/json")`

È possibile procedere con la creazione dell'ordine mediante il seguente comando:

`curl "${C_PARAMS[@]}" -X POST "http://localhost:8080/api/v1/orders" \
  -d '{"name": "order-1", "full_name": "John Doe", "address": "via roma 12 35012", "goods": {"hat-1": 7}}'`

La richiesta eseguita cercherà di portare a termine un ordine#super[G] dal nome **order-1** per il cliente **John Doe**, residente in **via roma 12 35012**, di **7 unità** della merce con **id `hat-1`**

È ovviamente possibile includere più merci inserendole in una lista JSON.

Per verificare l'esito dell'ordine è consigliata la lettura della Sezione relativa alla visione degli ordini.
