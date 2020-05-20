ls()
desc
head(data)

result <- lm(log(salary)~log(roe)+log(sales),data=data)
summary(result)

lroesq <- (log(data$roe))^2

result2 <- lm(log(salary)~log(roe)+lroesq+log(sales),data=data)
summary(result2)

