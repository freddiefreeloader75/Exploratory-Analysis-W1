setwd("~/data")
data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
# Subset the period
d1 <- subset(data,Date=="1/2/2007")
d2 <- subset(data,Date=="2/2/2007")
d <- rbind(d1,d2)
# Plot 1
par(mfcol=c(2,2), mex=1)
plot(d$Global_active_power, type="n", ylab="Global Active Power", xaxt="n", xlab="")
axis(1, at=c(0,nrow(d)/2,nrow(d)), labels = c("Thu", "Fri", "Sat"))
lines(d$Global_active_power)
# Plot 2
plot(d$Sub_metering_1, type="n", ylab="Energy sub metering", xaxt="n", xlab="")
axis(1, at=c(0,nrow(d)/2,nrow(d)), labels = c("Thu", "Fri", "Sat"))
lines(d$Sub_metering_1)
lines(d$Sub_metering_2, col=2)
lines(d$Sub_metering_3, col=4)
legend("topright",lty=1, col=c(1,2,4), legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), bty="n", cex=0.70)
#Plot 3
plot(d$Voltage, type="n", ylab="Voltage", xaxt="n", xlab="datetime")
axis(1, at=c(0,nrow(d)/2,nrow(d)), labels = c("Thu", "Fri", "Sat"))
lines(d$Voltage)
# PLot 4
plot(d$Global_reactive_power, type="n", ylab="Global_reactive_power", xaxt="n", xlab="datetime")
axis(1, at=c(0,nrow(d)/2,nrow(d)), labels = c("Thu", "Fri", "Sat"))
lines(d$Global_reactive_power)
# Generate PNG file
dev.copy(png, file="Plot4.png")
dev.off()