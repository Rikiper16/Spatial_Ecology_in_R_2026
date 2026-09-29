#Script for first R use

2+3
#create an object; comments are used to make scripts more understandable
samuele <- 2+3

#new object
gemma <- 4+6
# different objects can be used for additional operations
samuele+gemma
samuele*gemma
samuele^gemma
tma <- 5*4
tma+samuele+gemma
#objects can be used in complex operations
matteo <- 5, 10, 20, 50, 80 #this is an array, so a set of elements; this is an array of mammal species numbers
matteo <- c(5, 10, 20, 50, 80) #this is our first function, which is used to concatenate (hence, c)
#sum() is used to sum arguments inside parenthesis
elisa <- c(100, 80, 50, 20, 10) #human deaths due to diabetes foot
#now, we can make a graph to join species and deaths with function plot()
plot(matteo, elisa)
#we can make the plot look nicer --> every symbol is saved inside R with a number
plot(matteo, elisa, pch=16) #this is a simple scatterplot --> correlates two variables together
#we can also change the size of the character --> character exaggeration --> it's a multiplier
plot(matteo, elisa, pch=16, cex=2) #here we doubled the original size of the character
plot(matteo, elisa, pch=16, cex=2, color="blue") #for plot(), the color is "col" and the name of the color is between "" --> it's what happens with normal text in R
#you can also change the axes labels
plot(matteo, elisa, pch=16, cex=2, col="blue", xlab="number of mammals", ylab="number of human deaths")
#it is also possible to increase font size --> the control is cex.axis
plot(matteo, elisa, pch=16, cex=2, col="blue", xlab="number of mammals", ylab="number of human deaths", cex.axis=1.2) #you can also use cex.lab to increase label font
plot(matteo, elisa, pch=16, cex=2, col="blue", xlab="number of mammals", ylab="number of human deaths", cex.axis=1.2, cex.lab=2)


