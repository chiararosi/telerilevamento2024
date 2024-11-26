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

#satellites data visualisation in R by imageRy
# RS data

#c'è da richiamare i pacchetti che abbiamo installato per andare a lavorare sul telerilevamento
library(imageRy)
library(terra)
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
im.import("matogrosso_ast_2006209_lrg.jpg")
#NASA: Earth Observatory
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

#prendiamo nella lista una immagine con una singola banda
im.import("sentinel.dolomites.b2.tif")
b2 <-im.import("sentinel.dolomites.b2.tif")
#b2=banda due, la importiamo
#una immagine satellitare è composta da tante bande
#la banda numero 2 di sentinel rappresenta la banda del blu, registra la lunghezza d'onda del blu
#stiamo vedendo tutto quello che riflette nella lunghezza d'onda del blu
#a questo punto possiamo cambiare la scala di colori
#possiamo fare una scala di colori diversa, di grigi

#la funzione è colorRampPalette
#funzione che cambia una certa scala di colori
#array=vettori di più colori, per tenerli insieme c li concateniamo insieme
#possiamo mettere anche la serie di sfumature che vogliamo, accanto mettiamo la parentesi (3)
#lo possiamo assegnare ad un oggetto clg
clg <- colorRampPalette(c("black", "grey", "light grey"))(3)
plot(b2, col=clg)
#posso anche dichiarare 100 sfumature
clg <- colorRampPalette(c("black", "grey", "light grey"))(100)
plot(b2, col=clg)
#posso variare i colori
clcyan <- colorRampPalette(c("magenta", "cyan4", "cyan"))(100)
 plot(b2, col=clcyan)
#per vedere i colori su R basta scrivere R package colors o R colors names
#posso anche aggiungere più colori
clch <- colorRampPalette(c("magenta", "cyan4", "cyan", "chartreuse"))(100)
plot(b2, col=clch)
#so che la parte viola è vegetazione perché questa assorbe tutta la lunghezza d'onda del blu e del rosso,
#mentre la roccia riflette tutte le lunghezze d'onde (è bianca), quindi riflette anche il blu
#la riflettanza è il rapporto tra l'energia che viene davvero riflessa e (?)

#vediamo ora un'altra banda
#importiamo tutte e 4 le singole bande
#importing the additional bands
#si va a vedere la lista di prima
# import the green band from Sentinel-2 (band 3)
#banda 3 560 nanometri, c'è la lunghezza d'onda verde
# import the green band from Sentinel-2 (band 3)
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=clch)
#facciamo anche per le altre bande: il rosso (banda 4) e infrarosso (banda 8)
# import the red band from Sentinel-2 (band 4)
b4 <- im.import("sentinel.dolomites.b4.tif") 
plot(b4, col=clch)
#questo per il rosso
#per l'infrarosso
# import the NIR band from Sentinel-2 (band 8)
b8 <- im.import("sentinel.dolomites.b8.tif") 
plot(b8, col=clch)


#ora le si plotta tutte insieme
#c'è da creare un multiframe
#un multiframe contiene vari grafici tutti insieme
#possiamo mettere le 4 bande tutte insieme
#dobbiamo creare il multiframe dove inseriremo le immagini
#lo si fa con la funzione che si chiama par()
# multiframe
par(mfrow=2,2)
#mf=multiframe
#facciamo una situazione con 2 righe e 2 colonne (4 bande)
#mfrow=ragioniamo per righe, si hanno 2 righe, poi si hanno 2 colonne
#questi 2 elementi par(mfrow=2,2) sono un array, quindi c'è da metterli insieme
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

#esercizio
#plot the four bands one after another in single row
par(mfrow=c(1,4))
plot(b2, col=clch)
plot(b3, col=clch)
plot(b4, col=clch)
plot(b8, col=clch)
#una sola riga con 4 colonne, tutte le immagini si dispongono in una sola riga

