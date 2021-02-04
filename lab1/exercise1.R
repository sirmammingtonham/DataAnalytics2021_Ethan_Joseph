setwd("../School/data_analytics/lab1")
getwd()
EPI_Data <- read.csv("2010EPI_data.csv")
data = EPI_Data$CLIMATE
# exercise 1
# part 1
summary(data)
fivenum(data,na.rm=T)

help(stem)
stem(data)

help(hist)
hist(data)
hist(data, breaks=40, probability=T)

help(lines)
lines(density(data,na.rm=T,bw=4.))

help(rug)
rug(data)

#part 2
help(ecdf)
plot(ecdf(data), do.points=F, verticals=T)

help(par)
par(pty="s")
help(qqnorm)
help(qqline)
qqnorm(data)
qqline(data)

help(qqplot)
help(qt)
x <- seq(30,95,1)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot for t dsn")
qqline(x)

#part 3
qqplot(EPI_Data$EPI, EPI_Data$ENVHEALTH)
qqplot(EPI_Data$WATER_H, EPI_Data$WATER_E)
qqplot(EPI_Data$ENVHEALTH, EPI_Data$ECOSYSTEM)
