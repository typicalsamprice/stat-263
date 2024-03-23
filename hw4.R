library(ggplot2)

# Problem 1
hrs = c(1, 0, 3, 1.5, 2.75, 1, 0.5, 2)
scores = c(78, 75, 90, 89, 97, 85, 81, 80)

t = table(scores, hrs)
# a) yHat = -8.1 + 0.1X
L = lm(scores ~ hrs)
cor(t)
# b) This ^^^^
# c) Yes, it is strong. 1 > 0.78 > .5
# d)
plot(hrs, scores, ylab = "scores", xlab = "hours")
abline(L, col = "red")
# Prediction value for hours studied
x = 4
coefficients(L)[1][] + x * coefficients(L)[2][]

# Problem 2
yrs = c(1980, 1990, 1997, 2000, 2005, 2011)
pop = c(4400, 5100, 5852, 6080, 6450, 7000)

# a) pop = -163766 + 84.91 * years
L2 = lm(pop ~ yrs)
T2 = table(pop, yrs)
# b)
cor(pop, yrs)
# Very correlated yeasss
# d)
plot(yrs, pop, xlab = "year", ylab = "population")
abline(L2, col = "red")
# e) Prediction
x2 = 2015
coefficients(L2)[1][] + x2 * coefficients(L2)[2][]

# Problem 3
data("Loblolly")
# a) There are 3 variables,
# with units (presumably) Feet, Years, Max Height
attach(Loblolly)
# b)
plot(age, height)
L3 = lm(height~age)
# c)
abline(L3, col = "red")
# d)
cor(age, height)
# e) PREDICTION
coefficients(L3)[1] + 12 * coef(L3)[2]




