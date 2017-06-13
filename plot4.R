
##read data
hpcfile <- "./Data/household_power_consumption.txt"
dat <- read.table(hpcfile, header=T, sep=";", na.strings="?")
##subset data
dat2 <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
##plot4
png(filename='plot4.png',width=480,height=480,units='px')
par(mfrow=c(2,2))
plot(fdat$nTime, fdat$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(fdat$nTime, fdat$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(fdat$nTime, fdat$Sub_metering_1, type = "l", col="black", xlab = "", ylab = "Energy sub metering")
lines(fdat$nTime, fdat$Sub_metering_2, type = "l", col="red")
lines(fdat$nTime, fdat$Sub_metering_3, type = "l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty="solid")
plot(fdat$nTime, fdat$Global_reactive_power, type="l", xlab="datetime", ylab="Global Reactive Power")
x <- dev.off()