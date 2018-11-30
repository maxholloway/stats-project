#     i_v)
#     Hypothesis Tests for Proportions
i_v_p <- 0.67562712
i_v_po <- 0.675
i_v_n <- 22502
i_v_z <- (i_v_p - i_v_po)/(sqrt(0.219/i_v_n))
i_v_z
#          A two tailed pval with confidence level of 0.95 is 0.8417.
#          Hence we fail to reject the null hypothesis





#     i_vb
#     Hypothesis Test for Proportions 
sqf2015friskednoid = sqf2015$frisked[sqf2015$typeofid=="REFUSED"]
sqf2015friskedid = sqf2015$frisked[sqf2015$typeofid!="REFUSED"]
t.test(x=sqf2015friskedid,
       y=sqf2015friskednoid,
       alternative = "two.sided",
       mu=0, paired = FALSE,
       var.equal = TRUE,
       conf.level = 0.95)
#          With a tval of -3.5781 and 22500 degrees of freedom, we generate a pval of 0.0003469
#          This generates a 95 percent confidence interval of: 0.03039181 to 0.10402569
#          A pval of 0.0003469 is enough to pass an alpha value of 0.05 and hence we reject the null hypothesis and accept the alternative hypothesis 





#     ii_v
#     T Test Analysis
t.test(sqf2010$arstmade,
       sqf2010$contrabn,
       alternative = "two.sided",
       mu = 0, paired = TRUE,
       var.equal = TRUE,
       conf.level = 0.95)
#          Here we are given a t test of the difference of two binary variables (arstmade and contrabn)
#          We use a two sided test with confidence level of 95 percent and a degrees of freedom of 601280
#          We then achieve a t value of 165.04 and a p value of 2.2e-16
#          This correlates to a 95 percent confidence interval of: 0.04826533 to 0.04942545
#          The outputted sample mean of the differences is 0.04884539
#          The implications of this sample mean of differences is that for the sample calculated
#               the majority of stops resulted in no contraban or arrest with a slight skew towards an arrest made without contraban
#          A pval that small also implies that the null hypothesis of both binary variables being equal (hence correlated) is rejected





