#visualizzazioni dell'immagini da satellite
#codificazione delle immagini satellitari
#visualizzato le singole bande dell'immagine satellitare e poi attraverso RGB le varie bande insieme per visualizzare una certa immagine
# spectral indices

library(imageRy)
library(terra)

# list of files:
im.list()

# importing data
# https://visibleearth.nasa.gov/images/35891/deforestation-in-mato-grosso-brazil/35892l
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")

# band 1 = nir = R
# band 2 = red = G
# band 3 = green = B

im.plotRGB(m1992, 1, 2, 3)

# Exercise: put the nir ontop of the G component
im.plotRGB(m1992, 2, 1, 3)

# nir ontop of the B component
im.plotRGB(m1992, 2, 3, 1)

# importing the 2006 image
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
# nir on the green component of RGB 
im.plotRGB(m2006, 2, 1, 3)
# nir on the blue component of RGB
im.plotRGB(m2006, 2, 3, 1)

# multiframe
par(mfrow=c(2,3))
im.plotRGB(m1992, 1, 2, 3) # nir on R 1992
im.plotRGB(m1992, 2, 1, 3) # nir on G 1992
im.plotRGB(m1992, 2, 3, 1) # nir on B 1992
im.plotRGB(m2006, 1, 2, 3) # nir on R 2006
im.plotRGB(m2006, 2, 1, 3) # nir on G 2006
im.plotRGB(m2006, 2, 3, 1) # nir on B 2006


#biomassa: la massa biologica che c'è in un sistema
#le piante sono la gran parte della biomassa sul nostro pianeta
#si possono calcolare degli indici
#le piante riflettono molto l'infrarosso
#rosso e blu viene del tutto assorbito
#il rosso viene assorbito per far partire il trasporto di elettroni e il ciclo di Calvin
#riflettanza è la divisione tra la radiazione riflessa con la radiazione incidente
#indice di vegetazione basato sulla differenza
#difference vegetation index: DVI
#pianta sta per morire: riflettanza dell'infrarosso è molto più bassa
#rosso: alto assorbimento finché funziona la fotosintesi
#riflettanza rosso
#indice sul pixel
#attraverso il DVI, possiamo fare un calcolo della biomassa stimata di una certa area
#potremmo usare il blu, però ci interessa usare il rosso: firma spettrale
#red edge: bordo, ultima parte vicino al rosso. indica quanto la pianta è sana
#se ho una pendenza molto alta tra rosso e infrarosso la pianta è sana, se la pendenza diminuisce la pianta sta soffrendo
#nel calcolare gli indici spettrali di ... si usano il rosso e l'infrarosso.

# vegetation indices

library(imageRy)
library(terra)

im.list()

im.import("matogrosso_l5_1992219_lrg.jpg" )
#usiamo l'immagine mato grosso
#NASA Earth Observatory
#presa da questo sito della NASA
#NASA Visible Earth si trovano le immagini gratuite
#nome della immagine tra virgolette

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg" )
#Landsat Science: immagine preso da questo sito
#hanno fatto l'immagine di un falso colore: 3 bande infrarosso, rosso e verde
#hanno fatto false color

# bands
#band 1= NIR
#band 2= RED 
#band 3= GREEN

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

dev.off()
#chiudiamo tutto, il grafico, così che studiamo solo per il 2006
#nir on top of green
im.plotRGB(m2006, 2, 1, 3)
#nir on top of blu
im.plotRGB(m2006, 2, 3, 1)

#possiamo vedere le sei immagini tutti insieme
par(mfrow=c(2,3))
#mettiamo tutte e 6 le immagini
im.plotRGB(m1992, r=1, g=2, b=3) #1992 nir on red
im.plotRGB(m1992, 2, 1, 3) #1992 nir on green
im.plotRGB(m1992, 2, 3, 1) #1992 nir on blue
im.plotRGB(m2006, 1, 2, 3) #2006 nir on red
im.plotRGB(m2006, 2, 1, 3) #2006 nir on green
im.plotRGB(m2006, 2, 3, 1) #nir on blue

#posso fare il plot della prima barra, ovvero il nir 
plot(m2006[[1]])
#risoluzione radiometrica
#3 risoluzioni: spaziale, spettrale (quante bande ho), radiometrica (quanti valori nella codificazione in beat stiamo usando)





# build a multiframe with 1992 and 2006 images
par(mfrow=c(1,2))
im.plotRGB(m1992, r=2, g=3, b=1)
im.plotRGB(m2006, r=2, g=3, b=1)

# DVI = NIR - RED
# bands: 1=NIR, 2=RED, 3=GREEN

dvi1992 = m1992[[1]] - m1992[[2]]
plot(dvi1992)

cl <- colorRampPalette(c("darkblue", "yellow", "red", "black")) (100)
plot(dvi1992, col=cl)

# exercise: calculate dvi of 2006
dvi2006 = m2006[[1]] - m2006[[2]]
plot(dvi2006, col=cl)

# NDVI
ndvi1992 = (m1992[[1]] - m1992[[2]]) / (m1992[[1]] + m1992[[2]])
ndvi1992 = dvi1992 / (m1992[[1]] + m1992[[2]])
plot(ndvi1992, col=cl)

# NDVI
ndvi2006 = dvi2006 / (m2006[[1]] + m2006[[2]])
plot(ndvi2006, col=cl)

# par
par(mfrow=c(1,2))
plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)

clvir <- colorRampPalette(c("violet", "dark blue", "blue", "green", "yellow"))(100) # specifying a color scheme
par(mfrow=c(1,2))
plot(ndvi1992, col=clvir)
plot(ndvi2006, col=clvir)

# speediing up calculation
ndvi2006a <- im.ndvi(m2006, 1, 2)
plot(ndvi2006a, col=cl)

