data <- read.csv('household_power_consumption.txt', sep=';')
data$datetime <- strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')
with(data, plot(datetime, Global_active_power, type='l', xlab = '', ylab = 'Global Active Power (kilowatts)'))
