# rename MechaCarChallenge.RScript
# mpg = miles per gallon
# AWD = All wheel drive
# PSI = pound per square inch

library(GGally) #a very cool library for visualizing correlation and distribution
library(dplyr)

cars_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
ggpairs(cars_table) # a cool tool that visualizes correlation coeff.

multiple_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, cars_table)
summary(multiple_reg)

# Outputs Explained

# resuduals: Normally it gives a basic idea about difference between the observed value of the dependent variable (Y) and the predicted value (X), 
# it gives specific detail i.e. minimum, first quarter, median, third quarter and max value; 
# When assessing how well the model fit the data, you should look for a symmetrical distribution across these points on the mean value zero (0)

# Coefficient-Estimate: This is a one unit increase in X then expected change in Y;
# in our case, y = mpg , x are the rest of the columns

# Coefficient-Std. Error: The standard deviation of an estimate is called the standard error. The standard error of the coefficient measures how precisely the model estimates the coefficient's unknown value. The standard error of the coefficient is always positive.
# We'd ideally want a lower number relative to its coefficients. Also used for checking confidence interval;
# The Standard Errors can also be used to compute confidence intervals and to statistically test the hypothesis of the existence of a relationship

# Coefficient-t value: t value = estimate/std error
# The coefficient t-value is a measure of how many standard deviations our coefficient estimate is far away from 0;
# We want it to be far away from zero as this would indicate we could reject the null hypothesis - that is, we could declare a relationship between x and y exists;
# it is used to calculate p value;

# Coefficient Pr(>|t|): the probability of observing any value equal or larger than t;
# A small p-value indicates that it is unlikely we will observe a relationship between the predictor x and response y variables due to chance;
# Typically, a p-value of 5% or less is a good cut-off point.
# Asterisks mark aside p value define significance of value;
# Note the 'signif. Codes' associated to each estimate. Three stars (or asterisks) represent a highly significant p-value. Consequently, a small p-value for the intercept and the slope indicates that we can reject the null hypothesis which allows us to conclude that there is a relationship between speed and distance.

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_table %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), var_PSI=var(PSI), STDEV_PSI=sd(PSI))
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), variance_PSI=var(PSI), STDEV_PSI=sd(PSI), .groups = 'keep')

# T tests: 
# a T test  is a type of inferential statistic used to study if there is a statistical difference between two groups.
# Mathematically, it establishes the problem by assuming that the means of the two distributions are equal (H???: µ???=µ???). If the t-test rejects the null hypothesis (H???: µ???=µ???), it indicates that the groups are highly probably different.
# This test should be implemented when the groups have 20-30 samples
# If we want to examine more groups or larger sample sizes, there are other tests more accurate than t-tests such as z-test, chi-square test or f-test.

# p-values: The p-value or probability value is the probability of obtaining test results at least as extreme as the results actually observed during the test, assuming that the null hypothesis is correct.
# p_value > ??? (Critical value): Fail to reject the null hypothesis of the statistical test.
# p_value ??? ??? (Critical value): Reject the null hypothesis of the statistical test.

# The critical value that most statisticians choose is ??? = 0.05. This 0.05 means that, if we run the experiment 100 times, 5% of the times we will be able to reject the null hypothesis and 95% we will not.
# p_value > 0.1: No evidence
# p_value between 0.05 and 0.1: Weak evidence
# p_value between 0.01 and 0.05: Evidence
# p_value between 0.001 and 0.01: Strong evidence
# p_value < 0.001: Very strong evidence

t.test(suspension_table$PSI, mu=1500)
t.test(subset(suspension_table, Manufacturing_Lot == "Lot1")$PSI, mu= 1500)
t.test(subset(suspension_table, Manufacturing_Lot == "Lot2")$PSI, mu= 1500)
t.test(subset(suspension_table, Manufacturing_Lot == "Lot3")$PSI, mu= 1500)


