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


#LEZIONE 5  26.03

#parleremo di visualizzazioni dell'immagini da satellite
#parleremo anche di sistemi di riferimento
#codificazione delle immagini satellitari, quali sono i range di questi numeri, quali useremo ecc.
#adesso capiremo cosa sono gli indici spettrali-> su gitHub si trova la presentazione sugli indici spettrali
#le volte precedenti abbiamo visualizzato le singole bande dell'immagine satellitare e poi abbiamo visualizzato con uno schema RGB le varie bande insieme
 #per visualizzare una certa immagine sia a colori naturali sia che a colori falsi, falsi colori, false color, ovvero come l'infrarosso
#possiamo farlo per visualizzare una certa immagine; siccome avevamo tante bande a disposizione, occorre calcolarci l'indice
#cosa è un indice: montiamo le bande in un certo modo in modo per esempio che ci mostrino una componente del sistema importantissima che si chiama biomassa
#ovvero la massa biologica che c'è in un sistema, ovviamente la massa può essere un orso così come un albero. Per misurare questa biomassa possiamo usare le immagini satellitari e calcolare degli indici
#ci calcoliamo gli indici per le bande che abbiamo a disposizione
#per esempio due bande molto interessanti sono: il vicino infrarosso, perché c'è questo tessuto che è il mesofillo fogliare, con le cellule a palizzata; poi c'è il rosso
#il rosso viene assorbito praticamente del tutto (anche il blu in realtà, però si gioca con il rosso, poi vedremo il perché)
#possiamo giocare su queste due informazioni, il rosso viene assorbito per far partire la catena di elettroni tra l'inizio della fotosintesi e il ciclo di Calvin, la biomassa è un parametro molto utilizzata
#abbiamo le due bande: una è l'infrarosso mentre l'altra è il rosso, avremmo un pixel di infrarosso e lo stesso pixel nel rosso, e magari nello stesso pixel c'è un albero
#se c'è un albero ammettiamo di avere un range di valori di riflettanza, la riflettanza è una divisione tra la radiazione che viene riflessa al numerazione / la radiazione incidente al denominatore
#abbiamo questa riflettanza e andiamo a vedere la pianta come si comporta, ammettiamo di avere un range di riflettanza tra 0 e 100, 100 e il massimo di riflettanza e 0 è il minimo di riflettanza
#a questo punto avremmo che la pianta nell'infrarosso, avrà una riflettanza nell'infrarosso elevata, circa 90 per es. Il rosso viene assorbito quasi del tutto, riflette pochissimo 
#quindi avrà una riflettanza 10, una riflettanza molto bassa. Quindi mettiamo questa informazione in un indice, in un solo modello
#basta fare una operazione matematica, può essere qualsiasi tipo di operazione es. 90-10 = un nuovo livello; per cui il valore di questo nuovo livello è 80
#questo indice è una differenza, riguarda la vegetazione, quindi è un indice di vegetazione basato sulla differenza, infatti si chiama DIFFERENCE VEGETATION INDEX= DVI
#attraverso questo indice possiamo calcolarci la biomassa di quel pixel
#ora prendiamo un altro pixel che per es. non abbia vegetazione. Ammettiamo che ci sia una pianta che sta morendo o in generale una parte in cui la vegetazione non è più rigogliosa, es. c'è stato un taglio
#si va a fare lo stesso calcolo, solo che in questo caso in una pianta che muore il mesofillo fogliare è basso, quindi non si hanno più le cellule a palizzata, sono aggrovigliate l'una sull'altra
#l'infrarosso in questo caso viene riflesso molto meno, la riflettanza dell'infrarosso in questo caso sarà per es. 60; nel rosso, si ha un basso assorbimento ormai, la riflettanza sarà 430, aumenta, perchè non sarà più assorbita quella parte dello spettro del visibile
#facendo la differenza 60-30= l'indice su questo pixel è 30; attraverso questo calcolo DVI, possiamo fare un calcolo della biomassa stimata in una certa area
#potremmo usare anche il blu perchè pure il blu viene assorbito
#in generale ci interessa usare il rosso per questo motivo-> FIRMA SPETTRALE, è una sorta di impronta digitale della luce nelle varie lunghezze d'onda. Una pianta ha sempre la firma digitale (vedere slide)
#nella zona del blu c'è assorbimento, nella zona del verde c'è una più alta riflettanza, nel rosso c'è di nuovo assorbimento per poi andare nell'infrarosso
#questa si chiama firma spettrale, oggi attraverso le firme spettrali è possibile riconoscere le singole specie
#come si fanno le firme spettrali-> si prendono varie lunghezze d'onda: il blu, il verde, il rosso e l'infrarosso
#con queste lunghezze d'onda misuro la riflettanza di una pianta, nel blu abbiamo un alto assorbimento, nel verde una alta riflettanza, nel rosso alto assorbimento e nell'infrarosso una altissima riflettanza
#vedere slide
#la zona tra il rosso e l'infrarosso si chiama red edge. Il red edge, edge significa bordo, è l'ultima parte vicino al rosso. Indica quanto la pianta è sana, se io ho la pendenza come la slide, la pendenza se è alta la pianta è sana
#se la pendenza diminuisce la pianta starà soffrendo, per questo si usano per calcolare gli indici spettrali di vegetazione, l'infrarosso ed il rosso, perchè sono quelle contigue
#possiamo ora fare questo calcolo insieme


# spectral indices

#indichiamo i pacchetti che ci servono
library(imageRy)
library(terra)

#se volessimo andare su qualsiasi pagina on-line e premessimo control maiuscolo C, di qualsiasi pagina, ci viene fuori un oggetto che è il codice che sta regolando quella pagina e si chiama html
#possiamo vedere con control maiuscolo C i commenti, che non sono pubblicati nella pagina

#su imageRy su repositories abbiamo il manuale, la prima funzione che andiamo ad usare è: 
# list of files:
im.list()

# importing data
#facciamo importazione
#l'immagine è stata presa dal sito Earth Observatory della NASA
# https://visibleearth.nasa.gov/images/35891/deforestation-in-mato-grosso-brazil/35892l
#importiamo l'immagine con im.import()
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
#Landsat Science: immagine preso da questo sito
#hanno fatto l'immagine di un falso colore: 3 bande infrarosso, rosso e verde
#hanno fatto false color
#parla della deforestazione di quest'area
#c'è da capire come è stata creata quest'immagine, hanno creato una immagine in falso colore usando nir, red e green e l'hanno messa su internet
#quindi abbiamo a disposizione 3 bande, dove la prima è l'infrarosso, la seconda è il rosso e la terza è il verde (false color)
#ci segniamo questa informazione, così che sappiamo quali sono le tre bande
# band 1 = nir = R
# band 2 = red = G
# band 3 = green = B
#ora possiamo fare un po' di plot, cambiando la posizione dell'infrarosso
#in imageRy c'è la funzione im.plotRGB(), scriviamo al sistema come importare l'immagine, nome e le componenti RGB

