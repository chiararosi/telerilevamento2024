#commento. First R script
#R as a calculator
a <- 6*7
b <- 5*8
a + b
#array: vettore di dati
#IMPORTANTE COMMENTARE per l'esame
#Arrays=vettori, serie di dati concatenati insieme
flowers <- c(3, 6, 8, 10, 15, 18)
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
#symbol dimensions
plot(flowers, insects, pch=19, cex=2)
#posso diminuire la dimensione, i cex<1
plot(flowers, insects, pch=19, cex=0.5)
#In R il separatore decimale è il punto e possiamo scriverlo sia come 0.5 sia .5
#posso anche variare il colore= col
plot(flowers, insects, pch=19, cex=0.5, col="chocolate1")

