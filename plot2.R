#- Initialize by loading dataset
source("init.R")

#- generate graphics
png(filename = "plot2.png", width = 480, height = 480)

plot(data$DateTime, data$Global_active_power, 
     type="l", 
     ylab = "Global Active Power (kilowatts)", 
     xlab = "")

dev.off()
