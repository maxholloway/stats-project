# Part B, problem iii
# 
# download.file('http://math.hmc.edu/m35f/2010_sqf_m35.csv',
#               '2010_sqf_m35.csv')
# download.file('http://math.hmc.edu/m35f/2015_sqf_m35.csv',
#               '2015_sqf_m35.csv')
# sqf2010 <- read.csv("2010_sqf_m35.csv")
# sqf2015 <- read.csv("2015_sqf_m35.csv")
# 
# sqf2015 = sqf2015[!sqf2015$perstop=="**"
#                   & !sqf2015$perstop==" ",]
# sqf2015$perstop = as.numeric(as.character(sqf2015$perstop))
# 
# sqf2010 <- subset(sqf2010, sqf2010$weight > 50 & sqf2010$weight < 400)
# sqf2010 <- subset(sqf2010, sqf2010$age < 100)

# Problem iii
sqf2010.c <- sqf2010[sqf2010$contrabn==1, ]
x1 <- sum(sqf2010.c$arstmade)
n1 <- length(sqf2010.c$arstmade)

sqf2010.nc <- sqf2010[sqf2010$contrabn==0, ]
x2 <- sum(sqf2010.nc$arstmade)
n2 <- length(sqf2010.nc$arstmade)

prop.test(x=c(x1, x2), n=c(n1, n2), alternative="two.sided",
          conf.level=0.95)

## Answers to questions ##

# The proportion of people carrying contraban that were arrested 
# is 0.84104145; the proportion of people who were not carrying
# contraban that were arrested is 0.05301302; H_0: p1 = p2;
# H_1: p1 != p2; the p-value is 2.2*10^-16, showing that is 
# extremely unlikely that the proportions are the same (we reject
# the null hypothesis that claims the proportions are the same).
