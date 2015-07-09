#Answer 2

NEI2<-NEI[NEI$fips=="24510",]
ans2<-sapply(split(NEI2, NEI2$year),function(k) sum(k$Emissions))

png('plot2a.png', width=480, height=480)
      barplot(ans2, xlab="years", ylab="PM2.5 Emission", main="Total PM2.5 Emission across years for Baltimore City ")
dev.off()
