#satellites data visualisation in R by imageRy

# RS data

#c'è da richiamare i pacchetti per il telerilevamento
library(imageRy)
library(terra)
# in case you have not terra
# install.packages("terra")

#tutte le funzioni di imageRy funzionano con im.
#la prima funzione che andiamo ad analizzare è im.list() fornisce la lista di tutti i dati caricati sul pacchetto
# list of data available on imageRy
#lista dei file che abbiamo a disposizione
im.list()
#non ci sono argomenti nella funzione in questo caso, prende tutti i dati
#per importare direttamente in R e usare i dati da R è im.import() 
#fa usare uno dei dati che è nella lista
#importing data
#importazione dei dati, importo l'immagine
im.import()
im.import("matogrosso_ast_2006209_lrg.jpg")
#NASA: Earth Observatory
#visualizziamo l'immagine
#creo un oggetto con uno di questi dati
#assegno con assegnazione ad un ogetto
mato <- im.import("matogrosso_ast_2006209_lrg.jpg")
#mi plotta su R una immagine
#abbiamo importanto una prima immagine, è una immagine composta con varie bande insieme

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



