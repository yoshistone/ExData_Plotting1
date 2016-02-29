data <- read.csv("household_power_consumption.txt", sep = ";")
data$Date <- as.Date(data$Date,"%d/%m/%Y")
newdata <- data[(data$Date == "2007-02-01")|(data$Date == "2007-02-02"),]
newdata$Global_active_power <- as.numeric(as.character(newdata$Global_active_power))
hist(newdata$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red")
dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()