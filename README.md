# MechaCar_Statistical_Analysis

Goals of the analysis: <br>
1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MP <br>
[Source file available from this link.](https://github.com/githubteodora/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv)
![multiple regression, plots](https://github.com/githubteodora/MechaCar_Statistical_Analysis/blob/main/multiple_regression.png) <br>

![multiple regression - output](https://github.com/githubteodora/MechaCar_Statistical_Analysis/blob/main/ROutput.JPG) <br>
Q: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? <br>
A: The vehicle length is the only variable that strongly correlates with a vehicle's miles per gallon result; the ground clearance exhibits a slight correlation to the miles per gallon.  <br>

Q: Is the slope of the linear model considered to be zero? Why or why not? <br>
A: If the slope is 0, this would mean that there is no correlation between the variables and the mpg. We can see that the probability statistic of the intercept is significant, meaning that it is highly unlikely that the values can be random. This allows us to reject the null hypothesis and state that we have enoiugh evidence to conclude that the slope of the lieanr model cannot be 0. <br>

Q: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? <br>
A: This linear model does not predict the mpg of MechaCar prototypes effectively. The significance of the intercept shows that we have not captured all variables that correlate with a vehicle's mpg. More discovery and research is needed in order to identify other variables and produce a more efficient model.

## Summary Statistics on Suspension Coils <br>

Goal - to create a summary statistics table to show:
1. The suspension coil’s PSI continuous variable across all manufacturing lots.
2. The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Output tables:<br>
#### Total summary:<br>
![Total summary](https://github.com/githubteodora/MechaCar_Statistical_Analysis/blob/main/total_summary.JPG) <br>
#### Per Lot Summary:<br>
![Per lot](https://github.com/githubteodora/MechaCar_Statistical_Analysis/blob/main/lot_summary.JPG)

Q: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?<br>
A: If we analyze the total summary table, the variance meets the the requirement of not exceeding 100 pounds per square inch. However, by looking at the per lot summary, it is easily noticeable that the variance for lot 3 is 70% hgher than the maximum allowed one. 

## T-Tests on Suspension Coils

T-test results:<br>
![image](https://github.com/githubteodora/MechaCar_Statistical_Analysis/blob/main/ttests.JPG) <br>

Source table: [csv](https://github.com/githubteodora/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) <br>

### Comparison of all manufacturing lots against mean PSI of the population: T-test result
```
  One Sample t-test

data:  suspension_table$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
```
  Analysis: Working with a criticla value of 0.05, the p-value result above indicates that there is no evidence to reject the null hypothesis, so we can conclude that the mean PSI is not statistically different than the mean value of the population;
  
### Manufacturing lot #1 against the mean PSI of the population: T-test result
```
	One Sample t-test

data:  subset(suspension_table, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
```
  Analysis: Working with a criticla value of 0.05, the p-value result above indicates that there is no evidence to reject the null hypothesis, so we can conclude that the mean PSI for lot 1 is not statistically different than the mean value of the population;
  
### Manufacturing lot #2 against the mean PSI of the population: T-test result
```
	One Sample t-test

data:  subset(suspension_table, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
```
  Analysis: Working with a criticla value of 0.05, the p-value result above indicates that there is no evidence to reject the null hypothesis, so we can conclude that the mean PSI for lot 2 is not statistically different than the mean value of the population;
  
### Manufacturing lot #3 against the mean PSI of the population: T-test result  
```
	One Sample t-test

data:  subset(suspension_table, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
```
  Analysis: Working with a criticla value of 0.05, the p-value result above indicates that there is significant evidence to reject the null hypothesis, so we can conclude that the mean PSI for lot 3 is statistically different than the mean value of the population;
