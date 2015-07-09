## Script Name: plot1.R
## Version: 1.0_14

## Libraries needed: no special libraries needed for this part

## Pre-Step One: Set working directory
setwd("~/Google Drive/Coursera_R_studio/exploratory_data/project2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
length(NEI$Emissions)
length(NEI$year)
tot.PM25yr <- tapply(NEI$Emissions, NEI$year, sum)

###Step 2: prepare to plot to png
png("plot1.png")
plot(names(tot.PM25yr), tot.PM25yr, type="l", xlab = "Year", ylab = expression
("Total" ~ PM[2.5] ~"Emissions (tons)"), main = expression("Total US" ~ PM[2.5] ~ "Emissions by Year"), col="Purple")
dev.off()

###Step 3: prepare to plot to the markdown file
plot(names(tot.PM25yr), tot.PM25yr, type="l", xlab = "Year", ylab = expression ("Total" ~ PM[2.5] ~"Emissions (tons)"), main = expression("Total US" ~ PM[2.5] ~ "Emissions by Year"), col="Purple")

Answer:
Yes, they sharply declined from 1999 to 2002. Then a slower decline between 2002 and 2005. Finally, they sharply declined from 2005 to 2008.
