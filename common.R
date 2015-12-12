# This file contains common functionality used in the other scripts.
# Particularly, it loads and prepares the data for plotting and defines
# functions used in more than one script.

data <- read.csv('household_power_consumption.txt', sep=';')
data$datetime <- strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')
par(mfrow = c(1, 1))

plot2 <- function(data) {
  with(data, plot(datetime, Global_active_power, type='l', xlab = '', ylab = 'Global Active Power (kilowatts)'))
}

plot3 <- function(data) {
  with(data, {
    plot(datetime, Sub_metering_1, type='l', xlab = '', ylab = 'Energy sub metering')
    lines(datetime, Sub_metering_2, col = 'red')
    lines(datetime, Sub_metering_3, col = 'blue')
  })
  legend('topright', lwd = 1, col = c('black', 'red', 'blue'),
         legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
}

output.plot <- function(filename) {
  dev.copy(png, file = filename, width = 480, height = 480)
  dev.off()
}