#plotting the data
im.plotRGB(m1992, r=1, g=2, b=3)
#la banda n 1 è infrarosso vicino, tutto quello che diventa rosso è vegetazione
#questa è la foresta pluviale come era nel 1992
#nir on green
im.plotRGB(m1992, 2, 1,3)
#compare la parte verde fluo, parti rosa: suolo nudo
#per visualizzare il suolo nudo si usa un montaggio delle bande in modo che il suolo nudo diventa giallo
#il nir lo si sposta sul blu 
im.plotRGB(m1992, 2, 3, 1)
#cosa è successo nel 2006
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
#ASTER è un satellite più recente
#con più bande, oltre all'infrarosso vicino anche quello medio e termico
#in questa maniera ho importato l'immagine
#possiamo mettere le due immagini una vicino all'altra con par()
par(mfrow=c(1,2))
im.plotRGB(m1992, 1, 2, 3)
im.plotRGB(m2006, 1, 2, 3)
im.plotRGB(m1992, 1, 2, 3)
#nella componente red ci mettiamo l'infrarosso, nella componente green ci mettiamo il rosso, nella componente blu ci mettiamo il verde
#tutta la parte rossa, nella banda n1, tutto quello che diventa rosso è vegetazione iniziale, come era nel 1992
#un'altra composizione che possiamo fare è mettere l'infrarosso nella componente verde

# Exercise: put the nir ontop of the G component
im.plotRGB(m1992, 2, 1, 3)
#in verde fluo abbiamo tutta la foresta, le parti rosa sono le zone di suolo nudo
#per visualizzare meglio il suolo nudo, il giallo è la componente maggiormente visibile all'occhio nudo, mettiamo le bande in modo che il suolo nudo diventa giallo
#succede quando il nir è sulla componente blu
# nir ontop of the B component
im.plotRGB(m1992, 2, 3, 1)
#tutte le parti gialle è dove l'uomo ha interagito
#l'infratosso assorbe tutto, solitamente l'acqua nell'infrarosso diventa nera

dev.off()
#chiudiamo tutto, il grafico, così che studiamo solo per il 2006
#nir on top of green
im.plotRGB(m2006, 2, 1, 3)
#nir on top of blu
im.plotRGB(m2006, 2, 3, 1)
# importing the 2006 image
#stessa zona solo che dal 1992 passiamo al 2006

m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
#importiamo così l'immagine
#il satellite in questo caso è diverso si chiama aster=ast, ha tante bande, ha tutta la zona di infrarosso-> sia vicino che in quello medio e termico
#possiamo mettere due immagini vicine con par()
par(mfrow=c(1,2))
im.plotRGB(m1992, 1, 2, 3)
im.plotRGB(m2006, 1, 2, 3)
#abbiamo il mato grosso nei due anni diversi, situazione distrutta nel 2006, deforestata
#riprendiamo la situazione solo del 2006 quindi faccio dev.off()
dev.off()
# nir on the green component of RGB 
#nir sulla componente verde
im.plotRGB(m2006, 2, 1, 3)
# nir on the blue component of RGB
#nir sul blu
im.plotRGB(m2006, 2, 3, 1)
#mettiamo tutte le 6 immagini insieme
# multiframe
par(mfrow=c(2,3))
#lo facciamo con due righe e 3 colonne
im.plotRGB(m1992, 1, 2, 3) # nir on R 1992
im.plotRGB(m1992, 2, 1, 3) # nir on G 1992
im.plotRGB(m1992, 2, 3, 1) # nir on B 1992
im.plotRGB(m2006, 1, 2, 3) # nir on R 2006
im.plotRGB(m2006, 2, 1, 3) # nir on G 2006
im.plotRGB(m2006, 2, 3, 1) # nir on B 2006
#abbiamo il nir su tutte le bande

#possiamo vedere le sei immagini tutti insieme
par(mfrow=c(2,3))
#mettiamo tutte e 6 le immagini
im.plotRGB(m1992, r=1, g=2, b=3) #1992 nir on red
im.plotRGB(m1992, 2, 1, 3) #1992 nir on green
im.plotRGB(m1992, 2, 3, 1) #1992 nir on blue
im.plotRGB(m2006, 1, 2, 3) #2006 nir on red
im.plotRGB(m2006, 2, 1, 3) #2006 nir on green
im.plotRGB(m2006, 2, 3, 1) #nir on blue


#la riflettanza è una divisione tra la radiazione che viene riflessa e quella incidente al denominatore, quindi deve essere qualcosa che varia tra 0 e 1, in realtà varia tra 0 e 255
#perché-> su github c'è la presentazione continuous_vs_discontinuous_monitoring.pdf
#c'è la radiazione incidente del sole che arriva all'oggetto, al denominatore, al numeratore c'è la radiazione che viene riflessa, il range è tra 0 e 1, se riflette tutto-> la riflettanza è 1, se invece arriva la radiazione e la assorbe tutta-> 0
#è tra 0 e 255 perchè ogni pixel hanno valori diversi da 0, quasi un milione di pixel per 3 bande-> 6 milioni di pixel con informazioni tutte diverse dalle altre, quindi avranno pesi diversi
#i computer funzionano come sistema binario-> bit, sono le informazioni binarie, un bit corrisponde a due informazioni: o 0 o 1. Con 2 bit= 00,11,10,01 ho 4 informazioni, con 3 bit ho 8 informazioni ecc. 2 elevato alla
#gran parte delle immagini sono immagini con 8 bit= 256; approssimiamo tutti i valori quindi tra 0 e 255, per questo una immagine satellitare di 8 bit va da 0 a 255
#l'ESA, ha messo immagini a 16 bit= satellite sampling, le loro immagini variano da 0 a 65535, potenzialmente
#questo concetto si chiama risoluzione radiometrica, ci sono 3 tipi di risoluzione: risoluzione spaziale, per cui la dimensione del pixel (es. 30 metri), 
#risoluzione spettrale, quindi quante bande ho, quanto ho dello spettro elettromagentico
# risoluzione radiometrica, ovvero quanti valori nella modificazione in bit stiamo usando

#posso fare il plot della prima barra, ovvero il nir 
plot(m2006[[1]])
#risoluzione radiometrica
#3 risoluzioni: spaziale, spettrale (quante bande ho), radiometrica (quanti valori nella codificazione in beat stiamo usando)
# build a multiframe with 1992 and 2006 images
par(mfrow=c(1,2))
im.plotRGB(m1992, r=2, g=3, b=1)
im.plotRGB(m2006, r=2, g=3, b=1)



#LEZIONE 6 04.04

# vegetation indices

library(imageRy)
library(terra)

im.list()

im.import("matogrosso_l5_1992219_lrg.jpg")
#importiamo questa immagine
#usiamo l'immagine mato grosso
#NASA Earth Observatory
#presa da questo sito della NASA
#NASA Visible Earth si trovano le immagini gratuite
#nome della immagine tra virgolette
#la scorsa volta abbiamo fatto con questa immagine tutte le combinazioni possibili RGB, quindi l'infrarosso vicino sul rosso, sul verde e sul blu
#oggi andiamo a fare un calcolo sull'INDICE DI VEGETAZIONE

