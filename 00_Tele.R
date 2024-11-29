#i commenti sono importantissimi, il software così non legge nulla
#devo riempire l'esame di commenti
#attraverso questo cancelletto posso scrivere quello che voglio su R studio
# <- questo è il simbolo dell'assegnazione
#ovviamente su R quando scrivo il nome del vettore e basta mi esce fuori gli oggetti che compongono il vettore come output
#commento. First R script
#R as a calculator
a <- 6*7
b <- 5*8
a + b
#array: vettore di dati
#IMPORTANTE COMMENTARE per l'esame
#Arrays=vettori, serie di dati concatenati insieme
# A LUI PIACCONO GLI SPAZI per cui lasciare sempre bene spaziato 
flowers <- c (3, 6, 8, 10, 15, 18)
#c mi permette di concatenare i numeri in una funzione
#in R le funzioni contengono le parentesi
#i fiori sono i nostri oggetti a cui gli assegnamo gli argomenti, vettore che mi dice quanti fiori ho nei vari plot
flowers
insects <- c(10, 16, 25, 42, 61, 73)
insects
#posso mettere in relazione questi numeri, prendo ogni singola misura fatta nei plot e li metto in corrispondenza l'uno con l'altro
plot(flowers, insects)
#prima si mette la variabile delle ascisse (X) e poi quella delle ordinate (Y)
#point character: pch, tutti i simboli
#cambio i parametri del plot

#symbols
plot(flowers, insects, pch=19)
#si può variare la dimensione di questi simboli->chex= character esageration
#pch=19 rappresenta il simbolo cerchio pieno
#symbol dimensions
plot(flowers, insects, pch=19, cex=2)
#posso diminuire la dimensione, i cex<1
plot(flowers, insects, pch=19, cex=0.5)
#In R il separatore decimale è il punto e possiamo scriverlo sia come 0.5 sia .5
#posso anche variare il colore= col
plot(flowers, insects, pch=19, cex=0.5, col="chocolate1")
#salvare script: commit changes

#LEZIONE 2
#SCRIVERE SEMPRE IL CODICE PRIMA SU GITHUB e poi lo mettiamo su R
#Installing new packages in R
#possiamo scaricare in due modi i pacchetti su R-> usando CRAN (Comprehensive R Archive Network): Il repository ufficiale dove vengono pubblicati la maggior parte dei pacchetti
#dentro CRAN ci sono i pacchetti che sono stati revisionati dagli sviluppatori del software R
#CRAN lo trovo su internet
#un altro metodo è scaricare i pacchetti non direttamente controllati da R ma sviluppati da persone terze, in questo caso il pacchetto che useremo è imageRy, in questo caso il pacchetto si trova su gitHub
#install.packages() è quello che va a prendere i pacchetti proprio dal CRAN
#scarichiamo terra
#la funzione per scaricare i pacchetti installa.packages() installa le funzioni da altre repositories di R o dai file locali del nostro computer
install.packages("terra") 
#l'argomento che vado ad inserire è il pacchetto che vado ad installare
#dobbiamo usare le virgolette
#per controllare che il pacchetto funziona senza errori lo richiamo in R tramite library()
#library() mi carica il pacchetto dentro R
#library("terra") vedere se il pacchetto è stato correttamente installato
#per rimuovere dei pacchetti funzione remove.packages()
#si possono anche aggiornare i pacchetti
#per cercare le persone su githup si scrive su cerca user:nomedelprofilo(=ducciorocchini)

# Installing new packages in R

# install.packages("terra")
library(terra)
#il pacchetto terra è uno Spatial Data Analysis, permette di lavorare con dati spaziali, soprattutto con immagini raster (= immagini geografiche grigliate) e vettoriali (punti, linee e poligoni)

library(devtools)

# install the imageRy package from GitHub
devtools::install_github("ducciorocchini/imageRy")
#questa è una funzione che permette di installare il pacchetto di github, specificando da dove lo andiamo a prendere
#altrimenti possiamo anche solo scrivere install_github("") per scaricare il pacchetto sempre da github, tanto questo è dipendente da devtools
#devtools::install_github("") va a vedere se nel profilo github è presente il pacchetto con il suo nome preciso, va a pescare, mettiamo le virgolette perchè stiamo uscendo da R per entrare in github

library(imageRy)
#con CRAN posso trovare i pacchetti controllati da sviluppatori del software R
#posso anche installare pacchetti non controllati da R, come imageRy
#lo installo tramite github
#la funzione install.packages("") è quella di R