#un altro metodo è impilare le bande tutte insieme e crea una vera immagine satellitare
#lo si fa con una procedura che si chiama stack
#possiamo prendere tutte le bande e considerarle come elementi di un array unendole tutte insieme con la procedura stack
#avrò una singola immagine satellitare dove avrò i singoli elementi uniti
stacksent <-c(b2, b3, b4, b8)
#mi permette di fare una immagine satellitare: satellite image
#scrivo all'interno tutti gli elementi, li metto insieme concatenandoli in un array=vettore
#la posso plottare scrivendo plot()
plot(stacksent, col=clch)

#se avessimo una immagine satellitare, e vogliamo plottare solo la banda 8, il quarto elemento dell'immagine satellitare già fatta
#in R i singoli elementi si selezionano con la parentesi quadra. indici di posizione=[]
plot(stacksent[[4]], col=clch)
#essendo in 2 dimensioni devo aggiungere altre due parentesi quadre avendo delle matrici, con una tabella basta 1 parentesi quadra
#per eliminare il par precedente devo fare dev.off() cancella la parte grafica precedente 



# stack images
stacksent <- c(b2, b3, b4, b8)
dev.off() # it closes devices
plot(stacksent, col=cl)

plot(stacksent[[4]], col=cl)

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
im.plotRGB(stacksent, r=3, g=2, b=1)
im.plotRGB(stacksent, r=4, g=3, b=2)
im.plotRGB(stacksent, r=3, g=4, b=2)
im.plotRGB(stacksent, r=3, g=2, b=4)


pairs(stacksent)

#richiamiamo i pacchetti
library(terra)
library(imageRy)
im.list()
#useremo i dati sentinel
b2 <- im.import("sentinel.dolomites.b2.tif" )
b3 <- im.import("sentinel.dolomites.b3.tif")
b4 <- im.import("sentinel.dolomites.b4.tif" )
b8 <- im.import("sentinel.dolomites.b8.tif" )

#par
#multiframe
par(mfrow=c())
par(mfrow=c(2,2))
plot(b2)
plot(b3)
plot(b4)
plot(b8)
#la banda dell'infrarosso porta molte più informazioni rispetto alle altre barre che sono più omogenee
#plot con tutti e quattro le bande usando lo stratagemma del multiframe usando par()
#altrimenti si può applicare lo stacksent
#ho le mie bande separate: blu, verde, rosso e infrarosso, le unisco insieme, le 4 bande in uno stack, creo la mia immagine multispettrale, con tante barre insieme
#considero le bande come elementi di un array, 4 elementi messe in fila -> c() stack
stacksent <-c(b2,b3,b4,b8)
plot(stacksent)
#stacksent è il nome del risultato della funzione c() che mi serve per creare un array
#se io volessi plottare solo il quarto elemento dello stack, ovvero la banda n 8
dev.off()
#cancella i device di plottaggio precedenti, quindi par()
plot(stacksent[[4]])
#metto il nome dello stack e il subsent(?) dello stack che in questo caso è il quarto elemento
#dev.off=device off. chiude il grafico
#come si plotta un multiframe: o con par() o con c() per lo stack


#abbiamo plottato fino ad ora le singole barre senza metterle tutte insieme in una unica immagine
#uso delle immagini per visualizzare i colori in modo nuovo
#chiave su come si montano i colori sul computer: schema RGB. 3 grandi filtri/colori principali: rosso, verde e blu
#useremo la banda infrarosso. satellite sentinel. le bande si usano 3 per volta. 
#schema di bande per vedere nuovi colori

