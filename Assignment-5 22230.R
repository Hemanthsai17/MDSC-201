#Basics
library(ggplot2)
data(iris)

IrisPlot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point(size=2.56)
print(IrisPlot)

#Labeling the plot title,x_label,y_label
print(IrisPlot + labs(y="Petal length (cm)", x = "Sepal length (cm)") 
      + ggtitle("Petal and sepal length of iris"))

#Highlight and Tick marks on the plot using text at one place
IrisPlot + annotate("text",x=6,y=6.5,label='text')
#Highlight and Tick marks on the plot using text at many places
IrisPlot + annotate("text",x=4:6, y =5:7, label = "text")

#Highlight an area
IrisPlot + annotate("rect", xmin = 4.75, xmax = 7.75,ymin = 4.5, ymax = 7, alpha = 0.3)

#segment the dataset
IrisPlot + annotate("segment",x=5, xend = 7, y = 4, yend = 5, colour = "black")

#Changing the legend position-Top Representation
#and
#Changing style of legends Changing the legend title and text font styles
p<-IrisPlot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point(size=2.56)
p + theme(legend.title = element_text(colour = "blue", size = 10,),legend.position = "top")

#changing shape of data points on plot
ggplot(iris, aes(Sepal.Length, Petal.Length,color=Species)) + geom_point(shape=4)

#Linear model(lm) for each species
ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) +
  geom_point(shape=1,size=3) +
  geom_smooth(method=lm)

#getting species col as data frame for pie chart
df <- as.data.frame(table(iris$Species))
pie <- ggplot(df, aes(x="",y =Freq, fill = factor(Var1))) + geom_bar(width = 1, stat = "identity") + theme(axis.line = element_blank(),
                                                                                                           plot.title = element_text(hjust=0.5)) +
  labs(fill="Freq",
       x=NULL,
       y=NULL, 
       title="Pie Chart of Variety of iris Species",
       caption="Source: iris")

pie + coord_polar(theta = "y", start=0)

#other plots using mpg data
data(mpg)
p <- ggplot(mpg,aes(x = factor(class))) + geom_bar(stat = "count")
p
ggplot(data=mpg, aes(x=hwy)) + geom_histogram(col='red',fill='green',alpha=.3,binwidth = 5)
ggplot(mpg, aes(x=cty, y=displ, size = 10)) +geom_point(alpha=0.7,color='red')


#themes
theme_set(theme_gray(base_size = 30))
ggplot(mpg, aes(x = year, y = class)) + geom_point(color="red")
