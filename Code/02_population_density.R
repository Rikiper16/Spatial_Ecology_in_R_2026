#R code for population density
#Install packages
install.packages("spatstat")
#to call the package, you use the function library()

install.packages("spatstat")
I pacchetti scaricati con il codice sorgente sono in
	‘C:\Users\utente\AppData\Local\Temp\RtmpGUaKLn\downloaded_packages’
> library(spatstat)
Errore in library(spatstat) : non c'è alcun pacchetto chiamato ‘spatstat’
> 
#alla fine ci sono riuscito --> il pacchetto spatstat scaricava una versione di spatstat.univar che non gli andava bene (la 3.1-7), quando invece aveva bisogno della 3.2-0
#ho risolto cercando su internet come forzare la versione 3.2-0; ho usato RTools 4.4 ed il pacchetto "remotes"
#da quello che ho visto su internet, il problema potrebbe risolversi da solo in un paio di giorni (oggi è il 29/9), una volta che il codice della nuova versione di spatstat sarà aggiornato

#October 6th: how to insert an image in GitHub w/o the drag and drop
#We did it, so now it is time to R; then, we moved to a theoretical explanation