#la funzione install_github("") è dipendente da devtools
#devo prima installare il pacchetto devtools, che è sul CRAN
#devtools contiene la funzione install_github, che pesca imageRy
#quindi prima devo installare devtools dopodiché essendo dentro questo pacchetto c'è la funzione install_github dove attraverso questa posso installare imageRy

#se vogliamo far vedere da dove provengono le nostre funzioni: devtools::install_github("ducciorocchini/imageRy")
#dico che è una funzione di questo pacchetto che si chiama devtools: funzione che deriva dal pacchetto che si chiama devtools
#si può anche scrivere semplicemente install_github("")
install.packages("devtools") #pacchetto dedicato allo sviluppo DEVTOOLS STA DENTRO IL CRAN, PER INSTALLARE I PACCHETTI DEL CRAN C'è DA USARE LA FUNZIONE install.packages("")
#c'è sempre da mettere le virgolette quando voglio prendere qualcosa al di fuori di R (come scaricare un pacchetto dal CRAN)

#tutte le volte che usiamo dei pacchetti li si scrivono tutti in cima insieme, con library() 
#si fa una lista sin dall'inizio di tutti i pacchetti che utilizzeremo nello script, si installano e vediamo con la library() se li abbiamo tutti insieme
#library()= require()
#si può usare una funzione di devtools che è install_github("") va nell'account di qualcuno e vede se c'è il pacchetto con il suo nome
#R è un software CASE SENSITIVE
#una volta installato il pacchetto si manda library()
#PER USARE I PACCHETTI DEVO SEMPRE SCRIVERE library() dopo averli installati, o per riprenderli dalla memoria. Si può anche scrivere require()
#per library() non c'è bisogno di mettere le virgolette prima e dopo il nome perchè l'oggetto, il pacchetto, sta già dentro R, va a pescare i pacchetti già installati
#install.packahes("") sono funzioni che portano delle cose all'interno di R, prendendole da fuori, le virgolette servono solo per dei pezzi di testo, quindi per cose fuori da R

#imageRy fornisce funzioni e dati che si possono usare in maniera molto veloce

#Control+S= commit changes, salva lo script

#per via che abbiamo installato devtools abbiamo potuto poi installare il pacchetto imageRy, usando proprio la funzione con devtools
#se abbiamo installato i pacchetti correttamente quando faccio library() non deve venire fuori alcun errore
#imageRy nasce come pacchetto che fornisce funzioni e dati per lavorare in maniera veloce

LEZIONE 3

#ora andiamo a giocare con la visualizzazione dei dati satellitari
#si caricano dei dati, che in questo caso sono dei dati all'interno del pacchetto imageRy e si cominciano ad analizzare
#ci focalizzeremo anche nel capire perché abbiamo installato i pacchetti la scorsa volta, riprendendo anche da dove li abbiamo installati
#possiamo installare pacchetti sia via CRAN sia via github, per installare via github dobbiamo avere devtools precedentemente installato, per cui lo installiamo tramite CRAN
#se voglio informazioni su imageRy basta andare sul github del prof, basta andare su Repositories e lì si trova la cartella imageRy


#satellites data visualisation in R by imageRy
# RS data

#c'è da richiamare i pacchetti che abbiamo installato per andare a lavorare sul telerilevamento
library(imageRy)
library(terra)
#in questa maniera abbiamo richiamato i pacchetti
# in case you have not terra
# install.packages("terra")
#devtools non ci serve più

#su imageRy di ducciorocchini, c'è un manuale rapido dove c'è tutta la lista delle funzioni; tutte le funzioni di imageRy iniziano con im.

#tutte le funzioni di imageRy iniziano con im.
#la prima funzione che andiamo ad analizzare è im.list() fornisce la lista di tutti i dati che si sono già caricati sul pacchetto, e che andremo ad utilizzare
#C'è SEMPRE DA SCRIVERE I COMMENTI, DI COSA SIGNIFICANO LE FUNZIONI CHE UTILIZZIAMO, PER CUI IN QUESTO CASO:

im.list() # list of data available on imageRy

