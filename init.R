#- Using custom-defined types to read in characters as DateTime data type
# setClass('myDateTime')
# setAs("character", "myDateTime", function(from) as.Date(from, format = "%d/%m/%Y %H:%M:%S"))

#- Data file is assumed to be available at 'data/household_power_consumption.txt'
#- Reading large tables into R (http://www.biostat.jhsph.edu/~rpeng/docs/R-large-tables.html)
data <- read.table(file = "data/household_power_consumption.txt", 
                   sep = ";", na.strings = "?", header = TRUE,
                   colClasses = c("character", "character", rep("numeric", 7)))

#- Retain records for days, 2007-Feb-01 and 2007-Feb-02
data <- data[grep("^[12]/2/2007", data$Date), ]

#- Add a "DateTime" field
data <- within(data, DateTime <- as.POSIXlt(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))
