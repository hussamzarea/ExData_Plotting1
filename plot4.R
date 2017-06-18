##Plot 4
par(mfrow=c(2,2))
plot(ourData$Global_active_power ~ ourData$DateTime, type="l")
plot(ourData$Voltage ~ ourData$DateTime, type="l")
with(ourData, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(ourData$Sub_metering_2 ~ ourData$DateTime, col = 'Red')
lines(ourData$Sub_metering_3 ~ ourData$DateTime, col = 'Blue')
plot(ourData$Global_reactive_power ~ ourData$DateTime, type="l")
## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()

