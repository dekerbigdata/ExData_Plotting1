## Be sure to get from the github repository
## the helper function "loadData"
source("loadData.R")

## Read and prepare the data
table <- loadData()

## Open the PNG device for the graphic
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "white")

## Do the graphic
x_lab <- ""
y_lab <- "Global Active Power (kilowatts)"
plot(table$DateTime, table$Global_active_power, type="l", xlab = x_lab, ylab = y_lab)

## Close the devive
dev.off()

