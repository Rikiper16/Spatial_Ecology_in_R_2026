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
plot(matteo, elisa, pch=16)
