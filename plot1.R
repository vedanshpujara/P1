

#reading original dataset
data_one<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",nrows=207529,check.names=FALSE,stringsAsFactors=FALSE,comment.char="",quote='\"')
#subsetting the read dataset
data1<-subset(data_one,Date %in% c("1/2/2007","2/2/2007"))
data1$Date<-as.Date(data1$Date,format="%d%/%m/%Y")
#making histogram
hist(data1$Global_active_power, main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red")
#saving it to working directory
png(file="plot1.png",width=480,height=480)
dev.off()
