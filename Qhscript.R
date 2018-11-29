scan(file = "Q.txt", dec = ",")
scan(dec = ",", file = "Q.txt")
Q <- scan("Q.txt", dec = ",")
qm <- matrix(Q, ncol = 10)
qm[,1]
h <- scan("h.txt", dec = ",")
Qh <- cbind(Q,h)
plot(Qh[,1],Qh[,2])
colnames(Qh)
plot(Qh[,"Q"],Qh[,"h"])
## Try to plot Q<10 [l/s]

## Creation of data.frame
Qh.df <- data.frame(h = h, Q = Q)
## Plot Q & h data
plot(Qh.df, xlab="h [cm]", ylab="Q [l/s]")
plot(h ~ Q, data = Qh.df, ylab="h [cm]", xlab="Q [l/s]")
## Regression line
lm(Q ~ h, data = Qh.df)
abline(-3.24, 1.31)

Qh.lm <- lm(Q ~ h, data = Qh.df)
abline(Qh.lm)
