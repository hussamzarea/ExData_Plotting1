##get data
setwd("C:/Users/hussamzarea/Desktop/Coursera/ExploratoryDataAnalysis/Week1")

##read the data and aisgn it to ourData
fullData <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?" )

## extract only 1/2/2007 and 2/2/2007 data
ourData <- subset(fullData, Date %in% c("1/2/2007","2/2/2007"))

## format the date values
ourData$Date <- as.Date(ourData$Date,"%d/%m/%Y")
ourData<-cbind(ourData, "DateTime" = as.POSIXct(paste(ourData$Date, ourData$Time)))

##Plot 1
hist(ourData$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
## Saving to file
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()