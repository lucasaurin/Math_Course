## [MATH-02C] Not so simple math with R ##

# Trigonometric functions
sin(pi/2)
cos(pi/2)
tan(pi/2)
asin(0)
acos(0)
atan(0)

# Complex numbers
(2 + 2i) + (4 - 3i)
(2 + 2i) * (4 - 3i)
(2 + 2i) / (4 - 3i)

# Complex numbers are different objects
sqrt(-1)
sqrt(-1 + 0i)
str(-1 + 0i)
log(0)
log(-1 + 0i)

# e as a limit
exp(1)
s1 <- function(n) (1 + 1/n)^n
s1(1:100)

# Faster
s2 <- function(n) sum(1/factorial(0:n))
s2(10)

# Plotting the bell curve
f <- function(x) (1/sqrt(2*pi))*exp(-x^2/2) 
x <- seq(-5, 5, by=0.01)
y <- f(x)
plot(y ~ x, type="l")

# Another bell?
g <- function(x) 1/(pi*(1+x^2))
z <- g(x)
lines(z ~ x, type="l")