# DVI = NIR - RED
# bands: 1=NIR, 2=RED, 3=GREEN
#posso proprio scrivere dvi1992 = posso scrivere proprio = perché è effettivamente una operazione matematica
#andiamo a prendere ogni singolo pixel di una banda, ogni singolo pixel della mia banda quindi infrared, e facciamo la sottrazione con il pixel della banda del rosso
#banda del rosso e banda del nir
#ottengo il DVI di questo pixel
#il range di questa immagine è 8 bit, risoluzione radiometrica, questo significa che sono 256 colori possibili
#andiamo a vedere il range di questo indice, se il nir, infrared ha il valore massimo e il red ha il valore minimo (255-0), allora avrò l'indice pari a 255, questo è il valore massimo del vegetation index
#se invece l'infrared ha colore minimo e il red ha valore massimo avremmo -255
#questi sono i valori estremi, l'indice varia da -255 a 255
#questo indice quindi è in funzione della risoluzione radiometrica (essendo 8bit->2 alla ottava)
#QUESTO INDICE è FORTEMENTE DIPENDENTE DALLA RISOLUZIONE RADIOMETRICA IN ENTRATA

dvi1992 = m1992[[1]] - m1992[[2]]
#la banda numero 1 è il nir, la banda numero 2 è il red, la banda numero 3 è il green
#dobbiamo sottrarre la banda n1 e la banda n2
#il dollaro $ lega le cose insieme in R, per cui si poteva anche scrivere sapendo i nomi delle bande, dvi1992 = m1992$matogrosso~2219_lrg_1 - m1992$matogrosso~2219_lrg_2
#metodo più scomodo perchè c'è da ricordarsi il nome delle bande
#il primo modo è più comodo perché andiamo a chiamare l'elemento che vogliamo andare ad utilizzare, è il primo e secondo elemento dell'immagine satellitare
#questa è la banda che abbiamo creato
dvi1992
#se scriviamo il nome otteniamo le informazioni di questo oggetto, possiamo vedere infatti la variazione che va da -246 (perchè si vede che l'infrarosso a 0 non ci arriva mai) fino a 255, c'è il range
#andiamo a fare il plot di questo oggetto, di questo dato
plot(dvi1992)

# plotting the DVI
#possiamo cambiare il colore di questo plot, con il colore col=cl, color rampe palette sviluppata cl
cl <- colorRampPalette(c("darkblue", "yellow", "red", "black")) (100)
plot(dvi1992, col=cl)
#così abbiamo una immagine del nostro DVI del 1992

#posso fare la stessa operazione caldcolandoci il DVI del 2006
# calculate dvi of 2006
# 2006
#bisogna importare l'immagine con im.import()
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
#qui già c'è molto sviluppo umano
#possiamo ora calcolare il dvi del 2006 con la stessa operazione di prima
# dvi 2006
dvi2006 = m2006[[1]] - m2006[[2]] 
dvi2006
#posso vedere scrivendo il nome tutte le informazioni, e possiamo vedere qui che il range è da -197 a 255
#posso fare il plot ora
plot(dvi2006, col=cl)
#il giallo rappresenta tutte le zone dove c'è stata una perdita di foresta
#il giallo è uno dei colori che si vedono di più

# Exercise: plot the dvi1992 beside the dvi2006
#per cui c'è da fare un plot del dvi1992 vicno al dvi2006
#creo un multiframe con par()
par(mfrow=c(1,2)) #1 riga sola con 2 colonne, sono 2 elementi di un array, quindi di un vettore, per cui ci vuole c
plot(dvi1992, col=cl)
plot(dvi2006, col=cl)
#per cui abbiamo un dvi del 1992 con valori molto più alti rispetto al dvi del 2006, per cui invece i valori intermedi e quelli più bassi sono dominanti
#questo singifica che in generale è stata persa tantissima vegetazione
#queste mappe rappresentano la biomassa, ovvero quanta massa vegetale c'era, in quel periodo; che viene usata non solo al livello ecologico ma anche idrogeografico ecc. per vedere la stabilità del terreno

stackdvi <- c(dvi1992, dvi2006)
pairs(stackdvi)
#non funziona perchè sono immagini con range diversi, di bit diversi

#questa immagine per cui ha valori che vanno da -255 a 255 perchè abbiamo 8bit, con immagini a 8bit ho questo range del dvi
#se io avessi una immagine a 4bit, avrò 16 valori possibili per cui un nir che va da 0 a 15 ed il red che anche lui che va da 0 a 15, per cui quando il nir è al minimo quindi zero, il red massimo, avrò un valore di -15, contrario valore 15
#se io ho una immagine a 4bit il range sarà da -15 a 15
#se io ho scaricato due immagini una a 8 bit e una da 4 bit non sono comparabili perchè i range sono diversi, per cui quello che si fa è che si cambia indice
#per come quantificare questa variazione, in termini di numeri-> faremo degli istogrammi delle immagini, la seconda è sottrarre una immagine ad un'altra, la terza è trasferire l'immagine e fare degli istogrammi con dei valori classificati es. foresta e non foresta
#cosa si fa per ovviare il problema-> si crea un altro indice piuttosto che DVI-> NDVI, facciamo una NORMALIZZAZIONE
#questo si fa sempre, quando si deve comparare si comparano le normalizzate

# Normalized Difference Vegetation Index
# NDVI
ndvi1992 = (m1992[[1]] - m1992[[2]]) / (m1992[[1]] + m1992[[2]])
#se vogliamo fare nir-red, possiamo dividere per la loro somma-> nir-red/ nir+red
#potrei dividere anche per il massimo, potrei dividere per 255, però generalmente si divide per la somma
ndvi1992
#se il nir è il massimo 255 e red è il minimo 0-> questa operazione darebbe 1. Se invece ho il minimo nir e il massimo red, avrò un valore di -1
#l'indice NDVI vale da -1 a 1, questo è il suo range, varia da -1 a 1
#adesso facciamo la stessa cosa per l'immagine a 4 bit
#avrò 15 valore massimo di nir - 0 valore minimo di r -> avrò sempre valori -1 e 1, il range è sempre -1 e 1
#l'NDVI normalizzato varia da -1 e 1
#è un indice che NON HA NESSUN RAPPORTO CON LA RISOLUZIONE RADIOMETRICA, per cui si può usare l'immagine es. sentinel dell'ESA che arriva fino a 16 bit e una immagine della NASA che va fino a 8 bit
#se io uso il Difference Vegetation Index, il minimo e massimo, il range è in funzione di quanti bit ho
#se uso il Normalized Difference Vegetation Index vale sempre da -1 e 1
#calcoliamo quindi ora NDVI
# Normalized Difference Vegetation Index
ndvi1992 = (m1992[[1]] - m1992[[2]]) / (m1992[[1]] + m1992[[2]])
#NDVI non è altro che la somma della prima e della seconda banda
#il numeratore non è nient'altro che il DVI calcolato prima, per cui possiamo anche scrivere così
ndvi1992 = dvi1992 / (m1992[[1]] + m1992[[2]])
#possiamo calcolarcelo anche per l'immagine del 2006
ndvi2006 = dvi2006 / (m2006[[1]] + m2006[[2]])
ndvi1992
ndvi2006
#ndvi1992 varia da -1 a 1 così come l'ndvi2006
#a questo punto possiamo fare un multiframe dei plot delle due immagini
# par
dev.off()
par(mfrow=c(1,2))
plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)
#a livello di mappa non cambia niente, quello che cambia è il range, che in questo caso invece di essere in funzione della risoluzione radiometrica va da -1 a 1
#abbiamo così calcolato gli INDICI SPETTRALI


