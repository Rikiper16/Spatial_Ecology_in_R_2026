#I'm pretty confident this is what they did on Tuesday 3rd and Wednesday 4th November, but I'm not positive
# Code to visualize remote sensing data

# Zenodo set: https://zenodo.org/records/15645465
# library(remotes)
# install_github("ducciorocchini/imageRy")

library(imageRy)
library(terra)
library(viridis)

# Listing data inside imageRy
im.list()

# importing the first band
b2 <- im.import("sentinel.dolomites.b2.tif")
plot(b2)

# Change the palette thanks to the viridis package
plot(b2, col=inferno(100))

# Exercie: import the green band of sentinel and plot it with the mako legend
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=mako(100))

# Make a multiframe with one image beside the other
im.multiframe(1,2)
plot(b2, col=inferno(100))
plot(b3, col=mako(100))

# Exercise: plot the two bands one on top of the other
im.multiframe(2,1)
plot(b2, col=inferno(100))
plot(b3, col=mako(100))
# dev.off()

# Exercise: import the red band (band number 4)
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cividis(100))

# Exercise: import the near infrared band 
b8 <- im.import("sentinel.dolomites.b8.tif")

# Build a 4x4 multiframe and plot all of the bands with the default palette
im.multiframe(2,2)
plot(b2)
plot(b3)
plot(b4)
plot(b8)

# multiframe and colorRamp Palette
clb <- colorRampPalette(c("blue4", "blue1", "cadetblue1"))(100)
plot(b2, col=clb)

# Exercise: do the same for the b3 - green band
clg <- colorRampPalette(c("darkolivegreen", "chartreuse3", "chartreuse"))(100)
plot(b3, col=clg)

# band number 4: red band
clr <- colorRampPalette(c("firebrick4", "firebrick3", "firebrick"))(100)
plot(b3, col=clr)

# band number 8: NIR band
cln <- colorRampPalette(c("magenta", "green", "yellow"))(100)
plot(b8, col=cln)

# Exercise: create a stack of all the bands together with a new object called sent considering the bands as elements of an array
sent <- c(b2, b3, b4, b8)
plot(sent)
plot(sent, col=magma(100))

# Inverting colors
plot(sent, col=magma(100, direction=-1))

# Stack by the imageRy package:
sentinel <- im.import("sentinel.dolomites")
plot(sent, col=mako(100))

# Exercise: starting from the stack called sentinel plot only the NIR band
# original b2 = layer 1 in the stack
# original b3 = layer 2 in the stack
# original b4 = layer 3 in the stack
# original b8 = layer 4 in the stack
# since the stack was built by: sent <- c(b2, b3, b4, b8)
plot(sentinel[[4]])

# RGB

#Just to be sure, I'm also importing the code from the TEMP file, while they're still available
# Code to visualize remote sensing data

# Zenodo set: https://zenodo.org/records/15645465
# library(remotes)
# install_github("ducciorocchini/imageRy")

library(imageRy)
library(terra)
library(viridis)

# Listing data inside imageRy
im.list()

# importing the first band
b2 <- im.import("sentinel.dolomites.b2.tif")
plot(b2)
plot(b2, col=magma(100))

# green band
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3)

cl <- colorRampPalette(c("black","grey","white"))(100)
plot(b3, col=cl)

# multiframe
par(mfrow=c(1,2))
# or
im.multiframe(1,2)
plot(b2, col=cl)
plot(b3, col=cl)

# the multiframe from the CRAN is not properly working, so use the GitHub version:
duccio <- function(x,y){
   par(mfrow=c(x,y))
   }

dev.off()
plot(b2,b3)

# Exercise: import band 4
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4)
plot(b4, col=cl)

# import band 8
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8)

im.multiframe(1,2)
plot(b4)
plot(b8)

# build your own function for plotting
duccio <- function(x,y){
  par(mfrow=c(x,y))
  }

# Exercise: with the function duccio, build a multiframe of 2 rows and 2 columns and plot all the imported data
duccio(2,2)
plot(b2)
plot(b3)
plot(b4)
plot(b8)

# Exercise: create a multiframe with 1 row and 2 columns, plot one against the other 
# b2 b3
# b2 b8

duccio(1,2)
plot(b2,b3)
plot(b2,b8)

# creating colored images
sent <- c(b2, b3, b4, b8)

# layer 1 = original (from Sentinel-2) b2 = blue
# layer 2 = original (from Sentinel-2) b3 = green
# layer 3 = original (from Sentinel-2) b4 = red
# layer 4 = original (from Sentinel-2) b8 = NIR

# natural color image
im.plotRGB(sent, r=3, g=2, b=1, title='natural color')

# false color image
im.plotRGB(sent, r=4, g=3, b=2, title='false color')
im.plotRGB(sent, r=3, g=4, b=2, title='false color')
im.plotRGB(sent, r=3, g=2, b=4, title='false color')

duccio(2,2)
im.plotRGB(sent, r=3, g=2, b=1, title='natural color')
im.plotRGB(sent, r=4, g=3, b=2, title='false color')
im.plotRGB(sent, r=3, g=4, b=2, title='false color')
im.plotRGB(sent, r=3, g=2, b=4, title='false color')

im.plotRGB(x, r, g, b, title = "")
