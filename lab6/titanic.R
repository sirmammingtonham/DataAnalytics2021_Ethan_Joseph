data(Titanic)
library(rpart)
library(randomForest)
library(party)

pdf(file = "./lab6/titanic.pdf") # just to output everything to pdf

# run rpart
model.rpart <- rpart(Survived ~ ., method = "class", data = Titanic)
printcp(model.rpart) # display the results
plotcp(model.rpart) # visualize cross-validation results
summary(model.rpart) # detailed summary of splits

# run ctree
model.ctree <- ctree(Survived ~ ., data = Titanic)
print(model.ctree)
plot(model.ctree)

# run heirarchical clustering
model.hclust <- hclust(dist(as.matrix(Titanic)))
plot(model.hclust)

# run random forest
model.rF <- randomForest(Survived ~ ., data = Titanic, importance = TRUE, ntree = 200, mtry = 2)
print(model.rF)
plot(model.rF)

dev.off() # end pdf writing