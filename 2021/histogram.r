data <-read.csv("table2.csv")
head(data)

hist_wage <-hist(data$wage,xlab="Hourly Wage", ylab="Frequency", main="Distribution of Hourly Wage")
hist_wage_density <-hist(data$wage,freq=FALSE,xlab="Hourly Wage", ylab="Frequency", main="Distribution of Hourly Wage")