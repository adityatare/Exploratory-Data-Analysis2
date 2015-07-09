#Answer 5
require(stringr)
mobilelist<-str_detect(SCC$EI.Sector, ignore.case("mobile"))
SCC_mobile<-SCC[mobilelist,]
NEI_mobile<-NEI[NEI$SCC %in% unique(SCC_mobile$SCC),]
plot_mobile<-aggregate(Emissions~year, NEI_mobile, sum)

png('plot5.png', width=480, height=480)
      g<-ggplot(plot_mobile, aes(x=factor(year), y=Emissions, fill=factor(year)))+geom_bar(stat="identity")
      g<-g+labs(title="Total Emissions from Motor Vehicles Combustion-related Sources", x="Year", y="Total PM2.5 Emissions")
      print(g)
dev.off()
