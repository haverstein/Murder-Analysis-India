# Crime Analysis in India (2015-2021)

This project presents a comprehensive analysis of crime dynamics in India, 
integrating data from multiple sources and employing advanced analytical 
techniques to uncover intricate patterns and insights. Over the past decade, 
crimes have exhibited complex temporal and spatial variations, influenced by a 
myriad of socio-economic factors. 

## Introduction


Crime is as old as human history itself. It has evolved into different forms, saw variations in it through cultural, temporal, and socio-economic changes. Through all this, the action of crime still persists in our society. Among all the crimes human commits, the crime of murder seems to be the most arrogant. Life is a precious gift to behold, regardless of its struggles, so there is little reasoning behind murder. It is a devastating act that not only ends a life but also leaves a lasting impact on families, communities, and society as a whole. Understanding the motives behind murders is crucial in addressing this serious issue and working towards creating safer communities.

### Analysis on the murder counts in years (2015-2021)

We have the data of total murder counts of the year 2015-2021, so we look to plot them taking the years in the abscissa and the murder counts in the ordinate axis. We obtain the plot in Fig 1.1

![](Aspose.Words.e91d200c-ebe0-4df4-97df-e22a3bb3a97d.001.png)

*Fig1.1 The time series plot of the murder counts*

Through a cursory glance we see that the murder counts have seen a sharp decline in the period of 2015-2017 and saw its minimum at 2017. After 2017, the murder counts picked up but at a more humble rate than its previous decline in the former mentioned period. Now, we look to find a trend line to this time series plot.

**1.2 Fitting a trend line**

The most common trend line fitting is the linear one but the graph hints us to model it with a less common trend model but still a famous one. It would be really intuitive to model the trend of the murder counts of the period 2017-2021 with an exponential trend model to be specific the inverse exponential trend model. The trend model fitting of the linear type, the exponential type and the inverse exponential type is provided in the Fig 1.2.1

![](Aspose.Words.e91d200c-ebe0-4df4-97df-e22a3bb3a97d.002.png)

*Fig 1.2.1 Fitting the linear, exponential and the inverse exponential trend models*

We see that the linear trend line tries to give a representation of the trend but is not that useful, the exponential doesn’t cut it either but the inverse or negative exponential trend model does a great job at capturing the trend of the time series. Now the fitted model of inverse exponential is provided below:

murder counts= α+βe-years

The estimates of α and β are calculated using the least squares method. The estimates along with the actual fitted equation is given below:

α = 27580 and β = 1012

So the model becomes,  
murder counts= 27580+1012\*e-years

