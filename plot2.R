##read data
hpcfile <- "./Data/household_power_consumption.txt"
dat <- read.table(hpcfile, header=T, sep=";", na.strings="?")
##subset data
dat2 <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
##plot2
## set time variable
nTime <-strptime(paste(dat2$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
fdat <- cbind(nTime, dat2)
png(filename='plot2.png',width=480,height=480,units='px')
plot(fdat$nTime, fdat$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
x <- dev.off()