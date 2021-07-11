####################################################### 
#### Created by Nilesh Kumar, IIM Raipur, India
#######################################################


#we will be using the dataset iris throughout the project
data("iris") # load the iris dataset
View(iris) # view the iris dataset in a new tab

str(iris) # structure of dataset

#Minimum and maximum can be found using the min() and max() functions:
min(iris$Sepal.Length)
max(iris$Sepal.Length)

#The range can then be easily computed, by subtracting the minimum from the maximum:
max(iris$Sepal.Length) - min(iris$Sepal.Length)

#The mean can be computed with the mean() function:
mean(iris$Sepal.Length)

#The median can be computed using the median() function:
median(iris$Sepal.Length)

quantile(iris$Sepal.Length, 0.25) # first quartile
quantile(iris$Sepal.Length, 0.50) # second quartile
quantile(iris$Sepal.Length, 0.75) # third quartile

IQR(iris$Sepal.Length) #Interquartile range (3rd quartile - 1st quartile)

sd(iris$Sepal.Length) # standard deviation
var(iris$Sepal.Length) # variance


summary(iris) #summary of whole dataset

sd(iris$Sepal.Length) / mean(iris$Sepal.Length) #Coefficient of variation

#mode
tab <- table(iris$Sepal.Length) # number of occurrences for each unique value
sort(tab, decreasing = TRUE) # sort highest to lowest


#correlation between 2 variables
cor(iris$Sepal.Length, iris$Sepal.Width)




#Refer to https://github.com/nileshkumar0/Visualizations-using-R for all the chart 





#####Advanced descriptive statistics

install.packages("summarytools")
library(summarytools)

#the package for descriptive statistics is often used in R is the "summarytools" package. The package is centered around 4 functions:
#freq() for frequencies tables
#ctable() for cross-tabulations
#descr() for descriptive statistics
#dfSummary() for dataframe summaries

freq(iris$Species) #The freq() function produces frequency tables with frequencies, proportions, as well as missing data information.

#The ctable() function produces cross-tabulations (also known as contingency tables) for pairs of categorical variables. Using the two categorical variables in our dataset:

ctable(
  x = iris$Sepal.Length,
  y = iris$Sepal.Width
)

#The descr() function produces descriptive (univariate) statistics with common central tendency statistics and measures of dispersion.

descr(iris,
      headings = FALSE, # remove headings
      stats = "common" # most common descriptive statistics
)

#The dfSummary() function generates a summary table with statistics, frequencies and graphs for all variables in a dataset. The information shown depends on the type of the variables (character, factor, numeric, date) and also varies according to the number of distinct values.

dfSummary(iris)



