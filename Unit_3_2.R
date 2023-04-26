#Evaluation of models

#In R, there are several ways to evaluate the performance of your models,
#depending on the type of model and the nature of the problem you are 
#trying to solve.

#Here are some commonly used methods:
#Coefficient estimates
#Residual analysis
#Cross-validation
#Confusion matrix
#ROC curve and AUC
#Information criteria
#These are just some of the commonly used methods for evaluating models in R.

#Let us try information citeria

#Simple Linear Regression Model
sim_lin_mod <- lm(mpg ~ wt, data = mtcars)
#Finding the coefficients of the fitted linear model
coef(sim_lin_mod)
#Multiple Linear Regression Model
mmodel <- lm(mpg ~ wt+hp, data = mtcars)
# print the model summary
summary(mmodel)

# Compute the AIC, BIC, and DIC for the model
aicl <- AIC(sim_lin_mod)
aicl
aicm<-AIC(mmodel)
aicm
#bic
#dic
#Multiple regression is the best choice because it has the lowest AIC value 
#and provides a better balance of fit and complexity compared to linear one.


#Confusion matrix
install.packages("caret")
library(caret)
# Fit a logistic regression model 
# Make predictions on the test data
# Convert probabilities to class labels

#creating and Viewing the confusion matrix
#confusion_matrix <- confusionMatrix(predicted_classes, actual_classes)
#print(confusion_matrix$table)

#ROC curve
install.packages("ROCR")
library(ROCR)

# Fit a logistic regression model to predict Species using Petal.Length and Petal.Width
model <- glm(Species ~ Petal.Length + Petal.Width, data = iris, family = "binomial")

# Make predictions on the test data
predictions <- predict(model, newdata = iris, type = "response")

# Create the ROC curve object
roc_obj <- roc(response = iris$Species, predictor = predictions)

# Plot the ROC curve
plot(roc_obj, main = "ROC Curve for Logistic Regression Model", xlab = "False Positive Rate", ylab = "True Positive Rate")
