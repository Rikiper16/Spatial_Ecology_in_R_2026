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
points(absence, col="orange") #used to add things to an extant plot
#Oct 14th: I have also installed the package "viridis", which we might use today; I activated the packages terra, sdm, overlap, vegan
#I have also rerun some commands to have the same objects and images as yesterday (Oct 13th)
#files with .asc are raster data of different drivers of species distribution -> we now use them in the file
#Load path to elevation file
elev <- system.file("external/elevation.asc", package="sdm")
elevmap <- rast(elev) #rast() is the function to import raster data -> we previously used vect(), because the original dataset was a vector
plot(elevmap)
cl <- colorRampPalette(c("orange", "yellow", "violet"))(100) #in this case, the number of nuances is required
plot(elevmap, col=cl)
points(presence) #to add presences to the elevation map
temp <- system.file("external/temperature.asc", package="sdm")
tempmap <- rast(temp)
cl2 <- colorRampPalette(c("black", "grey", "white"))(100) #cannot see anything
cl2 <- colorRampPalette(c("blue", "green", "red"))(100)
plot(tempmap, col=cl2)
points(presence)
# Same with precipitation
prec <- system.file("external/precipitation.asc", package="sdm")
precmap <- rast(prec)
cl3 <- colorRampPalette(c("grey", "lightblue", "blue"))(100)
plot(precmap, col=cl3)
points(presence)
#Same with vegetation
veg <- system.file("external/vegetation.asc", package="sdm")
vegmap <- rast(veg)
cl4 <- colorRampPalette(c("yellow", "lightgreen", "green"))(100)
plot(vegmap, col=cl4)
points(presence)
#then, we installed and activated "viridis" -> we will use it to change colors w/o using colorRampPalette()
#viridis has pre-installed palettes that are colorblind-friendly; do not use "turbo", because it is a rainbow palette, so it is not ideal; name of palettes are on the viridis page
plot(elevmap, col=viridis(100)) #number of nuances is specified in the object
#Plot the four maps together in the same multiframe
par(mfrow=c(2,2))
plot(elevmap, col=viridis(100), main="elev")
plot(tempmap, col=inferno(100), main="temp")
plot(precmap, col=mako(100), main="temp")
plot(vegmap, col=cividis(100), main="veg") #we plotted all four (supposed) predictors in the same multiframe and in different color palettes
#the professor uses names of the same length because it makes the code tidier
#if you use the same color palette, you can make comparisons directly on the map, which is more intuitive; to add titles, use object "main="""
#up until now, we have used the objects as separated, forcing us to use par() to create multiframes -> you can avoid this by making a stack
drivers <- c(elevmap, tempmap, precmap, vegmap) #creating a stack using the objects we have
plot(drivers, col=inferno(100)) #automatically creates a multiframe
#if you want to add presence points, you need to use ChatGPT --> requires creating a new function, so it is very complicated --> we will solve this at the end of the course
#to plot a single drivers from the stack --> you can subset the stack
t <- drivers[[2]] #also works as t <- drivers$temperature --> it uses the original name, which is listed in the object "tempmap", so it's easier if you use layers rather than names





