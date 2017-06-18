##Plot 2
plot(ourData$Global_active_power ~ ourData$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
## Saving to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