clvir <- colorRampPalette(c("violet", "dark blue", "blue", "green", "yellow"))(100) # specifying a color scheme
par(mfrow=c(1,2))
plot(ndvi1992, col=clvir)
plot(ndvi2006, col=clvir)

# speediing up calculation
#nel pacchetto imageRy è presente una funzione im.ndvi() dove mettiamo il nome dell'immagine e le bande, e direttamente calcola NDVI
ndvi2006a <- im.ndvi(m2006, 1, 2)
plot(ndvi2006a, col=cl)

#overleaf=per scrivere la tesi !!!!!!!!
#viridis packages
#prossima lezione vedremo gli istogramma, le differenza tra immagini o classificazione per quantificare-> es. come si fa a quantificare la percentuale di foresta persa


#LEZIONE 7 09.04
#quindi la domanda magari che ci possiamo fare è come facciamo a quantificare la quantità di foresta che abbiamo perso nella nostra area, dal 1992 al 2006
#c'è un modo per quantificare? Le cose che si possono fare sono praticamente due, da un lato fare una classificazione
#per cui prendere una immagine, spiegare al sistema attraverso l'IA, machine learning, chiediamo al sistema quali sono le due classi che ci interessano, per cui in questo caso vegetazione e suolo nudo
#in questo modo classifichiamo l'immagine e tiriamo fuori queste quantità, quindi la proporzione delle due classi
#oppure facciamo la differenza tra gli indici che abbiamo calcolato nei due istanti diversi
#questi sono i due metodi: primo metodo è la classificazione basata sui dati continui di riflettanza arrivando a delle classi, nel secondo metodo manteniamo i dati continui del DVI, cioè dell'indice, e facciamo la sottrazione, questo lo faremo la prox volta
#oggi faremo una classificazione
#CLASSIFICAZIONE
#classification
# abbiamo una immagine satellitare continua (abbiamo montato le bande)
# presenta una zona a carattere nevoso, la zona verde, poi si ha la parte blu che sono le praterie ad alta quota, poi c'è il bosco misto, conifere e latifoglie, parte verde scuro, la parte vuola è la parte urbana
#cosa possiamo fare per insegnare al sistema che cosa è una certa classe
#selezioniamo dei pixel casuali all'interno delle nostre aree, questi per es. 3 pixel nella parte verde, vediamo che in uno spazio composto dalle bande (PC=Principal Components) abbiamo la riflettanza di ogni pixel rappresentata dal punto nelle tre bande
#per es. si ha una bassa riflettanza nella prima banda, una alta riflettanza nella seconda e una altra riflettanza bassa nella terza
#dopodiché prendiamo un altro pixel che sarà vicino a quello precedente avendo più o meno la stessa riflettanza, essendo quel pixel della stessa classe
#prendiamo altri 3 pixel per la classe blu e vediamo come si distribuiscono all'interno dello spazio delle bande, poi facciamo per quello verde e poi facciamo quello viola

#lo scopo è creare i training sites, i siti di prova, per far capire all'algoritmo cosa intendiamo per le nostre classi
#vediamo per es. il pixel di vegetazione e come si può comportare nello spazio spettrale
#vediamo il pixel come si comporta nello spazio spettrale, come sono distribuiti
#es. pixel della pianta-> alta riflettanza nel NIR, bassa nel rosso.
#abbiamo individuato dei gruppi: i gruppi nel linguaggio statistico si chiamano CLUSTER
#un cluster è un insieme, un gruppo, per cui in questo caso abbiamo un cluster di suolo nudo, e un cluster della vegetazione, per cui 2 gruppi
#abbiamo codificato quelli che si chiamano training sites: pixel presi all'inizio in modo casuale che ci permettono di distinguere i gruppi
#ipotizziamo che vogliamo fare una classificazione di un pixel, non è entrato nei training sites, vogliamo fare una classificazione di questo pixel
#a quale cluster appartiene questo pixel? quale è la probabilità che appartiene ad un cluster rispetto che all'altro?
#possiamo fare la media di questi 3 valori, sulla x e sulla y-> facciamo le means=medie, e andiamo a calcolare la la distanza del pixel incognito a quelli che so. Distanza si intende come k
#la distanza possiamo vedere che ha la seconda distanza molto più alta rispetto che alla prima, per cui quel pixel ha una probabilità più alta nell'appartenere al cluster della vegetazione
#l'algoritmo si chiama k-means: mi classifica ogni singolo pixel dell'immagine originale basandosi su dei cluster fatti in origine chiamati training sites. Dalla base dei training sites avviene la classificazione
#quindi prendo l'immagine originale, faccio i cluster e poi creo in uscita una nuova immagine, una mappa, con le parti di foresta e con le parti di suolo nudo, è una mappa classificata
#la mappa classificata mi serve perchè posso calcolare la frequenza, cioè il numero di pixel nella foresta ed il numero di pixel nel suolo nudo, vedo come varia il numero di pixel nelle due classi nel tempo. 

#1° si parte dall'immagine satellitare
#2° classificheremo l'immagine
#3° grafici statistici per vedere quale è stata la variazione di queste classi


# quantifying land cover variability: copertura del suolo.
#land cover= si chiama così questo tipo di mappa, la copertura del suolo

#dobbiamo installare due pacchetti

install.packages("ggplot2")
#usiamo le virgolette perché usciamo da R
install.packages("patchwork")
#con la funzione library() richiamiamo il pacchetto 

library(terra)
library(imageRy)
library(ggplot2)
library(patchwork)

