# Tipi di utenti <tipiutenti>

Nel Sistema che _ALimitedGroup_ realizzerà ed implementerà, sono presenti tre tipi di utenti:
+ Il <strong>Cliente</strong>;
+ L'__Admin Locale__;
+ L'__Admin Globale__.

## Cliente
Il __Cliente__ è la persona che utilizzerà il prodotto finale ed usufruirà dei servizi offerti dal Sistema con, chiaramente, delle limitazioni riguardo certe operazioni. Questo tipo di utente potrà effettuare le seguenti azioni all'interno del Sistema:
* __Autenticare__, immettendo _username_ e _password_ tramite l'apposita _API_#super[G] offerta;
* __Creare un ordine__ inserendo il nome, il destinatario dell'ordine e l'indirizzo di spedizione;
* __Selezionare la merce per l'ordine__ inserendo la quantità, per ognuna delle merci aggiunte all'ordine;
* __Confermare l'ordine__ ed in questo modo far partire la richiesta per l'ordine, in attesa che venga elaborata;
* __Visualizzare la lista degli ordini non confermati__ e, per ognuno di essi, visualizzarne le informazioni come:
    - L'__ID__ dell'ordine;
    - La __Data di creazione__ dell'ordine;
    - Il __Nome__ dell'ordine;
    - La __Lista delle merci__ nell'ordine e, per ognuna di questa:
        + Il __Nome__ della merce aggiunta all'ordine;
        + La __Quantità__ della merce nell'ordine.
* __Visualizzare la lista delle merci disponibili nel Sistema__ e, per ognuna di essa, visualizzare:
    - Il __Nome__ della merce;
    - L'__ID__ della merce;
    - La __Descrizione__ della merce;
    - La __Quantità Complessiva__ in tutti i magazzini presenti nel Sistema;
    - La __Quantità__ disponibile nel magazzino più vicino al Cliente.

## Admin Locale
L'__Admin Locale__ è la persona responsabile#super[G] per un singolo magazzino, con un interesse "locale" alla situazione di quest'ultimo. Inoltre, rispetto al Cliente, l'Admin Locale ha un maggior potere decisionale sulle azioni da intraprendere all'interno del magazzino. Le operazioni che questo tipo di utente ha la possibilità di effettuare, sono le seguenti:
* __Aggiungere__ ed aumentare lo _stock_#super[G] disponibile per una merce, inserendone la quantità;
* __Creare__ un sistema di _Backup_ per il ripristino dei dati, in caso di cyberattacchi;
* __Attivare__ il sistema di _Backup_, specificandone la periodicità con cui si attiva;
* __Eliminare__ il sistema di _Backup_, in caso ne esista uno precedentemente creato;
* __Ripristinare__ i dati dall'ultimo _Backup_ effettuato e disponibile nel magazzino, in caso ne esista uno;

## Admin Globale
L'__Admin Globale__ ha la responsabilità di supervisionare tutti i magazzini presenti, ha quindi un interesse "globale" sul Sistema e tutte le sue componenti. Questa tipologia di utente è la più importante, dal punto di vista decisionale, ma soprattutto la più delicata richiedendo che ci sia un'elevata attenzione ad ogni azione presa. La lista di operazioni disponibili per questo tipo di utente è la seguente:
* __Creare__ un trasferimento#super[G] di merci da confermare, scegliendo per ognuno:
    - Il __magazzino mittente__ del trasferimento#super[G];
    - Il __magazzino destinatario__ del trasferimento#super[G].
* __Aggiungere__ la merce ad un trasferimento#super[G] non confermato, a patto che:
    - Il __magazzino mittente__ del trasferimento#super[G], abbia la quantità di merce sufficiente nello _stock_#super[G];
    - __Esista__ un trasferimento#super[G] precedentemente creato.
* __Confermare__ un trasferimento#super[G] così da procedere con la richiesta, a patto che:
    - Il magazzino mittente del trasferimento#super[G], abbia la quantità di merce sufficiente nello _stock_#super[G];
    - Esista un trasferimento#super[G] non confermato nel Sistema.
* __Cancellare__ un trasferimento#super[G] non ancora confermato, a patto che ne esista uno;
* __Visualizzare__ l'elenco di tutti trasferimenti presenti nel Sistema, visualizzando per ognuno:
    - L'__ID__ del trasferimento#super[G];
    - Lo __Stato__ del trasferimento#super[G].
* __Visualizzare__ nel dettaglio un particolare trasferimento#super[G], visualizzando:
    - L'__ID__ del trasferimento#super[G];
    - Lo __Stato__ del trasferimento#super[G];
    - Il __Magazzino mittente__ del trasferimento#super[G];
    - Il __Magazzino destinatario__ del trasferimento#super[G];
    - L'__Elenco delle merci__ interessate nel trasferimento#super[G], e per ognuna di queste:
        + Il __Nome__ della singola merce nel trasferimento#super[G];
        + La __Quantità__ della singola merce nel trasferimento#super[G].
* __Visualizzare__ l'elenco delle notifiche di rifornimento, a patto che ne esistano, e per ognuna visualizzare:
    - L'__ID__ della notifica di rifornimento;
    - Lo __Stato__ della notifica di rifornimento.
