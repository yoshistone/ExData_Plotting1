data <- read.csv("household_power_consumption.txt", sep = ";")
datetime <- strptime(paste(data$Date, data$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")
newdata <- cbind(data, datetime)
newdata$Date <- as.Date(newdata$Date, format = "%d/%m/%Y")
newdata$Global_active_power <- as.numeric(as.character(newdata$Global_active_power))
Newdata <- newdata[newdata$Date >= "2007-02-01" & newdata$Date <= "2007-02-02",]
with(Newdata, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
dev.copy(png, file="plot2.png", width = 480, height = 480)
dev.off()

