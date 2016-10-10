## Exercise 11.B ##
f <- function(x) x^3 + x^2 + x -1
fprime <- function(x) 3*x^2 + 2*x + 1
NR <- function(x) x - f(x)/fprime(x) 
x[1] <- 10
for(n in 2:10) x[n] <- NR(x[n-1])

## Exercise 12.A ##
S <- function(t, alpha, beta) exp(-(t/alpha)^beta)
t <- seq(0, 5, by=0.01)
S1 <- S(t, 1, 0.5)
S2 <- S(t, 1, 1)
S3 <- S(t, 1, 2)
S4 <- S(t, 1, 5)
s.curves <- cbind(S1, S2, S3, S4)
pdf("E:/Weibull.pdf", width=3.5, height=3.75, pointsize=7)
matplot(t, s.curves, col=1, type="l", xlab="", ylab="Survivor proportion",main="")
legend(4.25, 0.8, lty=1:4, legend=c("beta=0.5","beta=1","beta=2","beta=5"),cex=0.75)
dev.off()
