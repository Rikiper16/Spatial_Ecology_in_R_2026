#Script for modelling the dispersion of all individuals of a population
#new packages needed: terra and sdm
#probably due to RTools, installation takes a while, but it worked as intended

#In the temp file, there is also package "viridis", but we will probably download it on the 13th
#This was also done on October 8th

library(terra)
library(sdm)

#Path to the file
path <- system.file("external/species.shp", package="sdm")

# Import the vector data
rana <- vect(path)
rana

# Plotting the data
plot(rana)

#They also installed packages "vegan" and "overlap", which I also did on October 13th
#We start with an introduction to coordinates systems
#Now we can read coordinates --> yay
#dimensions of the "rana" dataset: 200 points (rows), 1 attribute (column) --> the attribute is presence/absence
#brief mention of the problem of 0s in these systems
#Looking at the coordinates of each point -> geom()
coordinates <- geom(rana)
#We want to create a subset only containing presences
presence <- rana[rana$Occurrence == 1] #if you put !=, it means "does not equal"
#Exercise: subset and assign absences
absence <- rana[rana$Occurrence != 1] #can also work with rana[rana$Occurrence == 0]
#Plot presences
plot(presence)
#Plotting presences and absences together
plot(presence, col="blue")
points(absence, col="orange") #used to add things inside an extant plot

