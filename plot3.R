#- Initialize by loading dataset
source("init.R")

#- generate graphics
png(filename = "plot3.png", width = 480, height = 480)

plot(data$DateTime, data$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
points(data$DateTime, data$Sub_metering_2, type="l", col = "red")
points(data$DateTime, data$Sub_metering_3, type="l", col = "blue")

legend("topright", 
       col = c("black", "red", "blue"), 
       lty = 1,
       legend = names(data)[7:9])

dev.off()
