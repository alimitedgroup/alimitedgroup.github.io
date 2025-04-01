# Avviare il Sistema configurato

## Avvio

Una volta configurato il sistema l'avvio risulta essere molto semplice.

È sufficiente eseguire il comando:

```just up```

o, se si è deciso di non utilizzare **Just**, è possibile limitarsi all'esecuzione del seguente comando **Docker**:

```docker compose up -d --build```

che avvierà quanto descritto nel file `compose.yml` in _background_.

Per avviare i servizi non in background è possibile eseguire:

```docker compose up --build```

Se l'istanza era già stata avviata e non era stata resettata, al prossimo avvio i dati verranno conservati.

Notare che il primo avvio potrebbe essere notevolmente più lungo rispetto ad un riavvio.

## Spegnimento

Per arrestare i servizi avviati è possibile eseguire il comando:

`just down`

o, se si è deciso di non utilizzare **Just**, è possibile limitarsi all'esecuzione del seguente comando **Docker**:

`docker compose down`

## Ripristino

A sistema avviato, eseguire:

`just reset`

o, se si è deciso di non utilizzare **Just**, è possibile limitarsi all'esecuzione del seguente comando **Docker**:

`docker compose down -v --remove-orphans && docker compose up -d --build`

I vari servizi saranno spenti, ripristinati e riavviati.