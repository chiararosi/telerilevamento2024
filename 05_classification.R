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
#per essere sicure delle nostre classi
#facciamo 
plot(m1992c)
#abbiamo diversi colori
#controlliamo il colore e così siamo sicuri delle classi
plot(m2006c)
#per vedere se combaciano i colori con le classi

#ora vogliamo calcolare il numero di pixel per ogni classe
#basta calcolare quella che si chiama frequenza
#calculating frequencies
#una frequenza misura il n di oggetti rispetto all'intero
# frequencies
#la funzione è freq()
f1992 <- freq(m1992c)
f1992
#nella tabellina che esce 
#1 e 2 significa le righe, i valori 1 e 2, poi count ovvero la conta, la conta dei pixel appartenenti alla classe 1 e alla classe 2
> f1992
  layer value   count
1     1     1  304437
2     1     2 1495563
#qui la foresta è altamente dominante.


#da qui possiamo calcolarci la proporzione
#numero di pixel di una classe rispetto al totale

# proportions
#come si fa a sapere il totale
 #ncell()
tot1992 <- ncell(m1992c)
#proporzione
prop1992 = f1992 / tot1992
#è una funzione matematica al posto di assegnazione posso mettere l'uguale
#prendiamo solo la colonna count: 0.83 per le foreste, 0.16 per il suolo nudo

#posso calcolare anche la percentuale
# percentages
perc1992 = prop1992 * 100
perc1992
#abbiamo l'83% di foresta

# 17% human, 83% forest
#questi dati ce li scriviamo perché mi servono dopo per creare un dataset


#facciamo le frequenze per il 2006
# frequencies
f2006 <- freq(m2006c)

# proportions
tot2006 <- ncell(m2006c)
prop2006 = f2006 / tot2006

# percentages
perc2006 = prop2006 * 100

# 1992: 17% human, 83% forest
# 2006: 55% human, 45% forest

#abbiamo i dati, a questo punto ci costruiamo un dataset e tirare fuori dei grafici
#si fa con la funzione data.frame()
#in R le tabelle si chiamano dataframe
# let's build a dataframe
#mettiamo la classe su una colonna
#prima colonna è la classe, che corrisponde a forest e human: due elementi di un vettore, array, e sono un testo, tutte le parti di testo nelle tabelle vengono messe tra virgolette
class <- c("forest", "human")
#la percentuale 1992 su un'altra colonna, così come per 2006
#numeri: due elementi di un vettore
y1992 <- c(83, 17)
y2006 <- c(45, 55)
#abbiamo le tre colonne
#creo la tabella con la funzione data.frame() mettendo le tre colonne
tabout <- data.frame(class, y1992, y2006)
tabout
#per vederla proprio come tabella
View(tabout)


# plotting the output
#funzione ggplot() per creare dei grafici
#devo mettere il nome della tabella che sto usando; aes=aestetics= estetica del grafico, la struttura
#asse x metto foresta e human, nell'asse y metto le percentuali. aes del grafico, sulla x metto le classi, la y è uguale alla percentuale del 1992; il colore color, lo differenziamo tra le due classi
#a questo punto dobbiamo decidere il grafico da fare, con ggplot aggiungiamo pezzi di un'altra funzione
#la funzione è il tipo di geometria: geom_bar() quindi istogrammi; gli argomenti sono il tipo di statistica che vogliamo usare
#"identity" la statistica è il valore esatto come ce lo abbiamo, non dobbiamo calcolarlo; il colore con il quale vogliamo riempire gli istogrammi fill="white"
ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white")
ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white")
#parte umana super le foreste che sono in declino

#si possono mettere insieme i due istogrammi
#abbiamo prima installato il pacchetto patchwork
#lo richiamo con library(patchwork)
# patchwork
#mette insieme più grafici
#prende il primo grafico e lo assegna ad un oggetto, così come il secondo, poi con il + lo mette uno vicino all'altro
#assegnamo ad ognuno dei due grafici, li assegnamo ad un oggetto
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white")
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white")
p1 + p2

#grafico sbagliato perché la scala tra i due grafici è diversa
#come ovviare il problema: basta mettere gli assi uguali
#la funzione è ylim()
#ci vuole la c perché sono due elementi del vettore
#questa è proprio una funzione che si chiama ylim()
# varying axis and using lines
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p1 + p2
#se volessimo diminuire il range lo possiamo fare, metterlo anche a 90 -> ylim(c(0,90))
#l'importante è che abbiano lo stesso range
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,90))
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,90))
p1 + p2
