## Load get_data.R
source("get_data.R")

## Histogram of Global Active Power
hist(dat$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

## Save as plot1.png
dev.copy(png, file = "plot1.png")
dev.off()