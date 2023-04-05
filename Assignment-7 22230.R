#Loading the data into tibble
library(tidyverse)
as_tibble(iris)

#creating a tibble
T <- tibble(
  x = 1.5,
  y=1,
  z=x+y
)
print(T)

tibble(a,b=a*2,c=1)

#creating a tibble with random values
tibble(x = runif(10),y=x*2)

#to know more
help(tibble)

a <- 1:5
a

#data into tibble
print(as_tibble(mtcars),n=3)

#data frame to tibble
data <- data.frame(a = 1:3, b = letters[1:3], c = Sys.Date() - 1:3)
data
as_tibble(data)

#Creating new tibble from column vectors
tibble(x= 1:5, y=1, z= x^3-y)

#tibble with a list
ltibble <- tibble(x = 1:3,y = list(1:5, 1:10, 1:20))
ltibble

#creating a tibble row-by-row using tibble
tibble(
  ~x, ~y, ~z,
  "a",2,3.6,
  'b',1,8.5
)
