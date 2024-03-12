#Installing new packages in R
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

library(devtools)

# install the imageRy package from GitHub
devtools::install_github("ducciorocchini/imageRy")

library(imageRy)
#con CRAN posso trovare i pacchetti controllati da sviluppatori del software R
#posso anche installare pacchetti non controllati da R, come imageRy
#lo installo tramite github
#la funzione install.packages("") è quella di R
#la funzione install_github("") è dipendente da devtools
#devo prima installare devtools, che è sul CRAN
#devtools contiene la funzione install_github, che pesca imageRy
#se vogliamo far vedere da dove provengono le nostre funzioni: devtools::install_github("ducciorocchini/imageRy")
#dico che è una funzione di questo pacchetto che si chiama devtools: funzione che deriva dal pacchetto che si chiama devtools
#si può anche scrivere semplicemente install_gethub()
install.packages("devtools") #pacchetto dedicato allo sviluppo
#c'è sempre da mettere le virgolette quando voglio prendere qualcosa al di fuori di R (come scaricare un pacchetto dal CRAN)

#tutte le volte che usiamo dei pacchetti li si scrivono tutti in cima insieme, con library() 
#library()= require()
#si può usare una funzione di devtools che è install_github("") va nell'account di qualcuno e vede se c'è il pacchetto con il suo nome
#R è un software case sensitive
#una volta installato il pacchetto si manda library()

#imageRy fornisce funzioni e dati che si possono usare in maniera molto veloce
#Control+S= commit changes, salva lo script
