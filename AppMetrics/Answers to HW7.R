data <-read.csv("table2.csv")
head(data)


result1 <- lm(wage ~ educ+ female, data=data)
summary(result1)

result2 <- lm(log(wage) ~ educ+female, data=data)
summary(result2)



