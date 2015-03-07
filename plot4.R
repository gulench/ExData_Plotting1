#- Initialize by loading dataset
source("init.R")

#- generate graphics
png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

with(data, {
     plot(DateTime, Global_active_power, type="l", ylab = "Global Active Power", xlab = "")
     
     plot(DateTime, Voltage, type="l", xlab = "datetime")
     
     plot(data$DateTime, data$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
     points(data$DateTime, data$Sub_metering_2, type="l", col = "red")
     points(data$DateTime, data$Sub_metering_3, type="l", col = "blue")
     legend("topright", 
            col = c("black", "red", "blue"), 
            lty = 1,
            bty = "n",
            legend = names(data)[7:9])
     
     plot(DateTime, Global_reactive_power, type="l", xlab="datetime")
     })

dev.off()
