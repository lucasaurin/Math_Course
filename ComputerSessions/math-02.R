## [MATH-02] Vectors and matrices in R ##

# Vectors #
x = c(2, 3, 7, -1, 0)
x
str(x)
length(x)

# Subsetting vectors #
x[2]
x[2:4]
x[x>3]
x[-2] 

# Matrices #
A = matrix(c(2, 3, 7, -1, 0, 7, -1.5, 2/3, log(2)), nrow=3)
A
B = matrix(c(2, 3, 7, -1, 0, 7, -1.5, 2/3, log(2)), nrow=3, byrow=T)
B
str(A)
dim(A)

# Subsetting matrices #
A[1:2,2:3]
diag(A)

# Transpose #
t(A) 

# Matrix algebra #
A <- matrix(c(2, 1, 1, 1, 2, 1, 1, 1, 2), nr=3)
A
B <- matrix(rep(1, 9), nr=3)
B
A + B
A * B
A %*% B

# Solving linear systems #
M <- matrix(c(2, 1, 1, 1, 1, 1, -2, 1, 3), nr=3)
b <- c(1, 0, 1)
solve(M, b)
solve(M)
solve(M) %*% b

# Determinant 
det(A)

# Eigenvalues and eigenvectors # 
eigen(A)
str(eigen(A))

# Quadratic form #
u <- c(1, 2, -1)
t(u) %*% A %*% u
Q <- function(x) t(x) %*% A %*% x
Q(u)