detach("package:patchwork", unload = TRUE)
#ho levato patchwork perchè mi nascondeva il pacchetto terra (mi usciva un warning)
# Listing images
#imageRy-> lista delle immagini
#listing images
im.list()
#importo l'immagine 
# Importing data
m1992<- im.import("matogrosso_l5_1992219_lrg.jpg")
#la andiamo ora a classificare
#prima di classificare il mato grosso importiamo anche l'immagine del sole
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")
#Solar Orbites è un satellite che sta prendendo immagini dal sole
#immaginiamo qua avere 3 livelli energetici, quello giallo è il livello energetico più alto, marrone è il livello energetico intermedio e quello nero è il livello energetico più basso
#andiamo ora a fare la CLASSIFICAZIONE di questa immagine su questi tre livelli energetici
#lo si fa con la funzione im.classify() -> è una funzione di imageRy
#richiede il nome dell'immagine principale, e poi c'è un argomento della funzione che si chiama num_cluster ovvero number of clusters, quanti gruppi ci sono secondo noi nell'immagine, quanti cluster
# classifying images
sunc <- im.classify(sun, num_clusters=3)
#classifichiamo l'immagine sui tre livelli energetici
#è una classificazione non supervisionata, fa tutto l'IA, dobbiamo solo dire il numero delle classi che secondo noi sono presenti
#crea già automatico un plot, che viene fuori dalla classificazione
#ognuno dei nostri computer, l'algoritmo, ha selezionato dei pixel randomicamente, ed ha iniziato da quella classe lì, per cui i colori di ogni mappa possono essere tranquillamente diversi da computer a computer
#l'algoritmo ha iniziato da quei pixel lì in maniera randomica, può partire sempre da un punto diverso per fare la classificazione
#di che classi stiamo parlando: 3 livelli energetici, giallo, intermedio e più basso
#la prima classe ha raggruppato tutti i pixel che almeno in questo caso, li ha raggruppati del livello energetico più basso
#la seconda classe sono livelli intermedi (in questo caso, perché il computer prende in maniera casuale)
#la terza classe livello superiore energetico
# https://www.esa.int/ESA_Multimedia/Images/2020/07/Solar_Orbiter_s_first_views_of_the_Sun6
# additional images: https://webbtelescope.org/contents/media/videos/1102-Video?Tag=Nebulas&page=1

#possiamo ora lavorare sull'immagine del matogrosso
# importing Mato grosso images
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
#importo sia l'immagine del 1992 sia quella del 2006

#si procede con la classificazione di queste immagini
# classifying images
m1992c <- im.classify(m1992, num_clusters=2)
#nome dell'immagine, il numero dei clusters-> identificazione tra foresta e tutto il resto, quindi solo 2
#ci crea una mappa in cui nel mio caso la classe n1 è il suolo nudo
#mentre la classe n2 è la foresta

#quindi posso scrivere un commento del genere
# 1992
# class 1 = human
# class 2 = forest

#in questo modo ho definito e so che nel mio caso, la classe n1 è suolo nudo.

#classifichiamo ora anche l'immagine del 2006

m2006c <- im.classify(m2006, num_clusters=2)
#rimangono gli stessi colori per le classi, in questo caso

# 2006
# class 1 = human
# class 2 = forest

#il prossimo passaggio, dopo aver classificato l'immagine
# se mettiamo il nome dell'immagine su R
m2006c
#vediamo che abbiamo solo due valori: 1 e 2
#vogliamo calcolare il n di pixel, in statistica si chiama FREQUENZA, di una certa classe, della foresta contro il numero di pixel del suolo nudo
#questi si chiamano frequenze, grazie alle frequenze tireremo fuori poi le percentuali delle due classi

#per essere sicure delle nostre classi facciamo 
plot(m1992c)
#abbiamo diversi colori, controlliamo il colore e così siamo sicuri delle classi
plot(m2006c)
#per vedere se combaciano i colori con le classi

#ora vogliamo calcolare il numero di pixel per ogni classe
#basta calcolare quella che si chiama frequenza
#calculating frequencies
#una frequenza misura il n di oggetti rispetto all'intero, dopodiché con la frequenza si possono calcolare le proporzioni e poi le percentuali
# frequencies
#la funzione è freq()
f1992 <- freq(m1992c)
f1992
#nella tabellina che esce 
#1 e 2 significa le righe, i valori 1 e 2, poi count ovvero la conta, la conta dei pixel appartenenti alla classe 1 e dei pixel appartenenti alla classe 2
> f1992
  layer value   count
1     1     1  304437
2     1     2 1495563
#abbiamo 1 milione di pixel appartenenti alla classe 1 e 300 mila pixel appartenenti alla classe 2 
#qui la foresta è altamente dominante.
#da qui possiamo calcolarci la proporzione
#la PROPORZIONE è il numero di pixel di una classe rispetto al totale

# proportions
#come si fa a sapere il totale
# c'è la funzione che è ncell()
tot1992 <- ncell(m1992c)
> tot1992
[1] 1800000
#un milione e 800 mila pixel
#come si calcola la proporzione
# proportions
tot1992 <- ncell(m1992c)
#la proporzione è la frequenza diviso il totale
prop1992 = f1992 / tot1992
>prop1992
layer        value     count
1 5.555556e-07 5.555556e-07 0.1691317
2 5.555556e-07 1.111111e-06 0.8308683
#siccome è una operazione posso anche scrivere l'=
#è una funzione matematica al posto di assegnazione posso mettere l'uguale
#prendiamo solo la colonna count: 0.83 per le foreste, 0.16 per il suolo nudo

#posso calcolare anche la percentuale
# percentages
perc1992 = prop1992 * 100
#basta moltiplicare la proporzione per 100
perc1992
#abbiamo l'83% di foresta
#in count vediamo che abbiamo l'83% di foresta e il 17% di suolo nudo

# 17% human, 83% forest
#questi dati ce li scriviamo perché mi servono dopo per creare un dataset


#facciamo le frequenze per il 2006
# frequencies
f2006 <- freq(m2006c)

# proportions
tot2006 <- ncell(m2006c)
#il totale c'è da calcolarlo anche per il 2006, perchè non è detto che sono gli stessi pixel per due immagini diverse
#infatti in questa immagine è 72 milioni il totale
prop2006 = f2006 / tot2006

# percentages
perc2006 = prop2006 * 100

# 1992: 17% human, 83% forest
# 2006: 55% human, 45% forest

#abbiamo i dati, a questo punto ci costruiamo un dataset e tirare fuori dei grafici da questo dataset
#si fa con la funzione data.frame()
#in R le tabelle si chiamano dataframe, la funzione data.frame() crea un dataframe del vettore
# let's build a dataframe, facciamo una tabellina
#in cui mettiamo la classe su una colonna, la percentuale del 1992 su un'altra colonna, e la percentuale del 2006 su un'altra colonna
#ci costruiamo una tabella con 2 classi e 2 valori
#le classi saranno forest e human, avremo i valori del 1992 e del 2006, quindi per prima cosa c'è da creare le due colonne
# let's build a dataframe
class <- c("forest", "human")
p1992 <- c(83, 17)
p2006 <- c(45, 55)
#prima colonna è la classe, che corrisponde a due classi-> forest e human: sono due elementi di un vettore, array, e sono un testo, tutte le parti di testo nelle tabelle vengono messe tra virgolette
class <- c("forest", "human")
#la percentuale 1992 su un'altra colonna, così come per 2006
#numeri: due elementi di un vettore, numeri non vanno tra virgolette

