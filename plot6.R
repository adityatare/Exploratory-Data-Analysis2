#Answer 6
require(stringr)
NEI_city<-NEI[NEI$SCC %in% unique(SCC_mobile$SCC) & NEI$fips %in% c("24510","06037"),]
NEI_city[NEI_city$fips=="24510",]$fips<-"Baltimore City"
NEI_city[NEI_city$fips=="06037",]$fips<-"Los Angeles County"
colnames(NEI_city)<-c("City","SCC","Pollutant","Emissions","type","year")
aggrcity <- aggregate(Emissions ~ year + City, NEI_city, sum)


png('plot6.png', width=480, height=480)
      g<-ggplot(aggrcity, aes(factor(year), Emissions))
      g2<-g+geom_line(aes(color=City, group=City), size=1)
      g2<-g2+labs(title="Emission Comparison from Motor Vehicles Sources", x="Year", y="Total PM2.5 Emissions")
      print(g2)
dev.off()
