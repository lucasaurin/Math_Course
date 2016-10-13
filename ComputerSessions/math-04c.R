## [MATH-04C] Contours, optimization and integration ##

# Contour plot #
# Function
f <- function(x1,x2) x1^2 + 2*x2^2
# Grid
x1 <- seq(-2, 2, by=0.01)
x2 <- seq(-2, 2, by=0.01)
y <- outer(x1, x2, f)
# Contour plot
contour(x1, x2, y,main="", nlevels=20)
# Example 2 from MATH-16
f <- function(x1,x2) x1^3+x2^3-3*x1*x2
x1 <- seq(0.5, 1.5, by=0.01)
x2 <- seq(0.5, 1.5, by=0.01)
y <- outer(x1, x2, f)
contour(x1, x2, y,main="", nlevels=20)

# Optimization (minimum) #
# Linear search within an interval
optimize(function(x) x^x, interval=c(0,1))
is.list(optimize(function(x) x^x, interval=c(0,1))) 
# Iterative method
optim(par=0, fn = function(x) sin(x))
# A bad start
optim(par=pi/4, fn = function(x) sin(x), lower=0, upper=2*pi) 
# A good start
optim(par=pi, fn = function(x) sin(x), lower=0, upper=2*pi)
# A 2-dimensional case
f <- function(x) x[1]^3+x[2]^3-3*x[1]*x[2]
optim(par=c(0,0), fn = f)
optim(par=c(-1,-1), fn = f)

# Integration #
integrate(f=function(x) sin(x), lower=0, upper=2*pi)
# Example 4 of MATH-14
integrate(f=function(x) exp(-x), lower=0, upper=Inf)
# Example 5 of MATH-14
integrate(f=function(x) 1/(1+x), lower=0, upper=Inf)
# Exercise B of MATH-14
integrate(f=function(x) 1/x^2, lower=1, upper=Inf)