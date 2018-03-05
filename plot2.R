# create plot 2
plot(mydata$Global_active_power~mydata$Datetime, type = "1", ylab="Global Active Power (kilowatts)", xlab="")

#save png file and close device
dev.copy(png, "plot2.png", width=480, height=480)

#close device
dev.off()