#questo deve essere il modo in cui io scrivo lo script per l'esame
#lista dei file che abbiamo a disposizione
im.list()
#non ci sono argomenti nella funzione in questo caso, prende tutti i dati. Per tutte le funzioni di R c'è sempre da utilizzare le parentesi
#dove sono questi dati-> noi siamo dentro R, il pacchetto imageRy lo abbiamo installato, quindi dentro. Dentro il pacchetto ci sono dei dati
#per importarli direttamente in R ed iniziare ad utilizzarli è stata creata la funzione im.import(), che ci permette di utilizzare uno dei dati che è nella lista
#per importare direttamente in R e usare i dati da R è im.import() 
#fa usare uno dei dati che è nella lista
#importing data
#importazione dei dati, importo l'immagine; andando a vedere la lista di dati presenti dentro imageRy
#andiamo a creare un progetto con uno di questi dati
#questi dati presentano varie estensioni possibili es. jpg
im.import()
#im.import() permette l'importazione (dell'immagine) devo scrivere l'argomento dentro questa funzione
im.import("matogrosso_ast_2006209_lrg.jpg") #mi permette di importare i dai per vederli
#NASA: Earth Observatory, vediamo tutte le immagini della NASA

#EARTH OBSERVATORY POTREBBE ESSERE UN SITO DA CUI POSSIAMO SCARICARE LE IMMAGINI PER IL NOSTRO PROGETTO


#visualizziamo l'immagine
#ora noi vogliamo usare l'immagine che è venuta fuori
#creo un oggetto con uno di questi dati
#assegno con assegnazione <-  ad un ogetto
mato <- im.import("matogrosso_ast_2006209_lrg.jpg")
#per creare un oggetto c'è da scrivere il nome dell'oggetto che vogliamo creare, il simbolo dell'assegnazione, la funzione e gli argomenti della funzione NB PERCHè TUTTO R è COSì
#così abbiamo fatto una importazione dell'immagine
#I DATI SONO GIà STATI SCRITTI CON LE VIRGOLETTE SU imageRy, quindi se anche stiamo su R usiamo le virgolette in questo caso, un po' come succedeva per i colori
#avevamo fatto un vettore con i colori, e li avevamo salvati già con le virgolette
#mi plotta su R una immagine
#abbiamo importanto una prima immagine, è una immagine composta con varie bande insieme
#da adesso in poi i pacchetti già sono stati installati, non abbiamo bisogno di installare alcun pacchetto, li dobbiamo solo richiamare con library()


#vogliamo plottare i dati: plotting data
plot(mato)
#la scorsa volta abbiamo fatto il plot di una variabile contro un'altra, plot x ed y, adesso attraverso i pacchetti imageRy e terra facciamo solo un plot dell'immagine
#adesso siccome vuole un attimo semplificare la visualizzazione prende in considerazione un'altra immagine, per andare poi a vedere le singole bande
#prendiamo nella lista una immagine con una singola banda
#nella lista sempre vista prima, ci sta questa immagine con una singola banda
im.import("sentinel.dolomites.b2.tif")
#dopo im.import() il contenuto in questo caso dobbiamo metterlo con le virgolette perchè l'immagine è stata salvata nella lista con già le virgolette presenti nel suo nome
#diamo un nome a questa immagine importandola
b2 <-im.import("sentinel.dolomites.b2.tif")
#l'immagine satellitare è composta da tante bande, abbiamo il sensore che misura il paesaggio con varie bande, si ha ogni singolo sensore per tutte le bande che abbiamo, misura una certa lunghezza d'onda
#quindi alla fine si ha il sensore per il rosso, giallo, blu, celeste ecc. quindi per ogni lunghezza d'onda si ha un sensore diverso che va a fare la misura, quindi in questo caso
#la banda numero due di sentinel è la banda che corrisponde alla lunghezza d'onda del blu; sentinel è un satellite
#b2=banda due, la importiamo
#la banda numero 2 di sentinel rappresenta la banda del blu, registra la lunghezza d'onda del blu
#stiamo vedendo tutto quello che riflette nella lunghezza d'onda del blu
#a questo punto possiamo cambiare la scala di colori
#possiamo fare una scala di colori diversa, di grigi

#la funzione è colorRampPalette, per cambiare una scala di colori
#funzione che cambia una certa scala di colori
#array=vettori di più colori, per tenerli insieme c li concateniamo insieme
#possiamo mettere anche la serie di sfumature che vogliamo, accanto mettiamo la parentesi (3)
#lo possiamo assegnare ad un oggetto clg
#QUESTO è UN ARRAY, questo è un vettore di più colori; degli elementi che stanno insieme
#per tenerli insieme usiamo la funzione che si chiama c, che vuol dire CONCATENING, e li concateniamo insieme
#un'altra cosa che possiamo inserire fuori dalla funzione, è la serie di sfumature che vogliamo es. vogliamo solo 3 sfumature (3)
#questa colorRampPalette la associamo comunque ad un oggetto clg, l'assegniamo ad un oggetto
clg <- colorRampPalette(c("black", "grey", "light grey"))(3)

