
setwd("C://git_projects//datasciencecoursera//R_Programming//ProgrammingAssignment3//Quiz1//hw1_data.csv")
getwd()


outcome_data <- read.csv2("hw1_data.csv",sep=",",colClasses="character")

outcome_data[1:3]
head(outcome_data,2)

tail(outcome_data,2)

x <- as.numeric(outcome_data$Ozone)


mean
colMeans(outcome_data$Ozone, na.rm = TRUE, dims = 2)


mean(mean, na.rm = TRUE)

sub <- subset(outcome_data, Temp > 90 & Ozone > 31, select = c(Ozone, Temp, Solar.R))

mean <- as.numeric(sub$Solar.R)
mean(mean, na.rm = TRUE)


sub <- c(outcome_data$Ozone, outcome_data$Temp, outcome_data$Solar.R)

sub <- subset(outcome_data, Month > 90 & Ozone > 31, select = c(Ozone, Temp, Solar.R))

