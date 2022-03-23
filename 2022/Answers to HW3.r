data <-read.csv("HW3.csv")
head(data)


#Question 1

#Mean
result.mean <-mean(data$consumption)
print(result.mean)

#Median
result.median <-median(data$consumption)
print(result.median)

#Standard deviation
result.sd <-sd(data$consumption)
print(result.sd)


#Question 2

hist <-hist(data$consumption,xlab="Consumption", ylab="Frequency", main="Distribution of consumption")
hist_density <-hist(data$consumption,freq=FALSE,xlab="Consumption", ylab="Density", main="Distribution of consumption")

#Question 3

scatter <- plot(formula=income~consumption, data=data, main="Scatter Diagram", xlab="Consumption", ylab="Income")