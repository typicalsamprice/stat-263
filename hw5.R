hrs = c(1,  0,  3,  1.5, NA, 1,  0.5, NA)
tsc = c(78, NA, 90, NA,  97, 85, 81,  80)

hf = c(1, 3, 1, 0.5)
tf = c(78, 90, 85, 81)

# linear regression: 78.186 + 3.864 * (hours)
L = lm(tf ~ hf)

cor(hf, tf) # Cor. Coefficient: ~0.82
# Yes, it is strong because 0.82 is close to 1.

plot(hf, tf, xlab = "Hours", ylab = "Test Score", main = "Scores vs. Hours Studied")
abline(L, col = "red")

hn = c(1,  0,  3,  1.5, 1, 1,  0.5, 1)
tn = c(78, 83, 90, 83,  97, 85, 81,  80)
L2 = lm(tn ~ hn) # 81.82 + 2.488 * (hours)
cor(hn, tn) # No, this model is much worse. 0.35 < 0.82, 
            # nobody should get an 83 with 0 hours studied


# Problem 2
data("airquality")
# Six variables, with units of:
# parts per billion, Langleys, mph
# Fahrenheit, month, day.

attach(airquality)
plot(Ozone, Solar.R)

sum(is.na(airquality)) # 44
sum(is.na(Ozone)) # Concentrated here, since 37 is almost all of 44

for (i in 1:ncol(airquality)) {
  airquality[is.na(airquality[,i]), i] = mean(airquality[,i], na.rm=TRUE)
}

na.omit(airquality)

# Problem 3

library(raw)

par(mfrow=c(1, 2))
hist(COTOR2)
boxplot(COTOR2)


# Problem 4
dat = read.table("data1.csv", header = T, sep = ",")
sum(is.na(dat[1]))

dat2 = na.omit(dat)
write.csv(dat2, 
          file = "data2.csv", eol = "\r\n",
          row.names = F)

meanYear = mean(dat$Year, na.rm = TRUE)
meanVal = mean(dat$Value, na.rm = TRUE)

dat$Year[is.na(Year)] = meanYear
dat$Value[is.na(Value)] = meanVal
dat










