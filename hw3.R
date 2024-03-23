library(ggplot2)
library(MASS)
data("UScereal")
attach(UScereal)
names(UScereal)

ggplot(UScereal, aes(mfr, shelf))+ geom_point() + labs(x = "mfr", y = "fat")
ggplot(UScereal, aes(fat, vitamins)) + geom_point() + labs(x = "fat", y = "vitamins")
ggplot(UScereal, aes(fat, shelf)) + geom_point() + labs(x = "fat", y = "shelf")
ggplot(UScereal, aes(carbo, sugars)) + geom_point() + labs(x = "carbs", y = "sugar")
ggplot(UScereal, aes(fibre, mfr)) + geom_point() + labs(x = "fiber", y = "mfr")
ggplot(UScereal, aes(sodium, sugars)) + geom_point() + labs(x = "sodium", y = "sugar")

# Yes, I am sure there are more relationships I could investigate.
# I will not do it however, since it would just be switch some variables above with next to no technical work.

data(mammals)
attach(mammals)
crs = cor(mammals)
l_brain = mapply(log, brain)
l_body = mapply(log, body)
plot(brain, body)
plot(l_brain, l_body)
# It seems to be logarithmically linear.That means exponential though, so definitely not originally linear 


data(mtcars)
attach(mtcars)
names(mtcars) # Names
max(mpg)
mtcars[mpg == max(mpg),] # My car, Toyota Corolla
head(mtcars, 5)
mtcars[c("Valiant"),1]
mtcars[c("Merc 450SLC"), ]
ggplot(mtcars, aes(cyl, mpg)) + geom_point() + labs(x = "cylinders", y = "miles per gallon")

q1 = c(3, 3, 3, 4, 3, 4, 3, 4, 3, 4)
q2 = c(5, 2, 5, 5, 2, 2, 5, 5, 4, 2)
q3 = c(1, 3, 1, 1, 1, 3, 1, 1, 1, 1)

q1t = table(q1)
q2t = table(q2)
barplot(table(q2, q3))


