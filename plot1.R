library(dplyr)
mytable<-read.table("household_power_consumption.txt",sep=";")
names(mytable)<-c("Date","Time","GApower","GRpower","Voltage","Gintensity","s_m1","s_m2","s_m3")
mytable1<-subset(mytable,Date=="1/2/2007" | Date == "2/2/2007")
hist(as.numeric(as.character(mytable1$GApower)), main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "Red")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
