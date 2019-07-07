setwd("~/data")
data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
# Subset the period
dx <- subset(data,Date=="1/2/2007")
dy <- subset(data,Date=="2/2/2007")
d <- rbind(d1,d2)
# draw the plot
plot(d$Sub_metering_1, type="n", ylab="Energy sub metering", xaxt="n", xlab="")
axis(1, at=c(0,nrow(d)/2,nrow(d)), labels = c("Thu", "Fri", "Sat"))
lines(d$Sub_metering_1)
lines(d$Sub_metering_2, col=2)
lines(d$Sub_metering_3, col=4)
legend("topright",lty=1, col=c(1,2,4), legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
# generate the PNG
dev.copy(png, file="Plot3.png")
dev.off()