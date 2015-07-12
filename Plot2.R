household_power_consumption <- read.csv("/media/asier/Vault1/Cursos/Coursera - Exploratory Data Analysis/household_power_consumption.txt", sep=";")
x <- household_power_consumption[household_power_consumption$Date %in% c('1/2/2007','2/2/2007'),]
weekdays <- strptime(paste(x$Date, x$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
x$Global_active_power <- as.numeric(x$Global_active_power)
png(filename='plot2.png',width=480,height=480)
plot(weekdays,x$Global_active_power,xlab='',ylab='Global Active Power (kilowatts)',type='l')
dev.off()
