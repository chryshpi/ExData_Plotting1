## Load get_data.R
source("get_data.R")

## Scatterplot of Energy Sub Metering
with(dat, plot(datetime, Sub_metering_1, type = "l",
               main = " ", 
               xlab = " ", ylab = "Energy sub metering"))
with(dat, lines(datetime, Sub_metering_2, col = "red"))
with(dat, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", lty = "solid", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Save as plot3.png
dev.copy(png, file = "plot3.png")
dev.off()