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

