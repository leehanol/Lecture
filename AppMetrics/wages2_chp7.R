ls()
names(data)
head(data)
nrow(data)
desc
install.packages("car")
library(car)

ols=lm(log(wage)~educ,data=data)
summary(ols)

ols2=lm(log(wage)~educ+married,data=data)
summary(ols2)

single<-ifelse(data$married==0, 1, 0)

ols3=lm(log(wage)~educ+married+single,data=data)
summary(ols3)

ols4=lm(log(wage)~educ+married,data=data,subset=married==1)
summary(ols4)

ols5=lm(log(wage)~educ+married,data=data,subset=married==0)
summary(ols5)

ols6=lm(log(wage)~married+educ+educ*married,data=data)
summary(ols6)

lht(ols6,c("married=0","married:educ=0"))

sibs.f=factor(data$sibs)
dummies = model.matrix(~sibs.f)
data2 = cbind(data,dummies)

ols7=lm(log(wage)~educ+sibs.f2+sibs.f3+sibs.f4+sibs.f5+sibs.f6+sibs.f7+sibs.f8+sibs.f9+sibs.f10+sibs.f11+sibs.f12+sibs.f13+sibs.f14,data=data2)
summary(ols7)
