#This code is to develop a new function from scratch
#To develop a function, you use the function named "function()" --> we're developing a function to sum stuff --> R already has one, but this is for exercise
#return() is the function used to give a result
somma <- function(x,y){
  z=x+y
  return(z)
}
# x and y can be replaced by num1 and num2, for instance
#the above function is complete
somma(1,7) #it actually works
#Exercise: build a function to multiply two numbers
per <- function(x,y){
  z=x*y
  return(z)
}
per(8,8) #it works again
#Develop a function to multiply three numbers
pert <- function(x,y,w){
  z=x*y*w
  return(z)
}
pert(4,3,5) #it works
#Then, he shows us examples of more complex function development from his package "neutRal"
#The z part in function creation is not necessary --> he just prefers assigning the operation to an object, to make it easier to recall using "return()"
#Also, using return() is not strictly necessary --> he uses it to signal that the function is over
#In the previous lecture, "for" is an operator --> it's not the only operator that exists --> we are now going to work with "if" and "else"
#Problem: the par() function is kind of hard to read --> we want to build a function to replace it
mf <- function(nx,ny){
 par(mfrow=c(nx,ny))
} 
#nx and ny are number of rows and columns
mf #this is the function to "hide" par()
#This technique is also used it imageRy
mf(1,2) #this now replaces par() --> you have to repeat the process in EVERY NEW SCRIPT
#Until now, we have developed fucntions w/o a default --> let's see how to put default values in a function
mfdef <- function(nx=2,ny=1){
 par(mfrow=c(nx,ny))
}
#To use the default version, you just write mfdef() without argument; otherwise, you just add an argument for rows and columns
#Putting defaults is a beginner-friendly way to develop functions --> it's to make sure that the function works even if the user is not an expert
#Now, we use if and else --> first, let's see if a number is positive or negative
youok <- function(x){
  if(x>0){
    print("This number is positive. Are you ok?")
  }
  else{
    print("This number is negative, dumdum")
  }
}
#in the above function, of course 0 is missing --> right now, it would be considered negative
yougood <- function(x){
  if(x>0){
    print("This number is positive. Are you ok?")
  }
  else if(x==0){
    print("I am 0. I don't conform")
  }
  else{
    print("This number is negative, dumdum")
  }
}
#The teacher put else if(x<0); the result is the same
#This function is now a bit more advanced, with nested operators
#Developing "for" loops
loop <- function(){
  for (i in 1:10){
    print(i)
  }
}
loop() # it works; the exercise is to create a loop for numbers from 1 to 13k
#If you have to do more than three operations, is makes sense to write a "for" loop, which can also be used with AI
#Loop with an operation inside
looop <- function(){
  for (i in 1:10){
    multi <- i*4
    print(multi)
  }
}
#Exercise: loop with "^" operator
lo4p <- function(){
  for (i in 1:10){
    power <- i^4
    print(power)
  }
}
#If you use the same name for a new function, it acts the same way as with objects --> the old one is overwritten
#sink() is used to send an R output to a file
sink("numbers.txt")
lo4p()
#you can then use getwd() to see where the file has ended up 
