# Plot 1
par("mar")
# if results like [1]5.1 4.1 4.1 2.1
par(mar=c(1,1,1,1))
hist(mydata$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

#save file and close device
png(filename = "plot1.png", width = 480, height = 480)
dev.copy(png, width=480, height=480)
dev.off()