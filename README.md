# MechaCar_Statistical_Analysis

This project employs R to perform a statistical analysis on a dataset that contains information about different automobiles.

## Linear Regression to Predict MPG

![MPG_Liner_Regression](/Images/MPG_Linear_Regression.png)

According to the results of the multiple linear regression, the variables which provide a non-random amount of variance to the MPG are the Vehicle Length and the Ground Clearance.

The slope of the linear model wouldn't be considered zero since the coefficients from the linear regression show a positive slope for the vehicle length and ground clearance.

This linear model is not enough to predict the MPG of MechaCar autos. The intercept also provied a significant non-random variance to the linear model, this means that either our Vehicle Length and Ground Clearance need scaling or there are some other significant variables that are being not considered in the analysis.

## Summary Statistics on Suspension Coils

![Coils_Summary_Statistics](/Images/Coil_Summary_Statistics.png)

According to the internal regulations of MechaCar, the Variance for the coils must not exceed 100 PSI. 

The summary statistics for all 3 lots combined do fulfill the manufacturing requirements of a variance below 100. 

Analyzing the coils per manufacturing lot show that both lot 1 and 2 are compliant with the requirements, however lot 3 has a variance of 170, which does not meet the manufacturing requirement.

## T-Tests on Suspension Coils  

![T-Test_For_All_lots](/Images/tTest_All_Lots.png)

This T.test was done for the coils produced across all lots. The resulting p-value is equal to 1, which means that the null hypothesis can't be rejected. This means that there is no statistical difference between the observed sample mean and its presumed population mean.

### T-Test for Lot 1

![T-Test_Lot_1](/Images/tTest_Lot_1.png)

The T-test for lot 1 results in a p-value of 1.568e-11, this is many times smaller than the significance level of 0.05. 

According to this significance level, the null hypothesis is rejected and it's assumed that there is a statistical difference between the observed sample mean and the lot 1 mean.

### T-Test for Lot 2

![T-Test_Lot_2](/Images/tTest_Lot_2.png)

The T-test for lot 2 results in a p-value of 0.0005911, this is smaller than the significance level of 0.05. 

According to this significance level, the null hypothesis is rejected and it's assumed that there is a statistical difference between the observed sample mean and the lot 2 mean.

### T-Test for Lot 3

![T-Test_Lot_3](/Images/tTest_Lot_3.png)

The T-test for lot 3 results in a p-value of 0.1589, this is higher than the significance level of 0.05. 

According to this significance level, the null hypothesis is not rejected and it's assumed that there is no statistical difference between the observed sample mean and the lot 3 mean.

## Study Design: MechaCar vs Competition

This study is focused on comparing the reliability of MechaCar automobiles with that of their competition by comparing the expense and frequency time of maintenance performed on MechaCar cars and those from other manufacturers.

The hypothesis for this study is the following, cars manufactured by MechaCar automobiles require on average 30% less maintenance in terms of frequency and cost than those from the other manufacturers.

In order to eliminate some regional differences, the sample data will be extracted from the same city so that conditions such as weather, roads and fuel quality remain constant through the dataset and will not require a more in-depth consideration.

The data for this study will be the price of the parts (continuous data) and the frequency at which car owners take their cars to maintenance (interval) for both MechaCar and the competition

Since both of these variables are numerical, a multiple linear regression could be used to estimate the total expense for the owners. 

Moreover, since this information would be categorized between MechaCar and others, it would be possible to use a two-sample t-Test to study the difference in reliability.

Through this study it would be possible to quantify the reliability of MechaCar automobiles and adjust the business plan according to it, be it marketing campaing or offering a better warranty.