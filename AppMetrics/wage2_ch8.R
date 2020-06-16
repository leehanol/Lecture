ls()
names(data)
head(data)
nrow(data)
desc

install.packages("sandwich")
library(sandwich)
install.packages("lmtest")
library(lmtest)


ols=lm(log(wage)~educ+married,data=data)
summary(ols)

bp <- bptest(ols)
bp

coeftest(ols,vcov=vcovHC)
