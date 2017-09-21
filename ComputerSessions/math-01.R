## [MATH-01] Simple math with R ##

# Start
2 + 2
sqrt(2)
log(2)
log(0)
log(-1)

# Numeric vector
x <- 1:10
x

# Character vector
y <- c("Messi", "Neymar", "Cristiano")
y

# Logical vector
z <- x > 5
z

# Subsetting
x[1:3]
x[x>=5]

# Structure of an object
str(x)
str(y)
str(z)

# Function
f <- function(x) 1/(1+x^2)
f(1)

# Plotting a function
x <- seq(-5, 5, by=0.01)
y <- f(x)
plot(y ~ x, type="l")
