install.packages("car")
library(car)

data <-read.csv("table2.csv")
head(data)

result <- lm(wage ~ female, data=data)
summary(result)

result <- lm(wage ~ educ + female, data=data)
summary(result)

result2 <- lm(log(wage) ~ educ, data=data)
summary(result2)

result2 <- lm(log(wage) ~ female, data=data)
summary(result2)

result2 <- lm(log(wage) ~ educ + female, data=data)
summary(result2)

educ2<-data$educ*data$educ

result3 <- lm(log(wage) ~ educ + educ2 + female, data=data)
summary(result3)

#Joint hypothesis test
lht(result3 , c("educ=0", "educ2=0"))

summary(data)

result3 <- lm(log(wage) ~ educ , data=data)
summary(result3)
scatter <- plot(formula=log(wage)~educ, data=data, main="Scatter Diagram", xlab="Years of education", ylab="Log of Hourly wage")
abline(result3)
