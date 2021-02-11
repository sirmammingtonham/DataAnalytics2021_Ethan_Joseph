setwd("../School/data_analytics/lab2")
getwd()
EPI_Data <- read.csv(file.choose())
data = EPI_Data$AGPEST_pt

pdf("lab1.5plots.pdf")
# exercise 1
# part 1
summary(data)
# fivenum(data,na.rm=T)

plot(ecdf(data), do.points=F, verticals=T)

par(pty="s")
qqnorm(data);qqline(data)

qqplot(qt(ppoints(250), df=5), data, xlab="QQ plot")
qqline(data)

boxplot(EPI_Data$NOX_pt, EPI_Data$SO2_pt, xlab="nox_pt vs so2_pt")


boxplot(EPI_Data$BIODIVERSITY, EPI_Data$ECOSYSTEM, xlab="biodiversity vs. ecosystem")

help(qqplot)

qqplot(EPI_Data$BIODIVERSITY, EPI_Data$ECOSYSTEM, xlab="biodiversity", ylab="ecosystem")

plot(ecdf(EPI_Data$BIODIVERSITY), do.points=F, verticals=T)

EPI_South_Asia <- subset(EPI_Data, subset=EPI_regions=="South Asia")
boxplot(EPI_South_Asia$BIODIVERSITY, EPI_South_Asia$ECOSYSTEM, xlab="biodiversity vs. ecosystem in south asia")

qqplot(EPI_South_Asia$BIODIVERSITY, EPI_South_Asia$ECOSYSTEM, xlab="biodiversity in sa", ylab="ecosystem in sa")

df <- EPI_South_Asia[, unlist(lapply(EPI_South_Asia, is.numeric))]
df

dev.off()
