#Script for modelling the dispersion of all individuals of a population
#new packages needed: terra and sdm
#probably due to RTools, installation takes a while, but it worked as intended

#In the temp file, there is also package "viridis", but we will probably download it on the 13th
#This was also done on October 8th

library(terra)
library (sdm)

#Path to the file
path <- system.file("external/species.shp", package="sdm")

# Import the vector data
rana <- vect(path)
rana

# Plotting the data
plot(rana)
