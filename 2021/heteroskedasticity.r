library(olsrr)
library(lmtest)
library(sandwich)

data <-read.csv("Doctor.csv")
head(data)

result <- lm(doctor ~ children + health + access, data=data)
summary(result)
ols_test_breusch_pagan(result, rhs = TRUE)
ols_test_breusch_pagan(result)
coeftest(result, vcov = vcovHC(result, type="HC0"))
