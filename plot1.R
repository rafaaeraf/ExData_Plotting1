# rawData <- read.csv("C:/Users/aeraf/Documents/GitHub/ExData_Plotting1/household_power_consumption.txt",
#                      header = TRUE, sep = ";", na.strings=c("?"))
cleanData <- rawData
cleanData$Date <- as.Date(cleanData$Date, "%d/%m/%Y")
cleanData <- cleanData[cleanData$Date == "2007-02-01" |
                           cleanData$Date == "2007-02-02", ]

png("C:/Users/aeraf/Documents/GitHub/ExData_Plotting1/plot1.png", width = 480,
    height = 480, units = "px")
hist(cleanData$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     main = "Global Active Power",
     col = "red",
     breaks = 15)

dev.off()