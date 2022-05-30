library(lmtest)

data <-read.csv("table2.csv")
head(data)

result <- lm(wage ~ educ + female, data=data)
summary(result)

educ.f=factor(data$educ)
dummies = model.matrix(~educ.f)
data2 = cbind(data,dummies)

results2=lm(log(wage)~educ+educ.f8+educ.f9+educ.f10+educ.f11,data=data2)
summary(results2)

results3=lm(log(wage)~educ.f8+educ.f9+educ.f10+educ.f11,data=data2)
summary(results3)