#il nero sarà quello che assorbe tutto il blu, il grigio mediamente assorbe il blu ed il bianco riflette il blu
#R è CASE SENSITIVE
#i colori dentro R sono immagazzinati con le virgolette
#con questo posso fare poi il plot, con una diversa scala di colori, che abbiamo appena costruito nell'oggetto clg, per cui col, per colori col=clg

plot(b2, col=clg)

#posso anche dichiarare 100 sfumature, possiamo cambiare il numero di 3 sfumature a 100
clg <- colorRampPalette(c("black", "grey", "light grey"))(100)
plot(b2, col=clg)
#in questo modo avrò comunque i tre colori che abbiamo scritto, solo che di questi tre mi presentano ben 100 sfumature, quindi l'immagine mi verrà più distinta
#posso variare i colori
clcyan <- colorRampPalette(c("magenta", "cyan4", "cyan"))(100)
 plot(b2, col=clcyan)
#per vedere i colori su R basta scrivere R package colors o R colors names
#posso anche cambiare i colori, posso cambiare le colorRampPalette, per vedere i colori disponibili basta andare su google e scrivere R PACKAGES COLORS
#ma si possono anche aggiungere i colori
clch <- colorRampPalette(c("magenta", "cyan4", "cyan", "chartreuse"))(100)
plot(b2, col=clch)
#qui siamo nell'onda elettromagnetica del blu, la roccia comunque riflette su tutte le lunghezze d'onda, quindi riflette anche il blu
#so che la parte viola è vegetazione perché questa assorbe tutta la lunghezza d'onda del blu e del rosso, per fare la fotosintesi
#la vegetazione assorbe tutta la lunghezza d'onda del blu per fare fotosintesi, abbiamo quindi una bassa riflettanza
#mentre la roccia riflette tutte le lunghezze d'onde (è bianca), quindi riflette anche il blu
#la riflettanza è il rapporto tra l'energia che viene davvero riflessa e l'energia incidente

#vediamo ora un'altra banda
#importiamo tutte e 4 le singole bande
#importing the additional bands
#si va a vedere la lista di prima
# import the green band from Sentinel-2 (band 3)
#banda 3 corrisponde a 560 nanometri, è la lunghezza d'onda del verde (la visione umana va da 450 fino a 650/670 nanometri)
# import the green band from Sentinel-2 (band 3)
b3 <- im.import("sentinel.dolomites.b3.tif")
#importiamo la banda 3 creandogli un oggetto su R
#facciamo il plot della banda 3 con l'agenda, il colore clch
plot(b3, col=clch)
#vediamo quali sono le altre bande che dobbiamo importare, sempre dalla lista
#facciamo anche per le altre bande: il rosso (banda 4) e infrarosso (banda 8)
# import the red band from Sentinel-2 (band 4)
b4 <- im.import("sentinel.dolomites.b4.tif") 
plot(b4, col=clch)
#questo per il rosso
#per l'infrarosso
# import the NIR band from Sentinel-2 (band 8)
b8 <- im.import("sentinel.dolomites.b8.tif") 
plot(b8, col=clch)
#l'infrarosso dà molte più informazioni, le componenti biologiche sono molto più diverse tra loro in questa lunghezza d'onda

#ora le si plotta tutte insieme
#c'è da creare un multiframe
#un multiframe contiene vari grafici tutti insieme
#possiamo mettere le 4 bande tutte insieme (b2, b3, b4, b8), le possiamo mettere in un unico plot
#dobbiamo creare il multiframe dove inseriremo le immagini
#lo si fa con la funzione che si chiama par()
#C'è DA FARE TUTTE QUESTE SPIEGAZIONI PER L'ESAME, PERCHè USIAMO QUESTA FUNZIONE, COSA C'è SCRITTO DENTRO ECC. PIù COMMENTIAMO MEGLIO è
# multiframe
par(mfrow=2,2)
#mf=multiframe
#facciamo una situazione con 2 righe e 2 colonne (4 bande)
#mfrow=ragioniamo per righe, si hanno 2 righe, poi si hanno 2 colonne
#questi 2 elementi par(mfrow=2,2) sono un array, quindi c'è da metterli insieme, sono gli elementi di uno stesso vettore, c'è da aggiungere la c alla funzione
par(mfrow=c(2,2))
#creo, senza vederlo ancora, un telaio dove metteremo le singole bande, telaio di 2x2
#nel primo blocco, ci mettiamo la banda n 2
plot(b2, col=clch)
#inserisco poi il secondo blocco la banda 3
plot(b3, col=clch)
#banda 4 che lo metterà sulla seconda riga a sx
plot(b4, col=clch)
#banda 8 seconda riga a dx
plot(b8, col=clch)
#uso par(mfrow) per mettere 4 immagini ognuna al suo posto
#par() ci permette di creare un MULTIFRAME, una tela inizialmente vuota dove posizioneremo i plot uno vicino all'altro

