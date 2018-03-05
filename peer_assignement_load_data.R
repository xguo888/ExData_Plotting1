# Load the file
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile ="power_consumption")
unzip("power_consumption")
mydata<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric'))
 head(mydata)
 
 # Format date
 mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")
 
 
 #Filter Data file from 01-02-2007 to 02-02-2007
 mydata<-subset(mydata, Date>=as.Date("2007-2-1") & Date<=as.Date("2007-2-2"))
 
 #remove incomplete cases
 mydata<-mydata[complete.cases(mydata),]
 
 #combine date and time
 Datetime<-paste(mydata$Date, mydata$Time)
 
 #remove Date and Time columns
 mydata<-mydata[,!(names(mydata) %in% c("Date", "Time"))]
 
 #Add DateTime column
 mydata<-cbind(Datetime,mydata)
 
 #Format dattime column
 mydata$Datetime<-as.POSIXct(Datetime)