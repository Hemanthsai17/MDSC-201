#pie chart
pie(c('s'=5,'a'=7,'i'=6,'r'=3,'a'=2,'m'=4),edges=1000,init.angle=0,radius=1,clockwise=TRUE)

#bar chart
H<-c('w'=10,'o'=20,'r'=30,'d'=19.5,'s'=11)
barplot(H,xlab='X',ylab='Y',main='Trail')

#box plot
dat<-c(11,9,5,10,2,3,7,4,1,8,6,7.5)
data <- c("East","West","East","North","North","East","West","West","South","East","North","South")
factor_data <- factor(data)
boxplot(dat~factor_data,varwidth=TRUE)

#histogram
v <-  c(9,13,21,8,36,22,12,41,31,33,19,26)
# Create the histogram.
hist(v,xlab = "Weight")

#data
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

#lineplot
v2 <- c(7,12,28,3,41)
plot(v,type = "o", col = "green", xlab = "Month", ylab = "Rain fall",main = "Rain fall chart")

v3<-c(1, 4, 7, 10, 13, 16, 19, 22, 25,3, 8, 13, 18, 23, 28, 33, 38,1, 8, 27, 64,125,216,343,512,729)
mean(v3)
median(v3)
mode(v3)