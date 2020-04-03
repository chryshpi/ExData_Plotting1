## Load get_data.R
source("get_data.R")

## Scatterplot of Global Active Power
with(dat, plot(datetime, Global_active_power, type = "l",
               main = " ", 
               xlab = " ", ylab = "Global Active Power (kilowatts)"))

## Save as plot2.png
dev.copy(png, file = "plot2.png")
dev.off()