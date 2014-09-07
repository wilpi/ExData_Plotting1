consumo <- read.csv("./household_power_consumption.txt",sep=";",
                    na.strings='?',
                    header=TRUE,
                    colClasses = c("character",rep("factor",1),rep("numeric",7)))
sub_consumo<-consumo[consumo$Date %in% c("1/2/2007","2/2/2007"),]

plot(strptime(paste(sub_consumo$Date,sub_consumo$Time),"%d/%m/%Y %H:%M:%S"),
     sub_consumo$Global_active_power,
     ylab="Global Active Power (kilowatts)",
     xlab="",type="l")
dev.copy(png, file = "plot2.png")
dev.off() ## close PNG device

