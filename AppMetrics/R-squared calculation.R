data <-read.csv("table2.csv")
head(data)

result <- lm(wage ~ educ, data=data)
summary(result)

#fitted value
wagehat<-fitted(result)

#wage bar
wagemean<-mean(data$wage)

#u hat
uhat<-data$wage-wagehat

#SST
SST<-sum((data$wage-wagemean)^2)
SST

#SSE
SSE<-sum((wagehat-wagemean)^2)
SSE

#SSR
SSR<-sum(uhat^2)
SSR

#R-squared
Rsq<-SSE/SST
Rsq