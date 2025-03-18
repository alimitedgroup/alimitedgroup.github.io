# Tipi di utenti

Nel Sistema che _ALimitedGroup_ realizzerà ed implementerà, sono presenti tre tipi di utenti:
- Il **Cliente**;
- L'**Admin Locale**;
- L'**Admin Globale**.

## Cliente
Il Cliente è la persona che utilizzerà il prodotto finale ed usufruirà dei servizi offerti dal Sistema con, chiaramente, delle limitazioni riguardo certe operazioni. Questo tipo di utente potrà effettuare le seguenti azioni all'interno del Sistema:
- **Autenticazione**, immettendo _username_ e _password_ tramite l'apposito _form_ (?) offerto;
- **Creazione di un ordine** inserendo il nome, il destinatario dell'ordine e l'indirizzo di spedizione;
- **Selezionare la merce per l'ordine** inserendo la quantità, per ognuna delle merci aggiunte all'ordine;
- **Confermare l'ordine** ed in questo modo far partire la richiesta per l'ordine, in attesa che venga elaborata;
- **Visualizzare la lista degli ordini con confermati** e, per ognuno di essi, visualizzarne le informazioni come:
    - L'**ID** dell'ordine;
    - La **Data di creazione** dell'ordine;
    - Il **Nome** dell'ordine;
    - La **Lista delle merci** nell'ordine e, per ognuna di questa:
        - Il **Nome** della merce aggiunta all'ordine;
        - La **Quantità** della merce nell'ordine.
- **Visualizzare la lista delle merci disponibili nel Sistema** e, per ognuna di essa, visualizzare:
    - Il **Nome** della merce;
    - L'**ID** della merce;
    - La **Descrizione** della merce;
    - La **Quantità Complessiva** in tutti i magazzini presenti nel Sistema;
    - La **Quantità** disponibile nel magazzino più vicino al Cliente.

## Admin Locale

## Admin Globale
Qui bisogna spiegare i tipi di utenti:
- Cliente
- Admin locale
- Admin globale

Spiegare le differenze tra di essi, le cose in comune, che cosa ognuno può e non può fare.
Inoltre specificare a che api<!--raw-typst#super("G")--> gateway si possono connettere, se non possono farlo a tutti.
