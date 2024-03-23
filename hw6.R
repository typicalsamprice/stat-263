# READ THIS BALA:
# "lessR" FAILED TO COMPILE ON MY MACHINE
# CANNOT ACTUALLY USE IT, BUT CORRECT USAGE
# WHERE APPROPRIATE *IS* NOTED, ALTHOUGH NOT
# EXECUTED IN THIS HOMEWORK.
library(lessR)


###### PROBLEM 1 ######
nbadat = read.table(file = "NBAPlayers2011.csv", header = T, sep = ",")

# a) We try reading the column labels as data, which is unwanted
# b) There are 26 columns, and 176 rows. # of vars is same as # of cols.

dat1 = subset(nbadat, select = c(Player, Age, Points, pointspergame))
# c) There are still 176 rows, as the # of players did not change.
# d)
dat2 = dat1[dat1$Age == 24,]
# e) This linear relationship is positive. i.e., more points translates
# consistently to a higher ave points per game.
cor(dat1$Points, dat1$pointspergame)
plot(dat1$Points, dat1$pointspergame)
# f) Would normally be ss(Points, by = Age, data = dat1)
summary(dat1)
# g)
dat1[18:53,]
# h) Less correlated, younger (?) players must be more volatile
# AKA less consistent. Meaning they can have decent number of points
# but ave ppg lower since they have played less? Not an analyst.
cor(dat2$Points, dat2$pointspergame)

###### PROBLEM 2 ######
library(Lock5Data) # We need to install this first
                   # It is NOT part of base R. Shame.
icud = ICUAdmissions
# a) 200 rows, 21 vars/cols
# b) Still 200 rows. THAT WILL NOT CHANGE FROM A COLUMN SUBSETTING.
isub = subset(icud, select = c(ID, Systolic, Cancer, HeartRate))

# c)
icu2 = isub[1:50,]
# d)
icu2[10:25,]
# e) Normally: ss(Systolic, by = Cancer, data = isub)
summary(isub)
# f) Normally: ss(HeartRate, by = Cancer, data = subset(icu2, Cancer = 0))
summary(icu2[icu2$Cancer == 0,])
# g) Almost identical, just replace 0 with 1
summary(icu2[icu2$Cancer == 1,])

###### PROBLEM 3 ######
mm = read.csv("M&MData.csv")
bag10 = mm[10, setdiff(names(mm), c("Bag", "Weight"))]
bag10v = as.numeric(bag10[1,])
bag10df = data.frame(group = colnames(bag10), values = bag10v)
# a)
library(ggplot2)
ggplot(bag10df, aes(x = "", y = values, fill = group)) + geom_col() + coord_polar("y")

# b) There are 6 bags, length(row.names(mdat1)) 
mdat1 = mm[mm$Weight == 48.72,setdiff(names(mm), c("Bag", "Weight"))]

# c) I observe that the proportions aren't really the same, like 
# for Brown/Yellow they are mostly high, but Blue/Orange is all
# over the place.

