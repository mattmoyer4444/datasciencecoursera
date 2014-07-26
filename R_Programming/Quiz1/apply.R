## apply

str(apply)


x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)

apply(x, 1, sum)

apply(x, 1, quantile, probs = c(0.25, 0.75))

a <- array(rnorm(2 * 2 * 10), c(2, 3, 10))

apply(a, c(1, 2), mean)

rowMeans(a, dims = 2)

## tapply

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)

tapply(x, f, mean)

tapply(x, f, mean, simplify = FALSE)

tapply(x, f, range)

split(x, f)