* __Visualizzare__ nel dettaglio una notifica di rifornimento, visualizzando:
    - Lo __Stato__ della notifica;
    - L'__ID__ della notifica;
    - Il __Magazzino__ di destinazione del rifornimento;
    - L'__Elenco delle merci__ che è consigliato rifornire, e per ognuna delle merci è possibile visualizzare:
        + L'__ID__ della merce;
        + La __Quantità__ consigliata da rifornire della merce;
        + Il __Nome__ della merce.
* __Accettare__ una notifica di rifornimento, purchè ne esista una;
* __Rifiutare__ una notifica di rifornimento, a condizione che ne esista una;
* __Visualizzare__ l'elenco dei microservizi, e per ognuno di essi visualizzare:
    - Il __Numero di richieste al secondo__ del microservizio;
    - Il __Nome__ del microservizio.
* __Esportare__ gli ordini eseguiti, purché ce ne siano, in un _file_ .csv;
* __Esportare__ il _report_ dell'inventario, a patto che ce ne esista uno, in un _file_ .csv;
* __Creare__ una soglia minima, a condizione che sia valida, in una determinata merce;
* __Creare__ una nuova merce, inserendo:
    - Il __Nome__ della nuova merce;
    - La __Descrizione__ della nuova merce.
* __Aggiornare__ le informazioni su una determinata merce.

## Riepilogo degli Utenti presenti
<!--raw-typst
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
    [Può effettuare ordini? Sì.\ Può visualizzare le merci nel Sistema? Sì.\ Può confermare gli ordini? Sì.\ Può visualizzare gli ordini effettuati? Sì.\ Può cambiare il ruolo ad un Utente nel Sistema? No. \ Può creare un sistema di Backup? No.\ Può aumentare lo stock di una certa merce? No. \ Può creare una nuova merce? No.\ Può creare un trasferimento tra magazzini? No.],
    [Admin \ Locale],
    [È la persona responsabile di un singolo magazzino, \ con un interesse "locale" verso di esso.],
    [Può effettuare ordini? No. \ Può visualizzare le merci nel Sistema? Sì. \ Può confermare gli ordini? No. \ Può visualizzare gli ordini effettuati? No. \ Può cambiare il ruolo ad un Utente nel Sistema? Sì. \ Può creare un sistema di Backup? Sì. \ Può aumentare lo stock di una certa merce? Sì. \ Può creare una nuova merce? No. \ Può creare un trasferimento tra magazzini? No.],
    [Admin \ Globale],
    [È la persona che ha la responsabilità di supervisionare su tutti i magazzini presenti nel Sistema; \ è la persona più importante e più delicata dal punto di vista decisionale.],
    [Può effettuare ordini? No. \ Può visualizzare le merci nel Sistema? Sì. \ Può confermare gli ordini? No. \ Può visualizzare gli ordini effettuati? No. \ Può cambiare il ruolo ad un Utente nel Sistema? Sì. \ Può creare un sistema di Backup? Sì. \ Può aumentare lo stock di una certa merce? Sì. \ Può creare una nuova merce? Sì. \ Può creare un trasferimento tra magazzini? Sì.],
  ),
  caption: [Riepilogo degli Utenti presenti nel Sistema]
)
-->
<!--typst-begin-exclude-->
| Tipo di Utente | Descrizione | Azioni |
|---|:---:|:---|
| Cliente | È la persona che utilizzerà il prodotto finale ed usufruirà dei servizi offerti dal Sistema, con delle limitazioni. | Può effettuare ordini? Sì.<br>Può visualizzare le merci nel Sistema? Sì.<br>Può confermare gli ordini? Sì.<br>Può visualizzare gli ordini effettuati? Sì.<br>Può cambiare il ruolo ad un Utente nel Sistema? no. <br>Può creare un sistema di Backup? No.<br>Può aumentare lo stock di una certa merce? No. <br>Può creare una nuova merce? No.<br>Può creare un trasferimento tra magazzini? No. |
| Admin Locale | È la persona responsabile di un singolo magazzino,<br> con un interesse "locale" verso di esso. | Può effettuare ordini? No.<br>Può visualizzare le merci nel Sistema? Sì.<br>Può confermare gli ordini? No.<br>Può visualizzare gli ordini effettuati? No.<br>Può cambiare il ruolo ad un Utente nel Sistema? Sì.<br>Può creare un sistema di Backup? Sì.<br>Può aumentare lo stock di una certa merce? Sì.<br>Può creare una nuova merce? No.<br>Può creare un trasferimento tra magazzini? No. |
| Admin Globale | È la persona che ha la responsabilità di supervisionare su tutti i magazzini presenti nel Sistema; <br> è la persona più importante e più delicata dal punto di vista decisionale. | Può effettuare ordini? No.<br>Può visualizzare le merci nel Sistema? Sì.<br>Può confermare gli ordini? No.<br>Può visualizzare gli ordini effettuati? No.<br>Può cambiare il ruolo ad un Utente nel Sistema? Sì.<br>Può creare un sistema di Backup? Sì.<br>Può aumentare lo stock di una certa merce? Sì.<br>Può creare una nuova merce? Sì.<br>Può creare un trasferimento tra magazzini? Sì. |
<!--typst-end-exclude-->
