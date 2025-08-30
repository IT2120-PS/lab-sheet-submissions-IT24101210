setwd("C://Users//LENOVO//Desktop//IT24101210")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
str(Delivery_Times)

breaks <- seq(20, 70, by = 5)

hist(Delivery_Times$Delivery,
     breaks = breaks,
     right = FALSE,                     
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     col = "lightblue",
     border = "black")


freq <- hist(Delivery_Times$Delivery, breaks = breaks, right = FALSE, plot = FALSE)
cumfreq <- cumsum(freq$counts)
plot(breaks[-1], cumfreq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     col = "red", pch = 16)