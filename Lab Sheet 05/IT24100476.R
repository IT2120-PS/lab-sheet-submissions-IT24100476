getwd()
setwd("C:\\Users\\USER\\Desktop\\IT24100476")
getwd()


Delivery_Times <- read.table("Exercise - Lab 05 .txt", header = FALSE)
colnames(Delivery_Times) <- c("Delivery_Time_minutes")

Delivery_Times$Delivery_Time_minutes <- as.numeric(as.character(Delivery_Times$Delivery_Time_minutes))


breaks <- seq(20, 70, length.out = 10)


hist(Delivery_Times$Delivery_Time_minutes, breaks = breaks, right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")

# Cumulative frequency polygon
freq <- hist(Delivery_Times$Delivery_Time_minutes, breaks = breaks, plot = FALSE, right = FALSE)$counts
cum_freq <- cumsum(freq)
class_bounds <- breaks[-1]
plot(class_bounds, cum_freq, type = "b", pch = 19,
     main = "Cumulative Frequency Polygon",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")


