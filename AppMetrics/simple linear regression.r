data <-read.csv("table2.csv")
head(data)

result <- lm(wage ~ educ, data=data)
summary(result)

scatter_titled <- plot(formula=wage~educ, data=data, main="Scatter Diagram", xlab="Years of education", ylab="Hourly wage")
abline(result) #Add a fitted line

result2 <- lm(log(wage) ~ educ, data=data)
summary(result2)

result2_1 <- lm(log(wage) ~ log(educ), data=data)
summary(result2_1)

result3 <- lm(wage ~ female, data=data)
summary(result3)

result4 <- lm(log(wage) ~ female, data=data)
summary(result4)

