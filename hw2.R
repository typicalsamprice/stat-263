ages = read.csv("MarriageAges.csv") #1
dim(ages)

plot(ages$Wife, ages$Husband) #2
lines(ages$Wife, ages$Husband) #3
summary(ages) #4

first6 = head(ages, 6)
first6 #5

last6 = tail(ages, 6)
last6 #6


# End of Problem 1

rlgh = c(40.5, 42.2, 49.2, 59.5, 67.4, 74.4, 77.5, 76.5, 70.6, 60.2, 50.0, 41.2)
minn = c(12.2, 16.5, 28.3, 45.1, 57.1, 66.9, 71.9, 70.2, 60.0, 50.0, 32.4, 18.6)
phnx = c(52.1, 55.1, 59.7, 67.7, 76.3, 84.6, 91.2, 89.1, 83.8, 72.2, 59.8, 52.5)
months = c("Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec")
temps = data.frame(
  Raleigh = rlgh,
  Minneapolis = minn,
  Pheonix = phnx
  )
rownames(temps) = months
dim(temps) # 1
temps

#2
plot(temps$Pheonix, ylim = c(0, 90), pch = 16, col = "red", ylab = "Temperature", xlab = "Month", xaxt = "n")
points(temps$Minneapolis, col = "blue", pch = 16)
points(temps$Raleigh, col = "green", pch = 16)
axis(1, at = 1:12, labels = months)
legend(x = "topleft",
       legend = c("Pheonix", "Minneapolis", "Raleigh"),
       col = 1:3,
       pch = 16,
       text.width = 1.2
       )

#3
lines(temps$Pheonix, col = "red")
lines(temps$Minneapolis, col = "blue")
lines(temps$Raleigh, col = "green")

#4
summary(temps$Pheonix)
summary(temps$Raleigh)
summary(temps$Minneapolis)
