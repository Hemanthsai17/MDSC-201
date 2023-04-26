#Logistic Regression

# load the dataset
data(iris)

# create a binary response variable
iris$versicolor_binary <- as.numeric(iris$Species == "versicolor")

# fit a logistic regression model
model <- glm(versicolor_binary ~ Petal.Length + Petal.Width, data = iris, family = binomial)

# summarize the model
summary(model)

# load the ggplot2 package
library(ggplot2)

# create a data frame of predictor and response values
pred_df <- data.frame(Petal.Length = iris$Petal.Length,
                      Petal.Width = iris$Petal.Width,
                      Species = iris$Species,
                      versicolor_binary = iris$versicolor_binary,
                      predicted_prob = predict(model, type = "response"))

# create a scatter plot with predicted probabilities
ggplot(pred_df, aes(x = Petal.Length, y = Petal.Width, color = predicted_prob)) +
  geom_point(size = 3) +
  scale_color_gradient(low = "white", high = "red") +
  labs(x = "Petal Length", y = "Petal Width", color = "Predicted Probability") +
  ggtitle("Logistic Regression Model")

#Poisson Regression

# load the internal dataset "mtcars"
data(mtcars)

# fit a Poisson regression model with "wt" as the predictor variable
model <- glm(mpg ~ wt, data = mtcars, family = poisson)

# summarize the model
summary(model)

# create a sequence of values for "wt" variable
wt_seq <- seq(min(mtcars$wt), max(mtcars$wt), length.out = 100)

# create a data frame with "wt" values for prediction
newdata <- data.frame(wt = wt_seq)

# predict the response variable using the fitted model
pred <- predict(model, newdata, type = "response")

# plot the predicted values against "wt" values
plot(mtcars$wt, mtcars$mpg, xlab = "wt", ylab = "mpg", pch = 16)
lines(wt_seq, pred, type = "l", col = "red")