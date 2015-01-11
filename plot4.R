## Be sure to get from the github repository
## the helper function "loadData"
source("loadData.R")

## Read and prepare the data
table <- loadData()

## Open the PNG device for the graphic
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "white")

## Do the graphic
par(mfrow=c(2,2))

# plot_1: top left
plot(table$DateTime, table$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

# plot_2: top right
plot(table$DateTime, table$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# plot_3: bottom left
plot(table$DateTime, table$Sub_metering_1, type="l", col="black", xlab = "", ylab = "Energy sub metering")
lines(table$DateTime, table$Sub_metering_2, col="red")
lines(table$DateTime, table$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, box.lwd=0)

# plot_4: bottom right
plot(table$DateTime, table$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

## Close the devive
dev.off()

