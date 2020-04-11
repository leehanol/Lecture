data <-read.csv("table2.csv")
head(data)

hist_wage <-hist(data$wage)
hist_wage_titled <-hist(data$wage,xlab="Hourly Wage", ylab="Frequency", main="Distribution of Hourly Wage")
hist_wage_bk5 <-hist(data$wage,breaks=6)
hist_wage_bk3 <-hist(data$wage,breaks=3)
hist_wage_bp <- hist(data$wage,breaks=c(15,20,25,30,35))
hist_wage_bp2 <- hist(data$wage,breaks=seq(15,35,by=5))

hist_wage_density <-hist(data$wage,freq=FALSE)