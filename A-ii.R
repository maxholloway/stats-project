# Solutions to problem i of Part A of the project (Max Holloway)
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

# ii

bhair <- subset(sqf2015, sqf2015$haircolr == "BLACK") # people with black hair
pstop <- bhair$perstop # period of stop for people with black hair
mu <- 7.9
n <- length(pstop)
xbar <- mean(pstop) # sample mean
sdp <- sd(pstop) # point estimate for standard deviation of population
z <- (xbar-mu)/(sdp/sqrt(n)) # z-score for mu being the true average of the population

# Hypothesis: xbar = mu
# H_0: xbar = mu; H_1: xbar != mu
CV <- 1.96 # critical value for 95% confidence on two-tailed test

# z is 3.178582, which is greater than CV. We can reject the null
# hypothesis that xbar = mu with 95% confidence.

pvalue <- pnorm(3.178582, lower.tail=FALSE) # this is less than 5%

# Hypothesis: xbar > mu
# H_0: xbar <= mu; H_1: xbar > mu
CV <- 1.645 # critical value for 95% confidence on a right-tailed test

# z is 3.178582, which is greater than CV. We can reject the null
# hypothesis that xbar <= mu, thus supporting the hypothesis that
# xbar > mu.






