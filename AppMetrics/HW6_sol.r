data <-read.csv("table2.csv")
head(data)

# HW6 - Q1
result <- lm(wage ~ educ, data=data)
summary(result)

# HW6 - Q2
result2 <- lm(log(wage) ~ educ, data=data)
summary(result2)

# HW6 - Q3
result3 <- lm(wage ~ female, data=data)
summary(result3)

# HW6 - Q4
result4 <- lm(log(wage) ~ female, data=data)
summary(result4)
