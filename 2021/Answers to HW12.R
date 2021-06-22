data <-read.csv("Doctor.csv")
head(data)

result <- lm(doctor  ~ children , data=data)
summary(result)
