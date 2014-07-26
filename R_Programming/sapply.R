x <- list(a = 1:5, b = rnorm(10))

lapply(x, mean)

y <- list(a = 1:4, b = rnorm(10), c = rnorm(20,1), d = rnorm(100, 5))

lapply(y, mean)


x <- 1:4
lapply(x, runif)


x<- 1:4
lapply(x, runif, min = 0, max = 10)

z <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))

lapply(z, function(elt) elt[,1])

y <- list(a = 1:4, b = rnorm(10), c = rnorm(20,1), d = rnorm(100, 5))

sapply(y, mean)
load(mtcars)
