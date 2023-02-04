#Logical
t<-TRUE

#To know the datatype
print(class(t))

#Integer
x<-2
y<-3
#Addition of two variables
z<-x+y

#complex numbers and their operations
com<-4+7i
com2<-2-4i
ans<-com+com2
ans

#character
char<-'abc'
#character to raw conversion
r<-charToRaw('SAIRAM')

#Numeric
a<-5.36
#examples of operations on numeric
d<-floor(a)
b=100
c=log(b,base=10)

#Vectors
v<-c(123,23,12,13,1)
va<-c(123,'g',12,13,1)
apples<-c('red','green','yellow')
print(class(apples))
print(class(c))
#printing a row of numbers as per given indexes and values
print((-2:0))
#Operations on vectors
d<-c(1,2,3)
v+d
e<-c(1,2,3,4,5)
f<-e+v
print(class(f))

#List
list1<-list(c(1,2,3),cos,"Sairam")
print(list1)

#Matrix initialization and experimentation
M1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=FALSE)
M1
M2<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
M2
#Below line gives error:unused argument (bycol = FALSE)
#M<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,bycol=FALSE)
#M
#Below line gives error:unused argument (bycol = TRUE)
#M<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,bycol=TRUE)
#M

#Arrays
arr= array(c('sai','pavan','hemanth'),dim=c(3,1,2))
print(arr)

#Factors
apple_colors <- c('green','green','yellow','red','red','red','green')
#vector to factor
factor_apple <- factor(apple_colors)
print(factor_apple)
#below line tells us the number of unique elements in the factor
print(nlevels(factor_apple))

#Dataframes
BMI<-data.frame(
  gender = c("Male", "Male","Female"),
  height = c(162, 171.5, 165), 
  weight = c(84,73, 78), 
  Age =c(45,39,36) ) 

print(BMI)

#Can also be used to find variables
#Following lines are to get the list of all variables present in the space
ls()
print(ls())

var=1
print(ls(pattern="var"))
print(ls(all.name=TRUE))

#Deleting the variables
print(ls())
rm(list=ls())
print(ls())

#valid and invalid Variable names
sai_nfull.<-0
.sai.full_name<-0
#following are invalid for... 
#...new symbol other than "_" or"."
#sai%fullna
#...starts with number
#2sais_is
#...continues with number after. as start
#.2sais_is
#...starts with "_"
#_sai_pavan

#Assignment using equal operator. 
var.1 = c(1,2,3) 
# Assignment using leftward operator. 
var.2 <- "sai"
# Assignment using rightward operator. 
c(TRUE,12) -> var.3
print(var.1)
#The cat() function combines multiple items into a continuous print output.
cat ("var.1 is ", var.1 ,"\n") 
cat ("var.2 is ", var.2 ,"\n") 
cat ("var.3 is ", var.3 ,"\n")

#Arithmetic Operators in the order of addition,subtraction,multiplication
#division,exponent,modulus(remainder),integer division
n1<-2
n2<-32
a1<-n1+n2
print(a1)
a2<-n2-n1
print(a2)
a3<-n1*n2
print(a3)
a4<-n2/n1
print(a4)
a5<-n2^n1
print(a5)
a6<-n2%%n1
print(a6)
a7<-n2%/%n1
print(a7)

#Comparison Operators in the order equal,not equal,greater than,less than
#greater than or equal to,less than or equal to
if(n1==n2)
  print("s")
if(n1!=n2)
  print("s")
if(n1>n2)
  print("s")
if(n1<n2)
  print("s")
if(n1>=n2)
  print("s")
if(n1<=n2)
  print("s")

#MISC
#creates a series of numbers in a seq
print((20:25))
#checks if element exists in vector
vector1<-c(1,2,'sai')
3%in%vector1
"sai"%in%vector1
#Matrix multiplication
M1%*%M2

#We have already seen how to assign variables with values locally
#We shall now see how Global works
g<-5
print(g)
g<-6
print(g)
g<<-3
g
#More work required here

#Logical operators in the order vectorized AND operator,AND
#vectorized OR operator,OR,NOT
B1=TRUE
B2=FALSE
if(B1 && B2)
  print('s')
if(B1 || B2)
  print('s')
