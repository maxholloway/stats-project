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


# ii
t.test(sqf2010$perobs[sqf2010$sex=="M"],
       sqf2010$perobs[sqf2010$sex=="F"],
       alternative="two.sided",
       mu=0, paired=FALSE, var.equal=TRUE,
       conf.level=0.95)
## Answer to questions on part ii ##
# H_0: mu = 0, H_1: mu != 0;
# null value = 0;
# significance level = 95%
# we reject the null hypothesis with 95% confidence,
# because the 95% confidence interval does not contain 0;
# the p-value is 9.6*10^-8, which is much less than 0.05, so
# we are very confident that the population means are not the same.
# the confidence interval is -0.19925487 < difference of means < -0.09217391;
# this means that we can say with 95% confidence that the difference
# of means is != 0, meaning that one population has a larger population
# than another population with 95% confidence.