#abbiamo le tre colonne
#creo la tabella con la funzione data.frame() mettendo le tre colonne
tabout <- data.frame(class, p1992, p2006)
tabout
class p1992 p2006
1 forest    83    45
2  human    17    55
#per vederla proprio come tabella
View(tabout)
#la lettera V è maiuscola
#abbiamo quindi 2 righe e 3 colonne
#andiamo a fare il grafico usando ggplot()
#il pacchetto è ggplot2() già installato, con la funzione ggplot()
# plotting the output
#funzione ggplot() per creare dei grafici
#devo mettere il nome della tabella che sto usando, in questo caso "tabout"; aes=aestetics= estetica del grafico, la struttura
#asse x metto foresta e human, nell'asse y metto le percentuali. per l'aestetics, aes del grafico, sulla x metto le classi, la y è uguale alla percentuale del 1992; il colore color, lo differenziamo tra le due classi
#quindi prima farò il grafico della immagine del 1992 e poi farò il grafico dell'immagine del 2006
#le percentuali per questo grafico le scriverò così
y1992 <- c(83, 17)
y2006 <- c(45, 55)
ggplot(tabout, aes(x=class, y=y1992, color=class))
ggplot(tabout, aes(x=class, y=y2006, color=class))
#non mi da ancora niente all'interno del grafico
#a questo punto dobbiamo decidere il grafico da fare, con ggplot, su ggplot2 possiamo aggiungere pezzi di un'altra funzione
#in questo caso la funzione è il tipo di geometria: geom_bar() quindi istogrammi; gli argomenti sono il tipo di statistica che vogliamo usare
#es. voglio estrarre la media da un campione e rappresentarla come istogramma, in quel caso stat=average, che sta per media; oppure mediana, deviazione standard ecc
#nel nostro caso però non dobbiamo estrarre la statistica, abbiamo già il valore 
#"identity" la statistica è il valore esatto come ce lo abbiamo, non dobbiamo calcolarlo; il colore con il quale vogliamo riempire gli istogrammi fill="white"
# plotting the output
ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white")
#abbiamo così il nostro ISTOGRAMMA, con foresta da un lato e human dall'altro
#si vede in questo caso la dominanza delle foreste, con un 83%
#facciamo anche per il 2006
ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white")
#parte umana supera le foreste che sono in declino

#si possono mettere insieme i due istogrammi, si possono mettere i due grafici del 1992 e del 2006
#abbiamo prima installato il pacchetto patchwork
# patchwork
#lo richiamo con library(patchwork)
library(patchwork)
#mette insieme più grafici
#prende il primo grafico e lo assegna ad un oggetto, così come il secondo, poi con il + lo mette uno vicino all'altro
#assegnamo ad ognuno dei due grafici, li assegnamo ad un oggetto
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white")
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white")
p1 + p2

#grafico sbagliato perché la scala tra i due grafici è diversa->> ERRORE GRAVISSIMO
#come ovviare il problema: basta mettere gli assi uguali
#la funzione è ylim()
#ci vuole la c perché sono due elementi del vettore, ricordandoci la doppia parentesi
#questa è proprio una funzione che si chiama ylim()
# varying axis and using lines
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p1 + p2
#in fondo ai due grafici facciamo +ylim() ovvero il limite della y, che va da 0 a 100. Perché sono percentuali
#abbiamo due grafici ora completamente diversi, vediamo nel primo grafico aumento di foresta mentre nel secondo grafico diminuzione di foresta e aumento di human
#se volessimo diminuire il range lo possiamo fare, metterlo anche a 90 -> ylim(c(0,90)), tanto il nostro massimo valore è 83
#l'importante è che abbiano lo stesso range
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,90))
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,90))
p1 + p2
#la prossima lezione sarà dedicata all'altro metodo per misurare e quantificare la variazione di due mappe, facendo la sottrazione tra di loro


#LEZIONE 8 11/04/2024
# time series analysis
#analisi delle serie temporali in R è lo studio di dati raccolti in ordine temporale per identificare modelli, trend, stagionalità e altre caratteristiche significative nel tempo.

library(imageRy)
library(terra)

im.list()

# import the data
#importo i dati
EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")
#importando queste immagini però ho un grafico sottosopra
#certe volte le immagini l'immagine potrebbe essere visualizzata "sottosopra" a causa del modo in cui le coordinate dei pixel vengono interpretate (origine in alto a sinistra rispetto al sistema cartesiano).
# l'immagine potrebbe apparire "sottosopra" (a causa dell'orientamento delle coordinate Y tipico delle immagini raster geospaziali).
#la funzione flip() di terra permette di invertire le righe o le colonne di un raster. 
#Aggiungendo questa operazione, possiamo ribaltare l'immagine lungo l'asse Y e risolvere il problema.
#la direzione mi specifica che l'operazione di flip deve essere applicata lungo l'asse verticale, cioè l'immagine viene ribaltata "dall'alto verso il basso"
EN01rib <- flip (EN01, direction= "vertical")
EN13rib <- flip (EN13, direction = "vertical") 
#Dopodiché per visualizzare le nuove immagini ribaltate dobbiamo fare plot(), le dobbiamo plottare
plot(EN01rib)
plot(EN13rib)
#possiamo mettere tutte e due le immagini nello stesso dataframe attraverso par(), con 2 righe ed 1 colonna
par(mfrow=c(2,1))
im.plotRGB.auto(EN01rib)
im.plotRGB.auto(EN13rib)
#è progettata per semplificare la visualizzazione di immagini multispettrali o raster in formato RGB (rosso, verde, blu). 
#È una funzione utile per lavorare con immagini geospaziali, come dati satellitari (ad esempio, Sentinel o Landsat) o immagini che contengono più bande spettrali.
#se non vengono specificate, questa funzione seleziona automaticamente le bande del rosso, blu e verde
#la funzione può determinare automaticamente una configurazione ottimale basata sulle caratteristiche dell'immagine.
#Applica automaticamente un stretching lineare o una normalizzazione ai valori delle bande, migliorando la qualità visiva dell'immagine.
#Ti permette di esplorare rapidamente immagini multispettrali scegliendo una combinazione di bande adatte per evidenziare determinate caratteristiche (es. vegetazione, acqua, suolo).

# using the first element (band) of images
#con le parentesi quadre prendo solo il primo elemento della immagine
dif = EN01rib[[1]] - EN13rib[[1]]
#colors RGB  : 1, 2, 3, la prima banda è quella del rosso, quindi è quella in cui mi appare il rosso
#questa immagine rappresenta quanta è la concentrazione di diossido di azoto nella colonna della troposfera (lo strato più basso dell'atmosfera)
#in rosso abbiamo le aree con maggiore concentrazione di diossido di azoto
#con dif = abbiamo fatto la differenza tra l'immagine EN01 che rappresenta la concentrazione durante il periodo di Gennaio - EN13 che è la concentrazione in Marzo

# palette
dev.off()
cldif <- colorRampPalette(c("blue", "white", "red")) (100)
plot(dif, col=cldif)
#rendiamolo visibile con un grafico la differenza in concentrazione tra Gennaio e Marzo

### New example: temperature in Greenland

g2000 <- im.import("greenland.2000.tif")
clg <- colorRampPalette(c("black", "blue", "white", "red")) (100)
plot(g2000, col=clg)

g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")

plot(g2015, col=clg)

par(mfrow=c(1,2))
plot(g2000, col=clg)
plot(g2015, col=clg)

