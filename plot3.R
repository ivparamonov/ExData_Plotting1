data <- read.csv('household_power_consumption.txt', sep=';')
data$datetime <- strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')
with(data, {
  plot(datetime, Sub_metering_1, type='l', xlab = '', ylab = 'Energy sub metering')
  lines(datetime, Sub_metering_2, col = 'red')
  lines(datetime, Sub_metering_3, col = 'blue')
})
legend('topright', lwd = 1, col = c('black', 'red', 'blue'),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
