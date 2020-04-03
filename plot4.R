## Load get_data.R
source("get_data.R")

par(mfrow = c(2,2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

## Scatterplot of Global Active Power
with(dat, plot(datetime, Global_active_power, type = "l",
               main = " ", 
               xlab = " ", ylab = "Global Active Power"))

## Scatterplot of Voltage
with(dat, plot(datetime, Voltage, type = "l",
               main = " ", ylab = "Voltage"))

## Scatterplot of Energy Sub Metering
with(dat, plot(datetime, Sub_metering_1, type = "l",
               main = " ", 
               xlab = " ", ylab = "Energy sub metering"))
with(dat, lines(datetime, Sub_metering_2, col = "red"))
with(dat, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", lty = "solid", bty = "n", y.intersp = 0.5,
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Scatterplot of Global Reactive Power
with(dat, plot(datetime, Global_reactive_power, type = "l", main = " "))

## Save as plot1.png
dev.copy(png, file = "plot4.png")
dev.off()