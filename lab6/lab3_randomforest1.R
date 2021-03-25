library(rpart)
require(randomForest)
fitKF <- randomForest(Kyphosis ~ Age + Number + Start, data = kyphosis)
print(fitKF) # view results
importance(fitKF) # importance of each predictor
#
fitSwiss <- randomForest(Fertility ~ Agriculture + Education + Catholic, data = swiss)
print(fitSwiss) # view results
importance(fitSwiss) # importance of each predictor
varImpPlot(fitSwiss)

plot(fitSwiss)

getTree(fitSwiss, 1, labelVar = TRUE)

help(randomForest) # look at all the package contents and the randomForest method options

# look at rfcv - random forest cross-validation -
help(rfcv)

# other data....
data(imports85)

# perform randomForest and other tree methods.....
summary(imports85)

fitImports <- randomForest(price ~ ., data = imports85, na.action = na.omit, importance = TRUE)
print(fitImports)
varImpPlot(fitImports)
