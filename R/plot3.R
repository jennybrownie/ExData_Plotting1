data<-read.table("household_power_consumption.txt", header = TRUE,  sep=";", colClasses=c(rep("character",2), rep("numeric",7)), na.strings="?")
subdata<-subset(data, data[1]=="1/2/2007" | data[1]=="2/2/2007")
png(file='plot3.png', width=480, height=480)
DateTime<-paste(subdata[,1], subdata[,2], sep=",")
strDateTime<-strptime(DateTime, format="%d/%m/%Y,%H:%M:%S")
plot(strDateTime, subdata$Sub_metering_1, type = "n", ylab="Energy sub metering", xlab="")
lines(strDateTime, subdata$Sub_metering_1)
lines(strDateTime, subdata$Sub_metering_2, col="red")
lines(strDateTime, subdata$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1.5, 1.5, 1.5), col=c("black", "red", "blue"))
dev.off()
