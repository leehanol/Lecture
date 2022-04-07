data <-read.csv("table2.csv")
head(data)

length(data$wage)
mean(data$wage)
sd(data$wage)

#95% confidence interval
error <- qt(0.975,df=length(data$wage)-1)*sd(data$wage)/sqrt(length(data$wage))
error

low <- mean(data$wage)-error
high <- mean(data$wage)+error
low
high