# stacking the data
#combinazione di più oggetti raster (come immagini o dati geospaziali) in un unico oggetto stack. 
stackg <- c(g2000, g2005, g2010, g2015)
plot(stackg, col=clg)
#ho creato un raster stack che contiene quattro layer temporali (anni 2000, 2005, 2010, 2015) e poi visualizzando i dati.
#Se ho dati raccolti in periodi diversi (es. copertura del suolo in anni diversi) o in bande spettrali diverse, uno stack consente di lavorare con questi dati come un unico oggetto coerente.
# Exercise: make the difference between the first and the final elements of the stack
#la differenza mi permette di calcolarmi le variazioni tra anni diversi, per cui tra il primo elemento dello stack con il quarto che corrisponde alla immagine dell'anno 2000 e 2015
difg <- stackg[[1]] - stackg[[4]]
# difg <- g2000 - g2015
plot(difg, col=cldif)
# stackg[[1]] - stackg[[4]]: Calcola la differenza pixel per pixel tra il layer per l'anno 2000 e quello per l'anno 2015.
#Il risultato è un nuovo raster in cui ogni valore rappresenta la variazione tra i due layer in corrispondenza di ciascuna cella spaziale.
#il plot() Visualizza la mappa della differenza utilizzando una palette di colori specificata da cldif. 
#Questo consente di vedere visivamente le aree in cui ci sono state variazioni positive, negative o nulle.

# Exercise: make a RGB plot using different years
im.plotRGB(stackg, r=1, g=2, b=3)
#sto specificando quali bande utilizzare per creare un'immagine RGB a partire dallo stack di raster che ho creato.
#per il colore rosso sto dicendo di usare la priam banda ovvero l'anno 2000
#per il colore verde sto dicendo di usare la seconda banda ovvero l'anno 2005
#per il colore blu sto dicendo di usare la terza banda per cui l'anno 2010
#Ogni pixel dell'immagine risultante avrà un valore di colore che dipende dai valori nelle bande selezionate per ogni anno (2000, 2005, 2010):
#Il valore della banda 2000 (prima banda) sarà usato per il canale rosso.
#Il valore della banda 2005 (seconda banda) sarà usato per il canale verde.
#Il valore della banda 2010 (terza banda) sarà usato per il canale blu.
#Se sto lavorando con un'immagine che rappresenta una variabile ambientale per ciascun anno, la combinazione dei colori in RGB ti permette di vedere:
#Rosso (Red): Come cambia la variabile nel 2000.
#Verde (Green): Come cambia la variabile nel 2005.
#Blu (Blue): Come cambia la variabile nel 2010
#Se le variazioni tra gli anni sono marcate, vedrò aree con colori distinti per rappresentare quelle differenze.
#Ad esempio, aree che sono rosse potrebbero indicare che nel 2000 c'era un valore alto in quella zona, ma potrebbe essere verde o blu negli altri anni, a seconda dei cambiamenti.


# Second method to quantify changes in time 
# The first method was based on classification

library(imageRy)
library(terra)

im.list()

# importing data
EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

par(mfrow=c(2,1))
im.plotRGB.auto(EN01)
im.plotRGB.auto(EN13)

difEN = EN01[[1]] - EN13[[1]]
cl <- colorRampPalette(c("blue","white","red")) (100)
plot(difEN, col=cl)

## Ice melt in Greenland
#la quantità di ghiaccio sciolto in Groenlandia durante gli anni (2000, 2005, 2010, 2015),
#osserveremo i cambiamenti nel ghiaccio sciolto nel tempo, identificando dove e quanto è cambiato.
g2000 <- im.import("greenland.2000.tif")
clg <- colorRampPalette(c("black","blue","white","red")) (100)
plot(g2000, col=clg)
#I valori più bassi (meno ghiaccio sciolto) sono rappresentati dal nero e dal blu scuro, mentre i valori più alti (più ghiaccio sciolto) sono rappresentati dal bianco e rosso.
#n questa mappa vedo la distribuzione dello scioglimento del ghiaccio nel 2000. Le aree più rosse indicano che c'è stato un grande scioglimento del ghiaccio in quelle zone.

g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")
#Importi i dati per gli anni 2005, 2010 e 2015
#visualizzo le immagini per 2000 e 2015 in una griglia di due colonne con par()
par(mfrow=c(1,2))
plot(g2000, col=clg)
plot(g2015, col=clg)
#sto mettendo a confronto la mappa del ghiaccio sciolto tra 2000 e 2015.
#l'area rossa si è espansa tra il 2000 e il 2015, significa che lo scioglimento del ghiaccio è aumentato in quelle zone.

par(mfrow=c(2,2))
plot(g2000, col=clg)
plot(g2005, col=clg)
plot(g2010, col=clg)
plot(g2015, col=clg)
#Le quattro immagini (per gli anni 2000, 2005, 2010 e 2015) vengono visualizzate insieme in una matrice di 2x2.

# stack
greenland <- c(g2000, g2005, g2010, g2015)
plot(greenland, col=clg)
#Creo uno stack che combina i dati degli anni dal 2000 al 2015 in un unico oggetto raster e poi lo visualizzo

#calcolo la differenza tra i dati del 2000 e del 2015
difg = greenland[[1]] - greenland[[4]]
clgreen <- colorRampPalette(c("red","white","blue")) (100)
plot(difg, col=clgreen)
#Calcolo la differenza tra lo scioglimento del ghiaccio nel 2000 (prima banda) e nel 2015 (quarta banda).
#La differenza mi mostra quanto è aumentato lo scioglimento del ghiaccio tra questi anni, rosso significa che c'è stata una elevata perdita

im.plotRGB(greenland, r=1, g=2, b=4) # g2000 on red, g2005 on green, g2015 on blue
#Uso la funzione im.plotRGB() per creare un'immagine combinata utilizzando le bande di 2000 (rosso), 2005 (verde), e 2015 (blu).
#Questa visualizzazione mi dà una rappresentazione combinata dello scioglimento del ghiaccio nel tempo.
#Se l'area è rossa, significa che il ghiaccio era più sciolto nel 2000 rispetto agli altri anni.
#Se l'area è verde, significa che nel 2005 c'era un aumento dello scioglimento.
#Se è blu, significa che nel 2015 lo scioglimento è stato più pronunciato.
#Cosa guardare: Se c'è un cambiamento visibile dal rosso al verde al blu, significa che lo scioglimento è aumentato nel tempo.

# time series analysis
#second method to quantify changes in time
#the first method was based on classification

library(imageRy)
library(terra)

#lista dei dati
im.list()

# import the data
EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

par(mfrow=c(2,1))
im.plotRGB.auto(EN01)
im.plotRGB.auto(EN13)

# using the first element (band) of images
dif = EN01[[1]] - EN13[[1]]

# palette
cldif <- colorRampPalette(c("blue", "white", "red")) (100)
plot(dif, col=cldif)


### New example: temperature in Greenland

g2000 <- im.import("greenland.2000.tif")
clg <- colorRampPalette(c("black", "blue", "white", "red")) (100)
plot(g2000, col=clg)

g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")

plot(g2015, col=clg)

par(mfrow=c(1,2))
plot(g2000, col=clg)
plot(g2015, col=clg)

# stacking the data
stackg <- c(g2000, g2005, g2010, g2015)
plot(stackg, col=clg)

# Exercise: make the differencxe between the first and the final elemnts of the stack
difg <- stackg[[1]] - stackg[[4]]
# difg <- g2000 - g2015
plot(difg, col=cldif)

