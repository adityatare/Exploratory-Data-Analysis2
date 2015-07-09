#Answer 3
aggrNEI <- aggregate(Emissions ~ year + type, NEI2, sum)

png('plot3.png', width=480, height=480)
      g<-ggplot(pd, aes(factor(year), Emissions))
      g2<-g+geom_line(aes(color=type, group=type))+labs(title="Total Emissions in Baltimore City grouped by Type of Source", x="Year", y="Total PM2.5 Emissions")
      print(g2)
dev.off()
