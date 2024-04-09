#classificazione
#immagine satellitare continua (montato delle bande)
#zona verde, zona a carattere nevoso
#parte blu prateria ad alta quota
#verde scuro foreste di conifere
#viola parte urbana
#selezioniamo dei pixel casuali all'interno delle nostre aree, questi pixel in uno spazio composto dalle bande (PC=Principal Components) abbiamo la riflettanza in ogni pixel nelle tre bande
#lo scopo è creare i training sites, i siti di prova, per far capire all'algoritmo cosa intendiamo per le nostre classi
#vediamo il pixel come si comporta nello spazio spettrale, come sono distribuiti
#es. pixel della pianta-> alta riflettanza nel NIR, bassa nel rosso. 
#abbiamo individuato dei gruppi: i gruppi nel linguaggio statistico si chiamano CLUSTER
#creiamo quindi dei training sites: pixel presi in modo casuale che ci permettono di distinguere i gruppi
#ipotizziamo che vogliamo fare una classificazione di un pixer, a quale cluster appartiene questo pixel? quale è la probabilità che appartiene ad un cluster rispetto che all'altro?
#means=medie; andiamo a calcolare la distanza del pixel incognito a quelli che so. Distanza si intende come k
#l'algoritmo si intende come k-means: classifica ogni singolo pixel dell'immagine originale nei cluster fatti in origine chiamati training sites.
#prendo l'immagine originale, faccio i cluster e poi creo una nuova immagine classificata
#la mappa classificata: posso calcolare la frequenza, vedo come varia il numero di pixel nelle due classi nel tempo. 

#si parte dall'immagine satellitare
#2° classificheremo l'immagine
#3° grafici statistici per vedere 

# quantifying land cover variability: copertura del suolo.

#dobbiamo installare due pacchetti

# install.packages("ggplot2")
#usiamo le virgolette perché usciamo da R

# install.packages("patchwork")

#con la funzione library() richiamiamo il pacchetto 

library(terra)
library(imageRy)
library(ggplot2)
library(patchwork)

#imageRy-> lista delle immagini
#listing images
im.list()
#importo l'immagine 
#importing data
m1992<- im.import("matogrosso_l5_1992219_lrg.jpg")
#la andiamo ora a classificare
#prima del mato grosso importiamo anche l'immagine del sole

# importing images
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")
#Solar Orbites è un satellite che sta prendendo immagini dal sole

# https://www.esa.int/ESA_Multimedia/Images/2020/07/Solar_Orbiter_s_first_views_of_the_Sun6
# additional images: https://webbtelescope.org/contents/media/videos/1102-Video?Tag=Nebulas&page=1

#per es. in questo caso abbiamo 3 livelli energetici
#classifichiamo l'immagine sui tre livelli energetici
#lo si fa con la funzione im.classify()
#richiede dentro l'immagine principale, e un argomento della funzione ovvero number of clusters, quanti ipotizziamo il numero di cluster si trovano nella immagine

# classifying images
sunc <- im.classify(sun, num_clusters=3)
#crea già automatico un plot, che viene fuori dalla classificazione
#l'algoritmo ha selezionato dei pixel randomicamente, ed ha iniziato da quei pixel lì.
#di che classi stiamo parlando: 3 livelli energetici, giallo, intermedio e più basso
#la prima classe ha raggruppato tutti i pixel che almeno in questo caso, li ha raggruppati del livello energetico più basso
#la seconda classe sono livelli intermedi (in questo caso, perché il computer prende in maniera casuale)
#la terza classe livello superiore energetico



# importing Mato grosso images
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

#importo sia l'immagine del 1992 sia quella del 2006

#si procede con la classificazione di queste immagini
# classifying images
m1992c <- im.classify(m1992, num_clusters=2)
#nome dell'immagine, il numero dei clusters-> identificazione tra foresta e tutto il resto, quindi solo 2
#nel mio caso la classe n1 è il suolo nudo
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

#il prossimo passaggio, dopo aver classificato l'immagine, vogliamo calcolare il n di pixel, in statistica si chiama frequenza, della foresta rispetto che al suolo nudo
#tireremo fuori poi le percentuali delle due classi
# frequencies
f1992 <- freq(m1992c)

# proportions
tot1992 <- ncell(m1992c)
prop1992 = f1992 / tot1992

# percentages
perc1992 = prop1992 * 100

# 17% human, 83% forest

# frequencies
f2006 <- freq(m2006c)

# proportions
tot2006 <- ncell(m2006c)
prop2006 = f2006 / tot2006

# percentages
perc2006 = prop2006 * 100

# 1992: 17% human, 83% forest
# 2006: 55% human, 45% forest

# let's build a dataframe
class <- c("forest", "human")
p1992 <- c(83, 17)
p2006 <- c(45, 55)

tabout <- data.frame(class, p1992, p2006)
tabout

# plotting the output
ggplot(tabout, aes(x=class, y=p1992, color=class)) + geom_bar(stat="identity", fill="white")
ggplot(tabout, aes(x=class, y=p2006, color=class)) + geom_bar(stat="identity", fill="white")

# patchwork
p1 <- ggplot(tabout, aes(x=class, y=p1992, color=class)) + geom_bar(stat="identity", fill="white")
p2 <- ggplot(tabout, aes(x=class, y=p2006, color=class)) + geom_bar(stat="identity", fill="white")
p1 + p2

# varying axis and using lines
p1 <- ggplot(tabout, aes(x=class, y=p1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p2 <- ggplot(tabout, aes(x=class, y=p2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p1 + p2
