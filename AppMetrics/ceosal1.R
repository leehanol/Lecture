ls()
desc
head(data)

install.packages("car")
library(car)

result <- lm(log(salary)~log(roe)+log(sales),data=data)
summary(result)

#Confidence intervals
confint(result, level = 0.9)
confint(result, level = 0.95)
confint(result, level = 0.99)

lsalessq <- log(data$sales)^2

result2 <- lm(log(salary)~log(roe)+log(sales)+lsalessq ,data=data)
summary(result2)

#Joint hypothesis test
lht(result2 , c("log(sales)=0", "lsalessq =0"))

