# Read thhe file
setwd("~/data")
data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
# Subset the period
dx <- subset(data,Date=="1/2/2007")
dy <- subset(data,Date=="2/2/2007")
d <- rbind(d1,d2)
# Draw the plot
plot(d$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(1, at=c(0,nrow(d)/2,nrow(d)), labels = c("Thu", "Fri", "Sat"))
lines(d$Global_active_power)
# generate the PNG file
dev.copy(png, file="Plot2.png")
dev.off()