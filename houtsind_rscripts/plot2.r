# loading data 
table<-read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE)
table3<-subset(table,table$Date=='1/2/2007')
table4<-subset(table,table$Date=='2/2/2007')
table5<-rbind(table3,table4)

# plot2
png(filename="plot2.png", width=480, height=480, units="px", pointsize = 12)

plot2Y <- table5$Global_active_power
dateTime<-paste(table5$Date, table5$Time)
cdateTime<-strptime(dateTime, format="%d/%m/%Y %H:%M:%S")
plot(cdateTime,plot2Y,type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()