#esercizio
#plot the four bands one after another in single row
par(mfrow=c(1,4))
plot(b2, col=clch)
plot(b3, col=clch)
plot(b4, col=clch)
plot(b8, col=clch)
#una sola riga con 4 colonne, tutte le immagini si dispongono in una sola riga
#il primo numero sono le righe, il secondo le colonne

#un altro metodo è impilare le bande tutte insieme e crea una vera immagine satellitare
#lo si fa con una procedura che si chiama stack
#possiamo prendere tutte le bande e considerarle come elementi di un array, elementi di uno stesso blocco, unendole tutte insieme con la procedura stack
#avrò una singola immagine satellitare dove avrò i singoli elementi uniti
# Let's make a satellite image
stacksent <-c(b2, b3, b4, b8)
#poi si possono plottare i singoli elementi di uno stack
#mi permette di fare una immagine satellitare: satellite image
#scrivo all'interno tutti gli elementi, li metto insieme concatenandoli in un array=vettore
#la posso plottare scrivendo plot()
plot(stacksent, col=clch)
#in questo caso mette i nomi che sono proprio nelle immagini

#se avessimo una immagine satellitare già pronta con tutte le bande dentro, e vogliamo plottare solo la banda 8, il quarto elemento dell'immagine satellitare 
#in R i singoli elementi si selezionano con la parentesi quadra. indici di posizione=[]
plot(stacksent[[4]], col=clch)
#quarto elemento, 4, che rappresenterebbe la banda numero 8
#una sola parentesi quadra andrebbe bene per le tabelle, mi selezion0 [4] se fa parte di una tabella
#essendo in 2 dimensioni devo aggiungere altre due parentesi quadre avendo delle matrici, dei raster, perchè abbiamo righe e colonne dell'immagine, con una tabella basta 1 parentesi quadra
#questo mi permette di lavorare su un singolo elemento di uno stack, di un vettore
#per distruggere il par, ovvero il multiframe, fare dev.off()
#per eliminare il par precedente devo fare dev.off() cancella la parte grafica precedente 
#quando R nella parte grafica ci mantiene qualcosa che non ci piace, fare dev.off() perchè cancella il device precedente
#####DEV.OFF() anche se ci si impalla qualche grafico

#quello che abbiamo imparato oggi è che si possono importare le immagini satellitari e plottarle con colori a nostra scelta
#li possiamo plottare in un multiframe
#possiamo creare uno stack che ci permette di utilizzare una intera immagine satellitare
#nella prossima lezione plottiamo i dati utilizzando tante bande insieme della stessa immagine colorata, creiamo l'immagine con le sue bande


LEZIONE 4
#richiamo ogni volta che apro R i pacchetti che vado ad utilizzare
#rivediamo tutta la lista dei dati presenti in imageRy con la funzione im.list()
#oggi andremo a lavorare su tutti i dati che iniziano con sentinel
#dentro imageRy c'è la funzione im.import() e questa funzione ci permette di importare i dati
im.import( "sentinel.dolomites.b2.tif" )
#abbiamo importato la banda numero 2, la lunghezza d'onda di questa banda corrisponde a 490 nanometri possiamo assegnarla ad un oggetto, come b2
b2 <-  im.import( "sentinel.dolomites.b2.tif" )
#così facciamo anche per le altre bande, carichiamo le altre bande
#b3 è la banda n 3 corrispondente alla banda del verde, 560 nanometri
 b3 <- im.import("sentinel.dolomites.b3.tif")
#b4 è il rosso a 665
 b4 <- im.import("sentinel.dolomites.b4.tif")
#banda 8 che è il vicino infrarosso, si chiama vicino perchè è la zona dell'infrarosso più vicina alla parte del visibile
 b8 <- im.import("sentinel.dolomites.b8.tif")
