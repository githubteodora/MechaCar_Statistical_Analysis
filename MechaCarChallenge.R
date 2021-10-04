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

