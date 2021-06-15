library(lmtest)

data <-read.csv("table2.csv")
head(data)

result <- lm(wage ~ educ + female, data=data)
summary(result)


resettest(result, power=1, type="regressor")
