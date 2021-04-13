data <-read.csv("table2.csv")
head(data)

scatter <- plot(x=data$educ, y=data$wage)
scatter2 <- plot(formula=wage~educ, data=data)
scatter_titled <- plot(formula=wage~educ, data=data, main="Scatter Diagram", xlab="Years of education", ylab="Hourly wage")

