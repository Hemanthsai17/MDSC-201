# Examples of inbuilt functions

# Creating a sequence of numbers
print(seq(1,11))
# For finding mean of numbers between an interval
print(mean(32:82))
# For finding sum of numbers between an interval
print(sum(1:20))
# For finding square root of a number
print(sqrt(49))
# For finding floor of a real number
print(floor(45.68))
# For finding ceiling of a real number
print(ceiling(45.68))


#user defined functions
Square <- function(a) 
{ 
  for (i in 1:a) 
  { 
    b <- i^2 
    print(b) 
  } 
}
a=readline()


#Calling a Function without an Argument

cube <- function() 
{
  for(i in 1:10) 
  {
    print(i^3) 
  }
}
cube()


# Create a function with arguments.

Maths <- function(a,b,c) 
{ 
  x <- a-b+c/2
  print(x)
}
Maths(1,2,3)
Maths(a=1,b=2,c=3)


# Create a function with arguments.

default <- function(a = 3,b =6) 
{ z <- a*b 
print(z) 
}
default()


#Lazy Evaluation of Function

new <- function(a, b) 
{ print(a^2) 
  print(a) 
  print(b)}
new(2)


#R strings
#Examples of valid strings

a<-'Start and end with single q'
a
b<-"Start and end with double quotes"
b
c <- "single quote 'between' double quotes"
c
d <- 'Double quotes "in between" single quote' 
d

#Examples of Invalid Strings

e <- 'Mixed quotes"
e
f <- 'Single quote ' inside single quote' 
print(f)
g <- "Double quotes " inside double quotes" 
print(g)

a<-"Hello"
b <- 'How' 
c <- "are you?" 
print(paste(a,b,c)) 
print(paste(a,b,c, sep = "-")) 
print(paste(a,b,c, sep = "", collapse = ""))

nchar('sai')
toupper('sai')
tolower('KUMAR')