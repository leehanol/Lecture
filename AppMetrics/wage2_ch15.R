ls()
names(data)
head(data)
nrow(data)
desc

ols=lm(log(wage)~educ+married,data=data)
summary(ols)

stage1=lm(educ~IQ+married,data=data)
summary(stage1)

#install.packages("AER")
library(AER)
tsls<-ivreg(log(wage)~educ+married|IQ+married, data=data)
coeftest(tsls)

summary(tsls,  diagnostics = TRUE)





