## Be sure to get from the github repository
## the helper function "loadData"
source("loadData.R")

## Read and prepare the data
table <- loadData()

## Open the PNG device for the graphic
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "white")

## Do the graphic
x_lab <- ""
y_lab <- "Freuqency"
plot(table$DateTime, table$Sub_metering_1, type="l", col="black", xlab = x_lab, ylab = y_lab)
lines(table$DateTime, table$Sub_metering_2, col="red")
lines(table$DateTime, table$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

## Close the devive
dev.off()

