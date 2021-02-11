setwd("../School/data_analytics/lab1")
getwd()
# exercise 2
# data filtering
EPI_South_Asia <- subset(EPI_Data, subset=EPI_regions=="South Asia")
EPI_Desert <- subset(EPI_Data, subset=Desert==1)
data = EPI_South_Asia$CLIMATE
data_desert = EPI_Desert$BIODIVERSITY

# part 1
summary(data)
fivenum(data,na.rm=T)
summary(data_desert)
fivenum(data_desert,na.rm=T)

stem(data)
stem(data_desert)

hist(data, breaks=10, probability=T)
lines(density(data,na.rm=T,bw=3.))
rug(data)

hist(data_desert, breaks=10, probability=T)
lines(density(data_desert,na.rm=T,bw="SJ"))
rug(data_desert)

#part 2
plot(ecdf(data), do.points=F, verticals=T)

par(pty="s")
qqnorm(data); qqline(data)