#utilizziamo ora il par() per mettere le bande una vicina all'altra, come ci pare, facendo il multiframe
#dobbiamo inserire gli elementi di questo array, di questo vettore, e poi inserire all'interno i plot delle quattro bande 
par(mfrow= c (2,2))
plot(b2)
plot(b3)
plot(b4)
plot(b8)
#questa è la mia nuova visualizzazione per le 4 bande, già possiamo vedere come la banda dell'infrarosso mi possa dare molte più informazioni rispetto alle altre bande che sono più omogenee
#qua quindi abbiamo fatto un plot con tutte e 4 le bande usando uno stratagemma che è quello del multiframe, ovvero prima di plottare abbiamo eseguito par() e abbiamo così preparato lo schema per metterci dentro le bande
#altrimenti si può applicare lo stack. Per lo stack io ho le mie quattro bande separate e le unisco insieme in uno stack-> immagine(?) multispettrale, ovvero con tante bande insieme
#si considerano le bande per lo stack come elementi di un array, che sono 4 elementi che si infilano nella stessa immagine, e quindi utilizzo la funzione c per metterle tutte insieme
#in linguaggio informatico questo si chiama stack
#la funzione c mette insieme tutte e 4 le bande
# stack images
stacksent <- c(b2, b3, b4, b8)
dev.off() # it closes devices
plot(stacksent)
#abbiamo così il plot con le 4 bande che sono i 4 layers della immagine satellitare
#a questo punto abbiamo il nostro oggetto stacksent con tutte e 4 le bande
#se io volessi plottare solo il quarto elemento dello stack, che sarebbe la banda numero 8, plotto solo l'infrarosso
#prima di tutto ci consiglia di fare dev.off() cancella par() precedenti o in generale device precedenti
dev.off()
plot(stacksent[[4]])
#siccome siamo su una matrice devo mettere 2 parentesi quadre
# RGB plotting
# stacksent[[1]] = b2 = blue
# stacksent[[2]] = b3 = green
# stacksent[[3]] = b4 = red
# stacksent[[4]] = b8 = nir
#fino ad ora cosa abbiamo fatto, fino ad ora abbiamo plottato le singole barre ok tutte insieme però sempre separatamente, abbiamo fatto una visualizzazione separata

# Exercise: plot in a multiframe the bands with different color ramps
par(mfrow=c(2,2))

clb <- colorRampPalette(c("dark blue", "blue", "light blue")) (100)
plot(b2, col=clb)

clg <- colorRampPalette(c("dark green", "green", "light green")) (100)
plot(b3, col=clg)

clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)

cln <- colorRampPalette(c("brown", "orange", "yellow")) (100)
plot(b8, col=cln)

# RGB space
# stacksent: 
# band2 blue element 1, stacksent[[1]] 
# band3 green element 2, stacksent[[2]]
# band4 red element 3, stacksent[[3]]
# band8 nir element 4, stacksent[[4]]


#abbiamo plottato fino ad ora le singole barre senza metterle tutte insieme in una unica immagine
#uso delle immagini per visualizzare i colori in modo nuovo
#chiave su come si montano i colori sul computer o su qualsiasi oggetto digitale: schema RGB. questo è lo schema più utilizzato. 3 grandi filtri/colori principali: rosso, verde e blu
#RGB= Red, Green, Blu
#si usano questi filtri e la combinazione di tutti e 3 questi filtri porta a tutti i potenziali colori.
#pensiamo per esempio ora di eliminare uno di questi tre filtri per es. il rosso, ed al posto del rosso mettiamo l'infrarosso (che non è un colore che in realtà possiamo vedere)
#tutto quello che riflette l'infrarosso, ovvero le piante, diventa del colore del filtro che abbiamo sostituito, per cui rosso in questo caso
#ci metteremo ora a sostituire i vari "dischetti" di questo schema, in questo caso per usare l'infrarosso
#useremo la banda infrarosso. satellite sentinel. le bande si usano 3 per volta, sono 3 filtrini per l'RGB. 
#schema di bande per vedere nuovi colori
#possiamo decidere noi quali saranno le bande ed i colori che vogliamo vedere, per quali elementi

im.plotRGB(stacksent, r=3, g=2, b=1)
im.plotRGB(stacksent, r=4, g=3, b=2)
im.plotRGB(stacksent, r=3, g=4, b=2)
im.plotRGB(stacksent, r=3, g=2, b=4)

