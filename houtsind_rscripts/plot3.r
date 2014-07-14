# loading data 
table<-read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE)
table3<-subset(table,table$Date=='1/2/2007')
table4<-subset(table,table$Date=='2/2/2007')
table5<-rbind(table3,table4)

# plot 3
png(filename="plot3.png", width=480, height=480, units="px", pointsize = 12)

plot(cdateTime,table5$Sub_metering_1,type="l",col="black", ylab="Energy sub metering", xlab="")
lines(cdateTime,table5$Sub_metering_2,type="l",col="red")
lines(cdateTime,table5$Sub_metering_3,type="l",col="blue")
legend("topright", lty=1, col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()