
if (!exists("x")) {
  fileURL = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  zipFile ="dataset.zip"
  dataFile = "household_power_consumption.txt"
  
  if(!file.exists(dataFile)) {
    if (!file.exists(zipFile)) {
      download.file(fileURL, destfile = zipFile , method = "curl")
      dateDownloaded <- date()
    }
    unzip(zipFile)
  }
  
  data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
  
  x <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  
  x$Global_active_power <- as.numeric(x$Global_active_power)
  x$Global_reactive_power <- as.numeric(x$Global_reactive_power)
  x$Voltage <- as.numeric(x$Voltage)
  x$Global_intensity<- as.numeric(x$Global_intensity)
  x$Sub_metering_1 <- as.numeric(x$Sub_metering_1)
  x$Sub_metering_2 <- as.numeric(x$Sub_metering_2)
  x$Sub_metering_3 <- as.numeric(x$Sub_metering_3)
}