#RGB plotting
#commentiamo per ricordarci chi sono le 4 bande
#stacksent[[1]]= b2 = blu l'elemento n 1 corrisponde alla banda n 2 che corrisponde alla banda del blu
#stacksent[[2]]= b3 = verde
#stacksent[[3]]= b4 = rosso
#stacksent[[4]] = b8 = infrarosso = nir
#sappiamo ora quali sono le 4 bande. facciamo un plot RGB
#in Imagery se andiamo a vedere le funzioni c'è una che si chiama im.plotRGB()
#funzione di imageRy im.plotRGB()
#dichiaro il nome dell'immagine, in questo caso stacksent, e le tre componenti che corrispondono a RGB
im.plotRGB(stacksent, )
#prendiamo le tre componenti red, green e blu, poi abbiamo le 4 bande della nostra immagine: blu, verde, rosso e infrarosso=nir.
#associamo per ogni componente la banda corrispondente per vedere l'immagine con colori "naturali", con la nostra visione
#livello n3 al red, secondo elemento al green, blu ad 1: 3,2,1
im.plotRGB(stacksent, r=3, g=2, b=1)
#oppure possiamo anche scrivere il numero corrispondente alla posizione della banda, l'elemento di stacksent
im.plotRGB(stacksent, 3, 2, 1)
#in questo caso è l'immagine non più visualizzata come ogni singola banda, ma utilizziamo direttamente in questo caso i colori reali
#una banda che ci viene in aiuto per la vegetazione è la riflettanza dell'infrarosso nella foglia, nella foglia la riflettanza per l'infrarosso è molto alta
#quindi ci può aiutare a visualizzare meglio gli alberi, ci permette di differenziare la vegetazione
#nell'immagine con i tre filtri, RGB, prendo quello del red, rosso, lo si toglie e si mette infrarosso
#quindi invece di r=3 sarà r=4 che è la banda di infrarosso vicino
im.plotRGB(stacksent, 4, 2, 1)
#siccome ho messo l'infrarosso al posto della componente red, tutto quello che riflette molto l'infrarosso diventerà rosso
#la roccia rimane bianca per tutte le bande
#la vegetazione diventa rossa. Però vediamo le diverse tipologie di vegetazione-> i boschi di conifere si riconoscono dalle praterie di alta quota per le diverse sfumature di rosso
#infrarosso potenzia la visione in maniera molto più esponenziale rispetto alle bande del visibile


par(mfrow=c()))
#con par metto vicino l'immagine a colori naturali e l'immagine ad infrarosso
par(mfrow=c(1,2)) #abbiamo una riga 1, con due elementi 2
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)
#l'immagine a colori naturali rispetto all'immagine infrarosso è molto meno definita rispetto agli oggetti che si possono discriminare

#nella comunità del telerilevamento invece di sostituire solo il rosso con l'infrarosso vicino, si vanno a scartare tutte le bande
#si sostituiscono tutte, quindi le bande sono 4,3,2 facciamo tutte sostituzioni, l'immagine sarà praticamente la stessa
dev.off()
im.plotRGB(stacksent, 4, 3, 2)
#è esattamente la stessa immagine, chi ne governa, chi regola l'immagine, la gamma di colori, è quella banda che è meno correlata alle altre: l'infrarosso vicino, che aggiunge informazioni
#l'infrarosso non è correlata alle altre bande, mentre le altre sono collegate tra loro
#possiamo fare un par mettendo in fila le tre immagini create
par(mfrow=c(1,3))
im.plotRGB(stacksent, 3, 2, 1) #immagine a colori naturali
im.plotRGB(stacksent, 4, 2, 1) #immagine cambiando solo il rosso con l'infrarosso
im.plotRGB(stacksent, 4, 3, 2) #immagine cambiando tutte le bande. Viene usato come standard
#al livello visivo le due con l'infrarosso sono praticamente la stessa cosa, perchè le altre bande sono correlate tra loro e chi è che regola i colori è la banda non correlata ovvero l'infrarosso vicino
#nel momento in cui cambio il filtro del rosso con l'infrarosso cambio anche le altre due, per un livello però convenzionale, l'output è proprio la stessa cosa
dev.off()

#possiamo provare a fare altre combinazioni
im.plotRGB(stacksent, 3, 4, 2)
#inseriamo l'infrarosso nel verde piuttosto che nel rosso: nella componente green, tutto quello che riflette l'infrarosso diventerà verde fluorescente
#da una parte vediamo molto bene la discriminazione della vegetazione, vediamo molto bene le praterie, i boschi misti, le parti in ombra
# ed il suolo nudo di questa combinazione diventa rosa
#altra composizione: mettere il nir sul blu-> quando viene usata questa composizione, quando vogliamo evidenziare il suolo nudo, diventa giallo in questa composizione
im.plotRGB(stacksent, 3, 2, 4)
#il suolo nudo diventa giallo. il giallo è il colore che colpisce di più l'occhio umano
#metto l'infrarosso nel blu, 4 nella posizione del blu=2
#composizione spesso usata per far vedere il suolo nudo, in questo caso c'è roccia quindi non si vede bene
#se si vogliono evidenziare delle zone nella mappa, che colpiscono l'attenzione, è bene usare il giallo
#alcune zone diventano gialline perchè c'è il suolo ma di per sè essendo roccia rimane molto bianco

