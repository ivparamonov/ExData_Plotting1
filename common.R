# This file contains common functionality used in the other scripts.
# Particularly, it loads and prepares the data for plotting and defines
# functions used in more than one script.

data <- read.csv('household_power_consumption.txt', sep=';')
data$datetime <- strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')
