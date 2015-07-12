household_power_consumption <- read.csv("/media/asier/Vault1/Cursos/Coursera - Exploratory Data Analysis/household_power_consumption.txt", sep=";")
household_power_consumption$Date <- as.Date(household_power_consumption$Date,format='%d/%m/%Y')
x <- household_power_consumption[which(household_power_consumption$Date == '2007-02-02' | household_power_consumption$Date == '2007-02-01'),]
x$Global_active_power <- as.numeric(x$Global_active_power)
png(filename='plot1.png',width=480,height=480)
hist(x$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
dev.off()
