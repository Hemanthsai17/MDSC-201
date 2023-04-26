#Simple Linear Regression Model

#Fitting a Simple Linear Regression Model to dataset 'mtcars'
sim_lin_mod <- lm(mpg ~ wt, data = mtcars)
#Finding the coefficients of the fitted linear model
coef(sim_lin_mod)

# load the dplyr package
library(dplyr)
# load the ggplot2 package
library(ggplot2)

#Loading data set and converting it to data frame
t<-mtcars
dset<-data.frame(t)

#pulling the selected columns from data frame to vectors
vec1<-pull(dset, wt)
vec1
vec2<-pull(dset, mpg)
vec2
#plotting a scatter for data
plot(vec1,vec2, main="wt vs. mpg", xlab="gear", ylab="mpg", col="red")
#plotting a line for data
ggplot(data = data.frame(t), aes(x = wt, y = mpg)) +
  geom_line()

#plotting sctter to join it along line plot
p <- ggplot(data = data.frame(t), aes(x = wt, y = mpg)) + 
  geom_point()
# add a line plot of x vs. z
p + geom_line(aes(x = wt, y = mpg), color = "blue")

#Visualising the fitted linear model
# create a scatter plot of mpg vs. hp
p <- ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point()
# add the linear regression line to the plot
p + geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Regression of MPG on Weight",
       x = "Weight",
       y = "Miles Per Gallon")


# print a summary of the model
summary(model)


#Multiple Linear Regression

# fit a multiple linear regression model to predict mpg
mmodel <- lm(mpg ~ wt+hp, data = mtcars)
# print the model summary
summary(mmodel)

p <- ggplot(data = mtcars, aes(x = mpg, y = predict(mmodel))) +
  geom_point() +
  geom_line() +
  labs(title = "Multiple Linear Regression Model of MPG",
       x = "Observed MPG",
       y = "Predicted MPG")

# add a diagonal dashed line to indicate perfect predictions
p

# create a scatter plot of observed vs. predicted mpg
p <- ggplot(data = mtcars, aes(x = mpg, y = predict(mmodel))) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
  labs(title = "Multiple Linear Regression Model of MPG",
       x = "Observed MPG",
       y = "Predicted MPG")

# add a diagonal dashed line to indicate perfect predictions
p

# print the model summary
summary(mmodel)


# load the car package
library(car)
#Check multi collinearity of the data
vif(mmodel)


#Residual Analysis

# create a vector of standardized residuals
std_resid <- rstandard(model)

# create a plot of the residuals vs. fitted values
plot(model$fitted.values, std_resid,
     xlab = "Fitted values", ylab = "Standardized residuals",
     main = "Residual plot")

# create a histogram of the standardized residuals
hist(std_resid, xlab = "Standardized residuals",
     main = "Histogram of standardized residuals")

