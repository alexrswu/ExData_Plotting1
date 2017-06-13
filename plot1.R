##read data
hpcfile <- "./Data/household_power_consumption.txt"
dat <- read.table(hpcfile, header=T, sep=";", na.strings="?")
##subset data
dat2 <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
##plot1
png(filename='plot1.png',width=480,height=480,units='px')
hist((dat2$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
x <- dev.off()


