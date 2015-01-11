loadData <- function() {
  filename <- "./household_power_consumption.txt"
  
  # if the file doesn't exists dowload and unzip the file
  if(!file.exists(filename)) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    temp <- "household_power_consumption.zip"
    download.file(fileUrl, destfile=temp, method="curl")
    unzip(temp, exdir = "./")
  }
  
  col_classes <- c(rep("character",2), rep("numeric",7))
  table <- read.table(filename, header = TRUE, sep = ";", na = "?", colClasses = col_classes)
  
  # using data from the dates 2007-02-01 and 2007-02-02
  table <- table[(table$Date == "1/2/2007") | (table$Date == "2/2/2007"),]
  
  # convert date and time variables
  table$DateTime <- strptime(paste(table$Date, table$Time), "%d/%m/%Y %H:%M:%S")
  table$Date <- as.Date(table$Date, "%d/%m/%Y")
  
  return(table)
}