#Read a CSV File in R:
f <- file.choose()
data <- read.csv(f)
print(data)

#Printing number of Rows and Columns of CSV File in R:

# print total number of columns
cat("Total Columns: ", ncol(data))
# print total number of rows
cat("Total Rows:", nrow(data))

#Using min() and max() With CSV Files:

# return minimum value of 1960 column
min_data <- min(data$wt)  
print(min_data)
# return maximum value of 1958 column
max_data <- max(data$mpg)  
print(max_data)

#Subset of a CSV File in R:

# return subset of csv with 'where' condition
sub_data <- subset(data, mpg > 20.0)
print(sub_data)

#Write Into CSV File in R:
#Create dataframe
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE))

# write dataframe_1 into file1 csv file
write.csv(dataframe1, "file1.csv")
#let us now read it
read_data2 <- read.csv("file1.csv")
print(read_data2)

#printing summary of dataframe
print(summary(dataframe1))


library(tidyverse)

#Filter
print(data %>% filter(mpg > 25.0 & wt < 2.0))

#arrange
print(arrange(data,mpg))

#rename
print(rename(dataframe1, NAME = Name))
