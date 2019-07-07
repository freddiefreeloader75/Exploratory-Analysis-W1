# Read thhe file
setwd("~/data")
data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
# Subset the period
dx <- subset(data,Date=="1/2/2007")
dy <- subset(data,Date=="2/2/2007")
datetime <- rbind(d1,d2)
# Draw the hist
hist(d$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col=2)
# generate the png
dev.copy(png, file="Plot1.png")
dev.off()