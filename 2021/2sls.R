install.packages("ivreg", dependencies = TRUE)
data("SchoolingReturns", package = "ivreg")
head(SchoolingReturns)

results <- lm(log(wage) ~ education + ethnicity + smsa + south, data = SchoolingReturns)
summary(results)

library("ivreg")
firststage <- lm(education ~ nearcollege  + ethnicity + smsa + south, data = SchoolingReturns)
summary(firststage)
tsls <- ivreg(log(wage) ~ education  + ethnicity + smsa + south | nearcollege  + ethnicity + smsa + south, data = SchoolingReturns)
summary(tsls)
