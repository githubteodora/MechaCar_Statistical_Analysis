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

