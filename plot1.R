## Be sure to get from the github repository
## the helper function "loadData"
source("loadData.R")

## Read and prepare the data
table <- loadData()

## Open the PNG device for the graphic
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")

## Do the graphic
main_lab <- "Global Active Power"
x_lab <- "Global Active Power (kilowatts)"
y_lab <- "Freuqency"
hist(table$Global_active_power, main = main_lab, xlab = x_lab, ylab = y_lab, col = "red")

## Close the devive
dev.off()

