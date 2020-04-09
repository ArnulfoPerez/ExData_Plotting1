generatePNG <- function(file, command) {
  source("getData.R")
  png(file, width=480, height=480) 
  command
  dev.off()
}
