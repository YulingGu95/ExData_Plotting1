setwd("C:/Users/betty/Desktop/coursera/exploratory data analysis/week-1")
HousePowerConsumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
usedata <- HousePowerConsumption[HousePowerConsumption$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- as.numeric(usedata$Global_active_power)
datetime <- strptime(paste(usedata$Date, usedata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, globalactivepower, type="l", ylab="Global Active Power (kilowatts)")
dev.off()
