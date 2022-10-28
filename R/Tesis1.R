theta <- runif(n, 0, 2 * pi)
r <- (sqrt(runif(n))) * (0.5) + 0.5
X1 <- r * cos(theta)
X2 <- runif(n, a, b)
Y <- data.frame(Y = r * sin(theta))
X <- data.frame(X1, X2)

estimation <- alphastats(y = Y, x = X)
print(estimation)
plot_alpha_shape(estimation, alpha = c(0.9, 1.2))
plot_curve(estimation, type = "curve")
plot_curve(estimation, type = "deriv")
