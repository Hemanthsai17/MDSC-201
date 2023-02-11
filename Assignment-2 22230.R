#vector addition
v<-c(23,12,13)
d<-c(1,2,3)
v+d

#finding remainder in vectors
n1<-c(2,5.5,6)
n2<-c(8,3,4)
a6<-n2%%n1
print(a6)
print(n1%%n2)

#finding quotient in vectors
u<-c(1,5,6)
w<-c(8, 3, 4)
print(u%/%w)

#printing a sequence of numbers
seris<-4:8
seris

#matrix multiplication
M1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=FALSE)
M1
M2<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
M2
M1%*%M2

#transpose of a matrix
M3=t(M1)
M3

#control structures
B1=TRUE
B2=FALSE
if(B1 && B2)
  print('s')

a <- 33
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}

#loops

#while
while (i <= 3) 
{   print(i) 
  i <- i + 1 
}
#repeat
v <- c("Hello","loop")
count <- 1
repeat{ 
  print(v) 
  count <- count+1 
  if(count > 3)
  { break } 
}

#for loop and loop controls
v <- LETTERS[1:24] 
for ( i in v)
{ 
  if (i == "D")
  { next }
  if (i=="X")
  {break}
  print(i) 
}

data()
#print(mtcars)
#head(mtcars)
#tail(mtcars)

#bring the data into a data frame
t<-mtcars
dset<-data.frame(t)
print(dset)

#plot of scatter
library(dplyr)
library(ggplot2)
#a<-select(dset,gear)
#b<-select(dset,mpg)
vec1<-pull(dset, gear)
vec1
vec2<-pull(dset, mpg)
vec2
plot(vec1,vec2, main="gear vs. mpg", xlab="gear", ylab="mpg", col="red")