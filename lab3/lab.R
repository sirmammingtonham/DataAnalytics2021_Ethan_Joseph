install.packages("readxl")

library(readxl)
bronx1<-read_excel("rollingsales_bronx.xls")
SALE.PRICE<-sub("\\$","",bronx1$`SALE
PRICE`)
SALE.PRICE<-as.numeric(gsub(",","", SALE.PRICE)) 
GROSS.SQUARE.FEET<-as.numeric(gsub(",","", bronx1$`GROSS SQUARE FEET`)) 
LAND.SQUARE.FEET<-as.numeric(gsub(",","", bronx1$`LAND SQUARE FEET`)) 

plot(log(bronx1$`GROSS SQUARE FEET`), log(bronx1$`SALE
PRICE`))

attach(bronx1)

m1 <- lm(SALE.PRICE~GROSS.SQUARE.FEET)
abline(m1,col="red",lwd=2)
plot(resid(m1))

#########

require(rpart)
swiss_rpart <- rpart(Fertility ~ Agriculture + Education + Catholic, data = swiss)
plot(swiss_rpart)
text(swiss_rpart)

install.packages("party")
require(party)
?ctree
treee <- ctree(Species ~ .,data=iris)
plot(treee)
?cforest
cforest(Species ~ ., data=iris, controls=cforest_control(mtry=2, mincriterion=0))

cforest(Fertility ~ Agriculture + Education + Catholic, data = swiss, controls=cforest_control(mtry=2, mincriterion=0))

#########
install.packages("kknn")
require(kknn)

data(iris)
m <- nrow(iris)
m
val <- sample(1:m, size=ceiling(m/3), replace=F, prob=rep(1/m,m))

iris.train <- iris[-val,]
iris.valid <- iris[val,]
?kknn
iris.kknn <- kknn(Species~.,iris.train,iris.valid,distance=1,kernel="triangular")
summary(iris.kknn)
fit <- fitted(iris.kknn)
table(iris.valid$Species, fit)