#RGB plotting
#commentiamo per ricordarci chi sono le 4 bande
#stacksent[[1]]= b2 = blu l'elemento n 1 corrisponde alla banda n 2 che corrisponde alla banda del blu
#stacksent[[2]]= b3 = verde
#stacksent[[3]]= b4 = rosso
#stacksent[[4]] = b8 = infrarosso = nir
#sappiamo ora quali sono le 4 bande. facciamo un plot RGB
#funzione di imageRy im.plotRGB()
#dichiaro il nome dell'immagine, in questo caso stacksent, e le tre componenti che corrispondono a RGB
im.plotRGB(stacksent, )
#prendiamo le tre componenti red, green e blu, poi abbiamo le 4 bande della nostra immagine: blu, verde, rosso e infrarosso.
#associamo per ogni componente la banda corrispondente per vedere l'immagine con colori "naturali", con la nostra visione
#livello n3 al red, secondo elemento al green, blu ad 1: 3,2,1
im.plotRGB(stacksent, r=3, g=2, b=1)
#oppure anche
im.plotRGB(stacksent, 3, 2, 1)
#una banda che ci viene in aiuto per la vegetazione è la riflettanza dell'infrarosso nella foglia
#nell'immagine con i tre filtri, RGB, prendo quello del red, rosso, lo si toglie e si mette infrarosso
#quindi invece di r=3 sarà r=4 che è la banda di infrarosso vicino
im.plotRGB(stacksent, 4, 2, 1)
#infrarosso al posto della componente red, tutto ciò che riflette infrarosso diventa rosso
#la vegetazione diventa rossa. 
#infrarosso potenzia la visione esponenzialmente rispetto alle bande del visibile

par(mfrow=c()))
#immagine colori naturali ed infrarosso
par(mfrow=c(1,2))
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)
#nel telerilevamento si sostituiscono tutte, quindi le bande sono 4,3,2 sono tutte sostituzionu
dev.off()
im.plotRGB(stacksent, 4, 3, 2)
#sembra esattamente la stessa cosa, chi ne governa l'immagine è quella meno correlata alle altre: l'infrarosso
#possiamo fare un par mettendo in fila le tre immagini create
par(mfrow=c(1,3))
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)
im.plotRGB(stacksent, 4, 3, 2)
#al livello visivo le due con l'infrarosso sono praticamente la stessa cosa, regola i colori la banda non correlata ovvero l'infrarosso vicino
#nel momento in cui cambio il filtro del rosso con l'infrarosso cambio anche le altre due, per un livello però convenzionale, l'output è proprio la stessa cosa
dev.off()

#possiamo provare a fare altre combinazioni
im.plotRGB(stacksent, 3, 4, 2)
#inseriamo l'infrarosso nel verde piuttosto che nel rosso: nella componente greem
#il suolo nudo di questa combinazione diventa rosa
#altra composizione: mettere il nir sul blu
im.plotRGB(stacksent, 3, 2, 4)
#il suolo nudo diventa giallo. il giallo è il colore che colpisce di più l'occhio umano
#metto l'infrarosso nel blu, 4 nella posizione del blu=2
#composizione spesso usata per far vedere il suolo nudo, in questo caso c'è roccia quindi non si vede bene

#facciamo multiframe con le 4 immagini tutti insieme
par(mfrow=c(1,4))
im.plotRGB(stacksent, 3, 2, 1) #natural colors
im.plotRGB(stacksent, 4, 3, 2) #nir on red
im.plotRGB(stacksent, 3, 4, 2) #nir on green
im.plotRGB(stacksent, 3, 2, 4) #nir on blu

#una riga di comando, una funzione: fa una grande matrice con tutti grafici all'interno: pairs()
#dentro la funzione c'è da mettere come argomento il nome dell'oggetto: bande del visibile molto correlate tra di loro
pairs(stacksent)
#il grafico ci fa vedere la correlazione di tutti i pixel per ogni banda
#indice di correlazione di Pearson e varia tra -1 e 1: correlazione altamente positiva o altamente negativa.

#possiamo sapere quanti pixel abbiamo in una immagine-> b2-> dimensions -> 934*1069
#ci interessano le coordinate e da dove deriva l'immagine


