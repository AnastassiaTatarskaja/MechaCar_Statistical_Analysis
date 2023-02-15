# MechaCar_Statistical_Analysis

Hypothesis testing and statistics was used to analyze a series of datasets from the automotive industry using R programming language.

## Overview of the Project

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.


Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Part 1

### Linear Regression to Predict MPG


#### Multiple linear regression model:

![image](https://user-images.githubusercontent.com/107759305/219171538-4aa51aec-10a8-4e4a-8022-650cd1a05bcd.png)

#### Summary statistics:

![image](https://user-images.githubusercontent.com/107759305/219171712-6449c04c-6ce2-4399-bf92-423a1915b74c.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? Is the slope of the linear model considered to be zero? Why or why not? Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

mpg = 6.27*vehicle_length + 0*vehicle_weight + 0.07*spoiler_angle + 3.55*ground_clearance - 3.41*AWD - 104

We can conclude, from this formula that vehicle length and spoiler angle have no, or almost no impact on the mpg of the vehicle. The vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype.

According to the summary output, the r-squared value of the multiple linear
regression model is 0.71, which means that roughly 71% of all mpg predictions
will be correct while using this regression model. The p-value of our linear regression is 5.35e-11, which is much smaller than our assumed significance level of 0.05.This indicates there is sufficient evidence to reject our null hypothesis, which further indicates that the slope of this linear model is not zero. 


## Part 2

### Reading the Suspension Coil dataset

#### Summary statistics:

The suspension coil’s PSI continuous variable across all manufacturing lots. The following PSI metrics for each lot: mean, median, variance, and standard deviation.
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![image](https://user-images.githubusercontent.com/107759305/219172144-3566da32-88fc-4425-bfe5-79d8e40da6f5.png)

Considering the entire population of the production lot, the variance of the coils of 62.29 PSI is within the 100 PSI variance requirement.

![image](https://user-images.githubusercontent.com/107759305/219172240-fe1a0d63-f587-4669-8490-6e01b8a6041e.png)

When we inspect Lot 1 and Lot 2 they are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively. However, Lot 3 has much larger variance in performance and consistency, with a variance of 170.29. Lot 3 disproportionately causes the variance at the full lot level.


## Part 3

### T-Tests on Suspension Coils

Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

The true mean of the sample is 1498.78, which we saw in the summary statistics above. With a p-Value of 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. The mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

![image](https://user-images.githubusercontent.com/107759305/219172485-356d52d5-6955-48d6-9506-f20a27f9e9e7.png)

Lot 1 sample has the true sample mean of 1500. Since p-Value is 1, we cannot reject (i.e. accept) the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).

![image](https://user-images.githubusercontent.com/107759305/219172708-4193f5fd-7727-4370-8c92-39ac51fb151d.png)

Lot 2 has the same outcome with a sample mean of 1500.02, a p-Value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.

![image](https://user-images.githubusercontent.com/107759305/219172857-a9aa2eaa-da54-4853-8b3c-bf471bba0885.png)

However, Lot 3, results are different. The sample mean of Lot 3 is 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05. This data indicates to reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.
Lot 3's production cycle needs to be reviewed. It needs to be checked for system fails and the suspension coils from this lot need to be inspected to remove those not meeting quality criteria.

## Part 4

### Design a Study Comparing the MechaCar to the Competition

Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers using R.

The study would involve collecting data on MechaCar and its comparable models across several different manufacturers over the last 5 years.
- What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?

Metrics

Collecting data for comparable models across all major manufacturers for past 5 years for the following metrics:
- Current Price (Selling): Dependent Variable
- Drive Package : Independent Variable
- Engine (Electric, Hybrid, Gasoline / Conventional): Independent Variable
- Safety Feature Rating: Independent Variable
- Average Annual Cost of ownership (Maintenance): Independent Variable
- Resale Value: Independent Variable
- MPG (Gasoline Efficiency): Independent Variable

Hypothesis: Null and Alternative

After determining which factors are key for the MechaCar's genre:
- Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.
- Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.

Statistical Tests

In this study, a multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price.






