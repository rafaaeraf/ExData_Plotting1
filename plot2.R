rawData <- read.csv("C:/Users/aeraf/Documents/GitHub/ExData_Plotting1/household_power_consumption.txt",
                    header = TRUE, sep = ";", na.strings=c("?"))
cleanData <- rawData
cleanData$Date <- as.Date(cleanData$Date, "%d/%m/%Y")
cleanData <- cleanData[cleanData$Date == "2007-02-01" |
                           cleanData$Date == "2007-02-02", ]
cleanData$Date_Time <- paste(cleanData[, "Date"], cleanData[, "Time"])
cleanData$Date_Time <- strptime(cleanData$Date_Time, "%Y-%m-%d %H:%M:%S")

png("C:/Users/aeraf/Documents/GitHub/ExData_Plotting1/plot2.png", width = 480,
    height = 480, units = "px")
plot(cleanData$Date_Time, cleanData$Global_active_power, type = "line",
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     main = "")
dev.off()