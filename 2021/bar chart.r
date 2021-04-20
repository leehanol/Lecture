require(openintro)
require(lattice)

data <-read.csv("table2.csv")
head(data)

barchart(data$female, horizontal = FALSE, ylab = "Frequency")

barchart(data$female/nrow(data$female), horizontal = FALSE, ylab = "Relative Frequency")

barchart(data$female/nrow(data$female)*100, horizontal = FALSE, ylab = "Percentage")