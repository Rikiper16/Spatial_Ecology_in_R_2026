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
#October 7th: we should do R today
library(spatstat)
#Recall data
bei #dataset built in spatstat; it is a tree dataset; point pattern --> configuration of points in space
#Looking at the points in space
plot(bei)
plot(bei, pch=15, cex=.5) #adjusting point type and size
bei.extra #contains the environmental variables
plot(bei.extra)
#New concept --> subsetting a dataset --> ex. we want to only consider one variable
elevation <- bei.extra$elev #using "$" connects the dataset to the variable, like a rope; then, you assing the subset to an object
elevation #make sure what you have done makes sense
plot(elevation)
#Variables can also be selected in a different way
elevation2 <- bei.extra[[1]] #if bei.extra was a table, you would only use []; but since bei.extra is a map, you need the double []
#Basically, with the above method you are just selecting the variable number N of a given dataset; it is the preferred method of the teacher, so the one we will use for the rest of the course


