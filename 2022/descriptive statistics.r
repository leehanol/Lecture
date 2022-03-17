data <-read.csv("table2.csv")
head(data)

#Mean
result.mean <-mean(data$wage)
print(result.mean)

#Median
result.median <-median(data$wage)
print(result.median)

#Percentiles
result.quantile<-quantile(data$wage)
print(result.quantile)

#Minimum
result.min <-min(data$wage)
print(result.min)

#Maximum
result.max <-max(data$wage)
print(result.max)

#Variance
result.var <-var(data$wage)
print(result.var)

#Standard deviation
result.sd <-sd(data$wage)
print(result.sd)

#Descriptive statistics: mean, median, 25th and 75th quartiles, min, max
summary(data)