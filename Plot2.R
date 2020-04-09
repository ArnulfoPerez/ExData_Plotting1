source("generatePNG.R")

generatePNG("Plot2.png",
            plot(strptime(paste(x$Date, x$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), 
                 x$Global_active_power, 
                 type="l", 
                 xlab="", 
                 ylab="Global Active Power (kilowatts)"))
