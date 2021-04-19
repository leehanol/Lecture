data <-read.csv("table2.csv")
head(data)

#Correlation coefficient
result.cor <- cor(data$wage, data$educ)
print(result.cor)
