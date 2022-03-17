data <-read.csv("table2.csv")
head(data)

scatter <- plot(formula=wage~educ, data=data, main="Scatter Diagram", xlab="Years of education", ylab="Hourly wage")

