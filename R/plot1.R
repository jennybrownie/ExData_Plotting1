data<-read.table("household_power_consumption.txt", header = TRUE,  sep=";", colClasses=c(rep("character",2), rep("numeric",7)), na.strings="?")
subdata<-subset(data, data[1]=="1/2/2007" | data[1]=="2/2/2007")
png(file='plot1.png', width=480, height=480)
hist(subdata$Global_active_power, col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

