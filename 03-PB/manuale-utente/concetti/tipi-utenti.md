# Tipi di utenti <!--raw-typst <tipiutenti>-->

Nel Sistema che _ALimitedGroup_ realizzerà ed implementerà, sono presenti tre tipi di utenti:

- Il **Cliente**;
- L'**Admin Locale**;
- L'**Admin Globale**.

## Cliente

Il **Cliente** è la persona che utilizzerà il prodotto finale ed usufruirà dei servizi offerti dal Sistema con, chiaramente, delle limitazioni riguardo certe operazioni. Questo tipo di utente potrà effettuare le seguenti azioni all'interno del Sistema:

- **Autenticare**, immettendo il ruolo tramite l'apposita _API_#super[G] offerta;
- **Creare un ordine#super[G]** inserendo il nome, il destinatario dell'ordine e l'indirizzo di spedizione;
- **Selezionare la merce per l'ordine#super[G]** inserendo la quantità, per ognuna delle merci aggiunte all'ordine;
- **Confermare l'ordine#super[G]** ed in questo modo far partire la richiesta per l'ordine, in attesa che venga elaborata;
- **Visualizzare la lista degli ordini non confermati** e, per ognuno di essi, visualizzarne le informazioni come:

    * L'**ID** dell'ordine;
    * La **Data di creazione** dell'ordine;
    * Il **Nome** dell'ordine;
    * La **Lista delle merci** nell'ordine e, per ognuna di questa:
        + Il **Nome** della merce aggiunta all'ordine;
        + La **Quantità** della merce nell'ordine.

- **Visualizzare la lista delle merci disponibili nel Sistema** e, per ognuna di essa, visualizzare:
    - Il **Nome** della merce;
    - L'**ID** della merce;
    - La **Descrizione** della merce;
    - La **Quantità Complessiva** in tutti i magazzini presenti nel Sistema;
    - La **Quantità** disponibile nel magazzino più vicino al Cliente.

## Admin Locale
L'**Admin Locale** è la persona responsabile#super[G] per un singolo magazzino, con un interesse "locale" alla situazione di quest'ultimo. Inoltre, rispetto al Cliente, l'Admin Locale ha un maggior potere decisionale sulle azioni da intraprendere all'interno del magazzino. Le operazioni che questo tipo di utente ha la possibilità di effettuare, sono le seguenti:

- **Aggiungere** ed aumentare lo _stock_#super[G] disponibile per una merce, inserendone la quantità.

## Admin Globale

L'**Admin Globale** ha la responsabilità di supervisionare tutti i magazzini presenti, ha quindi un interesse "globale" sul Sistema e tutte le sue componenti. Questa tipologia di utente è la più importante, dal punto di vista decisionale, ma soprattutto la più delicata richiedendo che ci sia un'elevata attenzione ad ogni azione presa. La lista di operazioni disponibili per questo tipo di utente è la seguente:

- **Creare** un trasferimento#super[G] di merci da confermare, scegliendo per ognuno:

    * Il **magazzino mittente** del trasferimento#super[G];
    * Il **magazzino destinatario** del trasferimento#super[G].

- **Aggiungere** la merce ad un trasferimento#super[G] non confermato, a patto che:

    * Il **magazzino mittente** del trasferimento#super[G], abbia la quantità di merce sufficiente nello _stock_#super[G];
    * **Esista** un trasferimento#super[G] precedentemente creato.

- **Confermare** un trasferimento#super[G] così da procedere con la richiesta, a patto che:

    * Il magazzino mittente del trasferimento#super[G], abbia la quantità di merce sufficiente nello _stock_#super[G];
    * Esista un trasferimento#super[G] non confermato nel Sistema.

- **Cancellare** un trasferimento#super[G] non ancora confermato, a patto che ne esista uno;

- **Visualizzare** l'elenco di tutti trasferimenti presenti nel Sistema, visualizzando per ognuno:

    * L'**ID** del trasferimento#super[G];
    * Lo **Stato** del trasferimento#super[G].

- **Visualizzare** nel dettaglio un particolare trasferimento#super[G], visualizzando:

    - L'**ID** del trasferimento#super[G];
    - Lo **Stato** del trasferimento#super[G];
    - Il **Magazzino mittente** del trasferimento#super[G];
    - Il **Magazzino destinatario** del trasferimento#super[G];
    - L'**Elenco delle merci** interessate nel trasferimento#super[G], e per ognuna di queste:
        * Il **Nome** della singola merce nel trasferimento#super[G];
        * La **Quantità** della singola merce nel trasferimento#super[G].

- **Visualizzare** l'elenco delle notifiche di rifornimento, a patto che ne esistano, e per ognuna visualizzare:

    * L'**ID** della notifica di rifornimento;
    * Lo **Stato** della notifica di rifornimento.

