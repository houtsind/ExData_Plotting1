# loading data 
table<-read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE)
table3<-subset(table,table$Date=='1/2/2007')
table4<-subset(table,table$Date=='2/2/2007')
table5<-rbind(table3,table4)

# plot 4
png(filename="plot4.png", width=480, height=480, units="px", pointsize = 12)

par(mfrow=c(2,2))
# 1st graph
plot(cdateTime,plot2Y,type="l", xlab="", ylab="Global Active Power")

# 2nd graph
plot(cdateTime,table5$Voltage, xlab="datetime", ylab="Voltage", type="l")

# 3rd graph
plot(cdateTime,table5$Sub_metering_1,type="l",col="black", ylab="Energy sub metering", xlab="")
lines(cdateTime,table5$Sub_metering_2,type="l",col="red")
lines(cdateTime,table5$Sub_metering_3,type="l",col="blue")
legend("topright", bty="n", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# 4th graph
plot(cdateTime,table5$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

dev.off()