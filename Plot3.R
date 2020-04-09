source("generatePNG.R")

setPlot <-function(){
  
  datetime <- strptime(paste(x$Date, x$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  plot(datetime, x$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
  lines(datetime, x$Sub_metering_2, type="l", col="red")
  lines(datetime, x$Sub_metering_3, type="l", col="blue")
  legend("topright", 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty=1, 
         lwd=2.5, 
         col=c("black", "red", "blue"))
}

generatePNG("Plot3.png", setPlot())