- **Visualizzare** nel dettaglio una notifica di rifornimento, visualizzando:
    * Lo **Stato** della notifica;
    * L'**ID** della notifica;
    * Il **Magazzino** di destinazione del rifornimento;
    * L'**Elenco delle merci** che è consigliato rifornire, e per ognuna delle merci è possibile visualizzare:

        + L'**ID** della merce;
        + La **Quantità** consigliata da rifornire della merce;
        + Il **Nome** della merce.

- **Accettare** una notifica di rifornimento, purchè ne esista una;
- **Rifiutare** una notifica di rifornimento, a condizione che ne esista una;
- **Visualizzare** l'elenco dei microservizi, e per ognuno di essi visualizzare:

    * Il **Numero di richieste al secondo** del microservizio;
    * Il **Nome** del microservizio.

- **Esportare** gli ordini eseguiti, purché ce ne siano, in un _file_ .csv;
- **Esportare** il _report_ dell'inventario, a patto che ce ne esista uno, in un _file_ .csv;
- **Creare** una soglia minima, a condizione che sia valida, in una determinata merce;
- **Creare** una nuova merce, inserendo:

    * Il **Nome** della nuova merce;
    * La **Descrizione** della nuova merce.

- **Aggiornare** le informazioni su una determinata merce.

## Riepilogo degli Utenti presenti
<!--raw-typst
#show figure: set block(breakable: true)
#figure(
  table(
    columns: (1fr, 1.75fr, 3fr),
    align: horizon,
    inset: 5pt,
    table.header(
      [#text(fill: white)[*Tipo di Utente*]],
      [#text(fill: white)[*Descrizione*]],
      [#text(fill: white)[*Operazioni*]],
    ),
    [Cliente],
    [È la persona che utilizzerà il prodotto finale ed usufruirà dei servizi offerti dal Sistema, con delle limitazioni.],
    [Può effettuare ordini? Sì.\ Può visualizzare le merci nel Sistema? Sì.\ Può confermare gli ordini? Sì.\ Può visualizzare gli ordini effettuati? Sì.\ Può aumentare lo stock di una certa merce? No. \ Può creare una nuova merce? No.\ Può creare un trasferimento tra magazzini? No.],
    [Admin \ Locale],
    [È la persona responsabile di un singolo magazzino, \ con un interesse "locale" verso di esso.],
    [Può effettuare ordini? No. \ Può visualizzare le merci nel Sistema? Sì. \ Può confermare gli ordini? No. \ Può visualizzare gli ordini effettuati? No. \ Può aumentare lo stock di una certa merce? Sì. \ Può creare una nuova merce? No. \ Può creare un trasferimento tra magazzini? No.],
    [Admin \ Globale],
    [È la persona che ha la responsabilità di supervisionare su tutti i magazzini presenti nel Sistema; \ è la persona più importante e più delicata dal punto di vista decisionale.],
    [Può effettuare ordini? No. \ Può visualizzare le merci nel Sistema? No. \ Può confermare gli ordini? No. \ Può visualizzare gli ordini effettuati? No. \ Può aumentare lo stock di una certa merce? No. \ Può creare una nuova merce? Sì. \ Può creare un trasferimento tra magazzini? Sì.],
  ),
  caption: [Riepilogo degli Utenti presenti nel Sistema]
)
-->
<!--typst-begin-exclude-->
| Tipo di Utente | Descrizione | Azioni |
|---|:---:|:---|
| Cliente | È la persona che utilizzerà il prodotto finale ed usufruirà dei servizi offerti dal Sistema, con delle limitazioni. | Può effettuare ordini? Sì.<br>Può visualizzare le merci nel Sistema? Sì.<br>Può confermare gli ordini? Sì.<br>Può visualizzare gli ordini effettuati? Sì. <br> Può aumentare lo stock di una certa merce? No. <br>Può creare una nuova merce? No.<br>Può creare un trasferimento tra magazzini? No. |
| Admin Locale | È la persona responsabile di un singolo magazzino,<br> con un interesse "locale" verso di esso. | Può effettuare ordini? No.<br>Può visualizzare le merci nel Sistema? No.<br>Può confermare gli ordini? No.<br>Può visualizzare gli ordini effettuati? No.<br> Può aumentare lo stock di una certa merce? Sì.<br>Può creare una nuova merce? No.<br>Può creare un trasferimento tra magazzini? No. |
| Admin Globale | È la persona che ha la responsabilità di supervisionare su tutti i magazzini presenti nel Sistema; <br> è la persona più importante e più delicata dal punto di vista decisionale. | Può effettuare ordini? No.<br>Può visualizzare le merci nel Sistema? No.<br>Può confermare gli ordini? No.<br>Può visualizzare gli ordini effettuati? No. <br>Può aumentare lo stock di una certa merce? Sì.<br>Può creare una nuova merce? Sì.<br>Può creare un trasferimento tra magazzini? Sì. |
<!--typst-end-exclude-->

<!--raw-typst #pagebreak() -->
