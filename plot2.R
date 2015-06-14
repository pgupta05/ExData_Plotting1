setwd("C:/MyDataDir/Client/R-Code")
datafile <- "household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

dateNtime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GactivePower <- as.numeric(subSetData$Global_active_power)
png("plot21.png", width=480, height=480)
plot(dateNtime, GactivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
