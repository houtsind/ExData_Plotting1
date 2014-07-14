# loading data 
table<-read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE)
table3<-subset(table,table$Date=='1/2/2007')
table4<-subset(table,table$Date=='2/2/2007')
table5<-rbind(table3,table4)

# plot1
png(filename="plot1.png", width=480, height=480, units="px", pointsize = 12)

hist(as.numeric(table5$Global_active_power),main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")

dev.off()