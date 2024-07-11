
# Murder Analysis of India (2015-2021)

This is the project for my bachelors final year dissertation. This project provides a deep dive into the murder patterns in India from 2015-2021.



![alt text](https://github.com/haverstein/Murder-Analysis-India/blob/main/Visualizations/murder_front_page.jpg)


## Acknowledgements

 - [Paper on Murder Motives](https://www.crimeandjustice.org.uk/sites/crimeandjustice.org.uk/files/09627250608553401.pdf)
 - [Inequality produes higher crime rates](https://www.nature.com/articles/s41598-020-80897-8)
 - [Literacy and Violence](https://link.springer.com/article/10.1007/BF01466315)

## Project Intro

This project looks at the overall murder counts and their trends from 2015-2021. In addition to that it gets deeper into the penetration of murder in the six administrative blocks of India. Moreover it provides a detailed study on the motives of murder throughout the time period and its variations through space. Additionally it takes a brief look at the major socio economic factors affecting murder.

#### Methods Used:

* Descriptive Statistics
* Inferential Statistics
* Trend Analysis
* Linear Regression and Regularization
* Predictive Modelling
* Clustering

#### Technologies:

- R
- Python
- Tableau




## Project Description

This project aims to understand the socio-economic factors influencing murder rates and motives across different regions of India. By analyzing various socio-economic indicators, we seek to build models that can predict murder patterns and identify key factors contributing to different motives behind murders.

### Data Sources
Crime Data: National Crime Records Bureau (NCRB) reports for murder counts categorized by motives (Love, Loath, Greed).
Socio-Economic Data: Government databases and reports from 2016-2021, including:
- Poverty rates
- Unemployment rates
- Homeless population
- Urbanization rates
- Population density
- Net State Domestic Product (NSDP) per capita
- Literacy rates
- Alcohol consumption rates
- Sex ratio
### Research Questions and Hypotheses
1. Correlation between Socio-Economic Factors and Murder Rates:

- Hypothesis: Higher poverty and unemployment rates are positively correlated with higher murder rates.
- Hypothesis: Higher urbanization and population density may lead to increased murder rates due to social stress and economic disparities.
- Hypothesis: Higher literacy rates and NSDP per capita are associated with lower murder rates.
2. Motives for Murder:

- Hypothesis: Different socio-economic factors influence the motives behind murders (e.g., love-related murders may correlate with higher urbanization and lower literacy rates).
### Data Analysis and Visualization Techniques
#### Exploratory Data Analysis (EDA):

- Descriptive statistics and density plots to understand the distribution of socio-economic factors.
- Heatmaps to visualize the correlation between variables and murder motives.
#### Spatial Clustering:

K-Means clustering to group states based on socio-economic factors and murder rates.
Visualization of clusters on the Indian map to identify regional patterns.

#### Correlation Analysis:

Spearman correlation to determine the strength and direction of relationships between socio-economic factors and murder rates/motives.
Heatmap of p-values to identify statistically significant correlations.

#### Regression Modeling:

Linear regression models to predict murder rates based on socio-economic factors.
Multivariate regression to assess the combined effect of multiple factors on murder motives.

#### Further Modeling:

Used various models like ElasticNet Regression, Random Forest Regression, Gradient Boosting and SVR to model the data.
Used cross validation methods and grid search for getting the values of the hyper parameters.
Compared those model on various metrics like RMSE, RMAE, R<sup>2</sup> to get the best model.

#### Structural Equation Modeling:

Structural Equation Modeling was used to structure the complex behavior and the dependence of the various factors on the different motives of murder. A report is also generated which can be found on the code file.


### Challenges and Blockers

- #### Data Quality and Availability:

Inconsistent data across different years and regions.
Missing data for certain states or variables.
- #### Multicollinearity:

High correlation between some socio-economic factors (e.g., poverty and unemployment) can complicate regression analysis.
- #### Regional Variations:

Socio-economic and cultural differences across regions require careful interpretation of results and may necessitate region-specific models.
- #### Complexity of Murder Motives:

Murder motives are influenced by a complex interplay of socio-economic, psychological, and cultural factors, making it challenging to build comprehensive models.


## Needs of this project

- Data Collection 
- Exploratory Data Analysis
- Data Cleaning and Feature Engineering
- Data Transformation
- Modelling
- Reporting and Presentation



