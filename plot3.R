##read data
hpcfile <- "./Data/household_power_consumption.txt"
dat <- read.table(hpcfile, header=T, sep=";", na.strings="?")
##subset data
dat2 <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
#plot3
png(filename='plot3.png',width=480,height=480,units='px')
plot(fdat$nTime, fdat$Sub_metering_1, type = "l", col="black", xlab = "", ylab = "Energy sub metering")
lines(fdat$nTime, fdat$Sub_metering_2, type = "l", col="red")
lines(fdat$nTime, fdat$Sub_metering_3, type = "l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty="solid")
x <- dev.off()