ls()
desc
head(data)

result <- lm(salary~roe+sales,data=data)
summary(result)

result2 <- lm(log(salary)~roe+sales,data=data)
summary(result2)