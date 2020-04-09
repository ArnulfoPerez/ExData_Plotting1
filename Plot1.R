source("generatePNG.R")

generatePNG("Plot1.png",
            hist(x$Global_active_power , 
                 col="red", 
                 main="Global Active Power", 
                 xlab="Global Active Power (kilowatts)"))
