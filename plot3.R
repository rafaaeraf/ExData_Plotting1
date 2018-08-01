rawData <- read.csv("C:/Users/aeraf/Documents/GitHub/ExData_Plotting1/household_power_consumption.txt",
                    header = TRUE, sep = ";", na.strings=c("?"))
cleanData <- rawData
cleanData$Date <- as.Date(cleanData$Date, "%d/%m/%Y")
cleanData <- cleanData[cleanData$Date == "2007-02-01" |
                           cleanData$Date == "2007-02-02", ]
cleanData$Date_Time <- paste(cleanData[, "Date"], cleanData[, "Time"])
cleanData$Date_Time <- strptime(cleanData$Date_Time, "%Y-%m-%d %H:%M:%S")

png("C:/Users/aeraf/Documents/GitHub/ExData_Plotting1/plot3.png", width = 480,
    height = 480, units = "px")
plot(x = cleanData$Date_Time, y = cleanData$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = "",
     main = "",
     col = "black")
lines(cleanData$Date_Time, cleanData$Sub_metering_2, col = "red")
lines(cleanData$Date_Time, cleanData$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "blue", "red"), lty = c(1, 1, 1))
dev.off()