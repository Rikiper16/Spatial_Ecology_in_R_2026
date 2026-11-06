#This is also part of what they did between Tuesday 3rd and Wednesday 4th November
# Spectral indices from satellite images

library(terra)
library(imageRy)
library(viridis)

# List
im.list()

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
# layer 1 = NIR, layer 2 = red, layer = green
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m1992, r=2, g=1, b=3)
im.plotRGB(m1992, r=2, g=3, b=1)

# Exercise: import the newest image - 2006
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
im.plotRGB(m2006, r=1, g=2, b=3)

# DVI 1992
# 100 NIR
# 0 red
# dvi = NIR - red = 100

# 60 NIR
# 20 red
# dvi = NIR - red = 40

dvi1992 <- m1992[[1]] - m1992[[2]] / m1992[[1]] + m1992[[2]]
dvi2006 <- m2006[[1]] - m2006[[2]]

par(mfrow=c(1,2))
plot(dvi1992, col=inferno(100))
plot(dvi2006, col=inferno(100))

ndvi1992 <- im.ndvi(m1992, 1, 2)
ndvi2006 <- im.ndvi(m2006, 1, 2)

plot(ndvi1992, col=inferno(100))
plot(ndvi2006, col=inferno(100))

# range of ndvi
# 0-100
# ndvi = (nir - red) / (nir + red) = (100-0)/(100+0) = 1
# ndvi = (nir - red) / (nir + red) = (0-100)/(0+100) = -1
# ndvi will always range from -1 to 1

# 0-200
# ndvi = (nir - red) / (nir + red) = (200-0)/(200+0) = 1
# ndvi = (nir - red) / (nir + red) = (0-200)/(0+200) = -1
# ndvi will always range from -1 to 1


# 0-100
# dvi = (nir - red) = (100-0) = 100
# dvi = (nir - red) = (0-100) = -100

# 0-200
# dvi = (nir - red) = (200-0) = 200
# dvi = (nir - red) = (0-200) = -200

#The part down here is from the non-TEMP file; should be what they did on Thursday 5th November
# Code to develop spectral indices

library(terra)
library(imageRy)
library(viridis)

# Listing the data
im.list()

# Importing the image of Mato Grosso in 1992
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m1992

# Layers of m1992
# layer 1 = NIR
# layer 2 = red
# layer 3 = green

# Exercise: put the NIR infrared in a im.plotRGB in the green component
# Make a multiframe with the NIR ontop of the red component and ontop of the green component
im.multiframe(1,2)
im.plotRGB(m1992, r=1, g=2, b=3) 
im.plotRGB(m1992, r=2, g=1, b=3) 

# RGB scheme: you can remove r= g= b=
im.multiframe(1,2)
im.plotRGB(m1992, 1, 2, 3) 
im.plotRGB(m1992, 2, 1, 3) 

# using NIR ontop of the blue component
im.multiframe(1,3)
im.plotRGB(m1992, 1, 2, 3) 
im.plotRGB(m1992, 2, 1, 3) 
im.plotRGB(m1992, 2, 3, 1) 

# Calculating DVI in 1992
# NIR layer 1
# red layer 2

nir1992 <- m1992[[1]]
red1992 <- m1992[[2]]
dvi1992 = nir1992 - red1992
plot(dvi1992, col=rocket(100))
plot(dvi1992, col=inferno(100))
