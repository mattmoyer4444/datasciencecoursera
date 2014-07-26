library(datasets)
data(iris)
head(iris)

?iris


s <- split(iris, iris$Species)

sapply(s, function(x) colMeans(x[, c("Sepal.Length", "Sepal.Width")], na.rm = TRUE))

## returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'
apply(iris[, 1:4], 2, mean)


data(mtcars)
head(mtcars)

with(mtcars, tapply(mpg, cyl, mean))

## HP mean by cylinder
s <- split(mtcars, mtcars$cyl)

lapply(s, function(x) colMeans(x[, c("cyl", "hp")]))

## what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?

sapply(split(mtcars$mpg, mtcars$cyl), mean)

cyl4 <- mtcars$hp[mtcars$cyl == 4]
cyl8 <- mtcars$hp[mtcars$cyl == 8]

mean4 <- mean(cyl4, na.rm = TRUE)
mean8 <- mean(cyl8, na.rm = TRUE)

hp_diff <- abs(mean8) - abs(mean4)
