library(utils)
## Set working directory
setwd("~/Google Drive/Coursera_R_studio/exploratory_data/project2")
## Download the data
my.file = "expdata_prj2.zip"
if (!file.exists(my.file)) {
  retval = download.file("
  https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip",
                         destfile = my.file, method = "curl")
}
