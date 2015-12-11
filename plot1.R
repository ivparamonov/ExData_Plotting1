data <- read.csv('household_power_consumption.txt', sep=';')
hist(data$Global_active_power, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