#facciamo multiframe con le 4 immagini tutti insieme
par(mfrow=c(1,4))
im.plotRGB(stacksent, 3, 2, 1) #natural colors
im.plotRGB(stacksent, 4, 3, 2) #nir on red
im.plotRGB(stacksent, 3, 4, 2) #nir on green
im.plotRGB(stacksent, 3, 2, 4) #nir on blu
#abbiamo così tutti i colori possibili
#per cui in questa maniera abbiamo visto: l'immagine a colori naturali, l'immagine con l'infrarosso vicino al posto del rosso, l'immagine con l'infrarosso vicino al posto del verde e l'immagine con l'infrarosso vicino al posto del blu
#l'unica banda che veramente regolava i colori di queste immagini è l'infrarosso vicino, perchè non è correlata alle altre

#SE IO VOLESSI VEDERE LA CORRELAZIONE TRA TANTE VARIABILI, VEDERE LA CORRELAZIONE TRA TUTTE LE VARIABILI CHE HO, ci permette di fare i grafici di tutte le correlazioni tra le variabili per es. a coppie di due
#grafici di correlazione ogni due variabili
#su R è presente una funzione, una riga di comando che fa tutto da sola

pairs()

#pairs() = scatter plot matrices
#fa una grande matrice con tutti i grafici all'interno
#questa funzione già anche calcola l'indice di correlazione di Pearson
#così come già calcola il grafico delle frequenze dei dati

#dentro la funzione pairs() c'è da mettere come argomento il nostro dato, in questo caso l'immagine satellitare, e a coppie di bande ci farà tutte le correlazioni
#cosa vogliamo dimostrare, cosa vogliamo vedere insieme: che le bande del visibile sono molto correlate tra loro
#correlation of informations

pairs(stacksent)
#sulla diagonale abbiamo le 4 bande, il primo elemento è la banda del blu, il secondo elemento è la banda del verde, il terzo elemento è la banda del rosso, il quarto elemento è la banda dell'infrarosso vicino
#sempre sulla diagonale abbiamo la distribuzione di frequenza dei dati. Ho dei valori bassi per delle bande, e poi dei valori alti
#quello che ci interessa sono i grafici e i dati
#il grafico ci fa vedere la correlazione di tutti i pixel, come si distribuiscono tutti i pixel, banda contro banda
#per esempio, banda1 contro banda2, blu contro il verde sono molto correlate tra loro, il blu contro il rosso ancora molto correlate, il verde contro il rosso ancora molto correlate
#questo sopra l'indice si chiama indice di correlazione di Pearson e varia tra -1 e 1. -1 è correlazione completamente negativa, 1 è correlazione completamente positiva. 
#I valori di correlazione di queste tre bande sono altissimi
#questi valori si abbassano quando si considera l'infrarosso vicino. blu rispetto l'infrarosso, così come il verde ed il rosso rispetto all'infrarosso
#l'infrarosso quindi aggiunge molte informazioni rispetto alle altre bande perchè la correlazione è molto minore
#questo per dimostrare che è l'infrarosso che fa la differenza nell'immagine

#qua vediamo tutti i pixel dentro ai vari grafici, per sapere con quanti dati stiamo lavorando, quanti pixel stiamo lavorando, e quindi avere informazioni sulle bande
#possiamo digitare direttamente il nome dell'immagine es.
b2
# avevamo importato e chiamato la banda 2 b2, possiamo vedere tutte le informazioni che riguardano questa banda, questo vale sempre-> se digitiamo il nome di un oggetto escono sempre fuori le informazioni di questo
#in questo caso la classe di questo oggetto ci dice che è un raster, ovvero una matrice di pixel. Per cui raster è la classe di questo dataset, di questi dati
#poi abbiamo il numero di righe, il numero di colonne, per cui quanti pixel ho su tutte le righe e quante colonne.
#se noi facciamo la moltiplicazione, abbiamo il numero di pixel totali,per cui 934*1059=989106
#per ogni banda abbiamo un milione di pixel più o meno

#una cosa che ci interessa sono le coordinate dell'immagine, e soprattutto il sistema di riferimento
#abbiamo l'ellissoide, WGS= World Geodetic System, la terra si approssima ad un ellissoide, e questo è uno degli ellissoide che si utilizzano
#UTM sta per Universal Transverse Mercator, è la proiezione che andiamo ad usare, è stata istituita nel primo dopoguerra
#c'è poi la divisione a zone
#dalla prossima lezione inizieremo proprio a spiegare le coordinate delle immagini

LEZIONE 5



