# Tipi di utenti

Nel Sistema che _ALimitedGroup_ realizzerà ed implementerà, sono presenti tre tipi di utenti:
- Il **Cliente**;
- L'**Admin Locale**;
- L'**Admin Globale**.

## Cliente
Il **Cliente** è la persona che utilizzerà il prodotto finale ed usufruirà dei servizi offerti dal Sistema con, chiaramente, delle limitazioni riguardo certe operazioni. Questo tipo di utente potrà effettuare le seguenti azioni all'interno del Sistema:
- **Autenticazione**, immettendo _username_ e _password_ tramite l'apposita _API_#super[G] offerta;
- **Creazione di un ordine** inserendo il nome, il destinatario dell'ordine e l'indirizzo di spedizione;
- **Selezionare la merce per l'ordine** inserendo la quantità, per ognuna delle merci aggiunte all'ordine;
- **Confermare l'ordine** ed in questo modo far partire la richiesta per l'ordine, in attesa che venga elaborata;
- **Visualizzare la lista degli ordini non confermati** e, per ognuno di essi, visualizzarne le informazioni come:
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
L'**Admin Locale** è la persona responsabile#super[G] per un singolo magazzino, con un interesse "locale" alla situazione di quest'ultimo. Inoltre, rispetto al Cliente, l'Admin Locale ha un maggior potere decisionale sulle azioni da intraprendere all'interno del magazzino. Le operazioni che questo tipo di utente ha la possibilità di effettuare, sono le seguenti:
- **Aggiungere** ed aumentare lo _stock_#super[G] disponibile per una merce, inserendone la quantità;
- **Creazione** di un sistema di _Backup_ per il ripristino dei dati, in caso di cyberattacchi;
- **Attivazione** del sistema di _Backup_, specificandone la periodicità con cui si attiva;
- **Eliminazione** del sistema di _Backup_, in caso ne esista uno precedentemente creato;
- **Ripristinare** i dati dall'ultimo _Backup_ effettuato e disponibile nel magazzino, in caso ne esista uno;

## Admin Globale
L'**Admin Globale** ha la responsabilità di supervisionare tutti i magazzini presenti, ha quindi un interesse "globale" sul Sistema e tutte le sue componenti. Questa tipologia di utente è la **più importante**, dal punto di vista decisionale, ma soprattutto la **più delicata** richiedendo che ci sia un'elevata attenzione ad ogni azione presa. La lista di operazioni disponibili per questo tipo di utente, è la seguente:
- **Creazione** di un trasferimento#super[G] di merci da confermare, scegliendo per ognuno:
    - Il **magazzino mittente** del trasferimento#super[G] ;
    - Il **magazzino destinatario** del trasferimento#super[G] .
- **Aggiungere** la merce ad un trasferimento#super[G] non confermato, a patto che:
    - Il magazzino mittente del trasferimento#super[G] ,abbia la quantità di merce sufficiente nell _stock_#super[G] ;
    - Esista un trasferimento#super[G] precedentemente creato.
- **Confermare** un trasferimento#super[G] così da procedere con la richiesta, a patto che:
    - Il magazzino mittente del trasferimento#super[G] ,abbia la quantità di merce sufficiente nell _stock_#super[G] ;
    - Esista un trasferimento#super[G] non confermato nel Sistema.
- **Cancellare** un trasferimento#super[G] non ancora confermato, a patto che ne esista uno;
- **Visualizzare** l'elenco di tutti trasferimenti presenti nel Sistema, visualizzando per ognuno:
    - L'**ID** del trasferimento#super[G] ;
    - Lo **Stato** del trasferimento#super[G] .
- **Visualizzare** nel dettaglio un particolare trasferimento#super[G] ,visualizzando:
    - L'**ID** del trasferimento#super[G] ;
    - Lo **Stato** del trasferimento#super[G] ;
    - Il **Magazzino mittente** del trasferimento#super[G] ;
    - Il **Magazzino destinatario** del trasferimento#super[G] ;
    - L'**Elenco delle merci** interessate nel trasferimento#super[G] ,e per ognuna di queste:
        - Il **Nome** della singola merce nel traferimento;
        - La **Quantità** della singola merce nel trasferimento#super[G] .
- **Visualizzare** l'elenco delle notifiche di rifornimento, a patto che ne esistano, e per ognuna visualizzare:
    - L'**ID** della notifica di rifornimento;
    - Lo **Stato** della notifica di rifornimento.
- **Visualizzare** nel dettaglio una notifica di rifornimento, visualizzando:
    - Lo **Stato** della notifica;
    - L'**ID** della notifica;
    - Il **Magazzino** di destinazione del rifornimento;
    - L'**Elenco delle merci** che è consigliato rifornire, e per ognuna delle merci è possibile visualizzare:
        - L'**ID** della merce;
        - La **Quantità** consigliata da rifornire della merce;
        - Il **Nome** della merce.
- **Accettare** una notifica di rifornimento, purchè ne esista una;
- **Rifiutare** una notifica di rifornimento, a condizione che ne esista una;
- **Visualizzare** l'elenco dei microservizi, e per ognuno di essi visualizzare:
    - Il **Numero di richieste al secondo** del microservizio;
    - Il **Nome** del microservizio.
- **Esportare** gli ordini eseguiti, purché ce ne siano, in un _file .csv_;
- **Esportare** il _report_ dell'inventario, a patto che ce ne esista uno, in un _file .csv_;
- **Creazione** di una soglia minima, a condizione che sia valida, in una determinata merce;
- **Creazione** di una nuova merce, inserendo:
    - Il **Nome** della nuova merce;
    - La **Descrizione** della nuova merce.
- **Aggiornamento** delle informazioni su una determinata merce;
- **Visualizzazione** dell'elenco delle attività di accesso al Sistema, e per ognuna visualizzare:
    - L'**Indirizzo IP** del tentativo di accesso;
    - L'**ID** del tentativo di accesso;
    - Lo **Stato** del tentativo di accesso.
- **Bloccare** un tentativo di accesso al Sistema, inserendone l'ID;
- **Aggiungere** un nuovo utente inserendo:
    - Il **Nome** del nuovo utente;
    - La **Password** del nuovo utente;
    - Il **Ruolo** del nuovo utente.
- **Eliminare** un utente nel Sistema, selezionando il nome utente;
- **Promuovere il Ruolo** di un utente nel Sistema.



<!--
Qui bisogna spiegare i tipi di utenti:

- Cliente
- Admin locale
- Admin globale

Spiegare le differenze tra di essi, le cose in comune, che cosa ognuno può e non può fare.
Inoltre specificare a che api#super[G] gateway si possono connettere, se non possono farlo a tutti.