# Exercise: make a RGB plot using different years
im.plotRGB(stackg, r=1, g=2, b=3)



#LEZIONE 9 18/14/2024

# Importing data from external sources

library(terra)
library(imageRy)

#1.Download an image from the network
#2.Store it in your computer
#3.Set the working directory: setwd("yourpath")
#4.Import the data: library(terra) :  name <- rast("yourdata_in_the_working_directory")

#1. vado per es. sul sito della NASA e scarico una immagine
#decido di scaricare l'immagine dell'eclissi del 2003 -> Total solar eclipse over Antarctica
#setwd("/home/duccio/Downloads")
# make use of slash instead of backslash
# Example: C://Documents/ instead of C:\\Documents\ 
#"C: "/Users/kiko9/Downloads/file"
#Serve per definire la cartella in cui verranno cercati o salvati i file durante la sessione R.
#dopo aver impostato questa directory, ogni file caricato o salvato userà questa posizione come riferimento predefinito.
#e i file delle immagini TIFF che analizzi si trovano nella cartella Downloads, questa funzione ti permette di accedervi direttamente senza dover specificare ogni volta il percorso completo.

setwd( "/Users/kiko9/Downloads/file")

eclissi <- rast("eclisse.jpg")
# la funzione rast() viene utilizzata per caricare un'immagine (o dati raster) dal file eclissi.jpeg e convertirla in un oggetto raster utilizzabile nel pacchetto terra.
#La funzione rast() appartiene al pacchetto terra e serve per creare un oggetto raster da un file, da un altro oggetto, o da un insieme di dati.
#Un raster è una struttura dati usata per rappresentare matrici di valori che corrispondono a celle di una griglia regolare, tipicamente associate a immagini o dati geospaziali.
#Se il file è un'immagine (come un JPEG), il raster avrà una o più bande (es. colori RGB).
#L'immagine viene convertita in un oggetto SpatRaster, il formato raster usato da terra.
#Ogni colore dell'immagine (ad esempio Rosso, Verde, Blu) sarà considerato una banda separata del raster.

# plotting the data
im.plotRGB(eclissi, 1, 2, 3)
#le bande sono lasciate nel solito ordine, per cui per il rosso avremmo la banda 1, verde=2, blu=3; È  l'immagine originale o una versione che rispecchia il modo in cui i colori sono stati salvati nel file.
im.plotRGB(eclissi, 3, 2, 1)
#per il rosso abbiamo la terza banda, verde=2, per il blu abbiamo la prima banda; inverte il contributo dei canali rosso e blu, generando un'immagine con una tonalità diversa. 
im.plotRGB(eclissi, 2, 3, 1
#Banda 2 per il rosso. Banda 3 per il verde. Banda 1 per il blu. Cambia ulteriormente l'assegnazione dei colori, mostrando l'immagine con colori "scambiati". Ad esempio, un oggetto originariamente rosso potrebbe apparire verde.
im.plotRGB(eclissi, 2, 1, 3)
#Banda 2 per il rosso. Banda 1 per il verde. Banda 3 per il blu.

# band difference
#differenza tra due bande, in questo caso tra la prima e la seconda banda
dif = eclissi[[1]] - eclissi[[2]]
plot(dif)
#rappresentano i valori di intensità per i canali di colore rosso (banda 1) e verde (banda 2).
#La differenza è calcolata pixel per pixel: per ogni cella, viene sottratto il valore della banda 2 (verde) da quello della banda 1 (rosso).
#Il risultato è un nuovo raster dif che rappresenta la variazione tra i due canali di colore.
#Valori positivi: Indicano aree dove il canale rosso è più intenso del verde. Valori negativi: Indicano aree dove il canale verde è più intenso del rosso. Valori prossimi a zero: Indicano aree con intensità simile nei due canali.
col_palette <- colorRampPalette(c("blue", "white", "red"))(100)
plot(dif, col=col_palette)      
#stiamo sul colore bianco, quindi non c'è quasi nessuna variazione, le due bande hanno intensità molto simili

        
# import another image
ocean <- rast("oceanisgreening_2022_lrg.jpg")
# è però una immagine rivoltata
#per metterla correttamente c'è da usare la funzione flip()
oceanriv <- flip (ocean, direction= "vertical")

im.plotRGB(oceanriv, 1, 2, 3)#per il rosso abbiamo la prima banda, per il verde la seconda, per il blu la terza
im.plotRGB(oceanriv, 2, 1, 3) #per il rosso la seconda banda, per il verde la prima, per il blu la terza




# How to import external data in R

install.packages("RNetCDF")
library(RNetCDF) # needed to read Copernicus .nc data
#RNetCDF: Pacchetto per lavorare con dati in formato NetCDF, utilizzati per dataset multidimensionali come quelli satellitari (es. Copernicus).
library(terra)
library(imageRy)

setwd("/Users/kiko9/Downloads/file") 
# make use of slash instead of backslash
# Example: C://Documents/ instead of C:\\Documents\ 

# read the data
eclissi <- rast("eclisse.jpg") 
# like i.import in imageRy
# rast() is a function in the terra package
eclissi
#mettendo solo il nome in R questo fornisce informazioni sulle dimensioni, il numero di bande, la risoluzione e altre proprietà del raster.
# plot the data
im.plotRGB(eclissi, 1, 2, 3)
im.plotRGB(eclissi, 2, 1, 3)
im.plotRGB(eclissi, 3, 1, 2)

# different methods of plotting
par(mfrow=c(1,2))
im.plotRGB(eclissi, 2, 1, 3)
plotRGB(eclissi, 3, 1, 3)
#Combina la visualizzazione di im.plotRGB() e plotRGB() (funzione standard di terra) per confrontare metodi di plotting.

# band differencing
dif = eclissi[[1]] - eclissi[[2]]
# calcola la differenza pixel per pixel tra la banda 1 (rosso) e la banda 2 (verde), e la visualizza. Questa tecnica è utile per analizzare variazioni cromatiche.

# import another image
# Exercise: import another image from the net!
cratere <- rast("cratere.jpg")
im.plotRGB(cratere, 1, 2, 3)
im.plotRGB(cratere, 2, 1, 3)

# importing Copernicus data

#Vai al portale Copernicus Open Access Hub.
soil <- rast("2024-08-02-00_00_2024-08-02-23_59_sentinel-2_l2a_true_color_hr.jpg")
soil
plot(soil)
plot(soil[[1]])
#Il file 2024-08-02-00_00_2024-08-02-23_59_sentinel-2_l2a_true_color_hr.jpg è un dataset NetCDF contenente dati multidimensionali -> The mysteries of the Norwegian mountains
#plot(soil) visualizza il dataset completo, mentre soil[[1]] seleziona e plotta solo una banda.

# cropping data
ext <- c(25, 35, 58, 62)
soilcrop <- crop(soil, ext)
#La funzione crop() ritaglia i dati raster all'interno di una regione specificata da ext.
#Utile per concentrarsi su una specifica area geografica nei dati raster, soilcrop presenta solo i dati presenti nei pixel 25,35,58 e 62







