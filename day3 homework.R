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