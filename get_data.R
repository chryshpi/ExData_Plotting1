## URL of source data
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## Download data (zip file).
fileName <- "exsourcedata.zip"   ## name of destination file
if (!file.exists(fileName)) {
    download.file(fileUrl, fileName, method = "curl")
}

## Unzip the file.
unzip(fileName, files = NULL, exdir = ".")

## Delete zip file
## file.remove(fileName)

## Read data from file
dat <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                  na.strings = "?", colClasses = c("character", "character", 
                                                   "numeric","numeric",
                                                   "numeric","numeric",
                                                   "numeric","numeric",
                                                   "numeric"))

## Format date
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")

## Select data from the dates 2007-02-01 and 2007-02-02
dat <- subset(dat,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Remove incomplete observations
dat <- dat[complete.cases(dat), ]

## Combine Date and Time
datetime <- paste(dat$Date, dat$Time)

## Format dateTime
datetime <- as.POSIXct(datetime)

## Remove Date and Time columns
dat <- dat[, !(names(dat) %in% c("Date", "Time"))]

## Add DateTime column
dat <- cbind(datetime, dat)




