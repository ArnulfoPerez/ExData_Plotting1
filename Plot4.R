source("generatePNG.R")

setPlot <-function(){
  
  datetime <- strptime(paste(x$Date, x$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

  par(mfrow = c(2, 2)) 
  
  plot(datetime, x$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
  plot(datetime, x$Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(datetime, x$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
  lines(datetime, x$Sub_metering_2, type="l", col="red")
  lines(datetime, x$Sub_metering_3, type="l", col="blue")
  legend("topright", 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty=, 
         lwd=2.5, 
         col=c("black", "red", "blue"), 
         bty="o")
  plot(datetime, x$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
}

generatePNG("Plot4.png", setPlot())
