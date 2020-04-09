fileURL = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFile ="./Data/dataset.zip"
consumptionFile = "household_power_consumption.txt"

if (!file.exists("./Data")) {dir.create("Data")}

if (!file.exists(dataFile)) {
  download.file(fileURL, destfile = dataFile , method = "curl")
  dateDownloaded <- date()
}

if (!file.exists(consumptionFile)) {
  unzip(consumptionFile)
}

fileName <- consumptionFile

data <- read.table(text = grep("^[1,2]/2/2007", readLines(fileName), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)


str(data)

dataFile <- consumptionFile

data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".",
                   colClasses = c("Date"="Date"))
str(data)

x <- data[data$Date %in% c(as.Date("1/2/2007"),as.Date("2/2/2007")) ,]
str(x)

x$Global_active_power <- as.numeric(x$Global_active_power)
x$Global_reactive_power <- as.numeric(x$Global_reactive_power)
x$Voltage <- as.numeric(x$Voltage)
x$Global_intensity<- as.numeric(x$Global_intensity)
x$Sub_metering_1 <- as.numeric(x$Sub_metering_1)
x$Sub_metering_2 <- as.numeric(x$Sub_metering_2)
x$Sub_metering_3 <- as.numeric(x$Sub_metering_3)
str(x)
