#Answer 4
require(stringr)
coallist<-str_detect(SCC$EI.Sector, ignore.case("coal"))
SCC_Coal<-SCC[coallist,]
NEI_Coal<-NEI[NEI$SCC %in% unique(SCC_Coal$SCC),]
plot_coal<-aggregate(Emissions~year, NEI_Coal, sum)

png('plot4.png', width=480, height=480)
      g<-ggplot(plot_coal, aes(x=factor(year), y=Emissions, fill=factor(year)))+geom_bar(stat="identity")
      g<-g+labs(title="Total Emissions from Coal Combustion-related Sources", x="Year", y="Total PM2.5 Emissions")
      print(g)
dev.off()
