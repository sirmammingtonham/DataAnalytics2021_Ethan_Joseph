setwd("../School/data_analytics/lab1")
getwd()
# exercise 2
# data filtering
EPI_South_Asia <- subset(EPI_Data, subset=EPI_regions=="South Asia")
EPI_South_Asia <- subset(EPI_Data, subset=EPI_regions=="South Asia")
data = EPI_South_Asia$CLIMATE

# part 1
summary(data)
fivenum(data,na.rm=T)

stem(data)

hist(data, breaks=10, probability=T)

lines(density(data,na.rm=T,bw=3.))

rug(data)

#part 2
plot(ecdf(data), do.points=F, verticals=T)

par(pty="s")
qqnorm(data); qqline(data)
