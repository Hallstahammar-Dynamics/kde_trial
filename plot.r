

time.steps = seq(0,37, 0.5)
data = matrix(ncol = 2, nrow = lenght(time.steps))
data[,1] = x.values(time.steps)
data[,2] = y.values(time.steps)
f = aadeba(data, adapptive=TRUE, parallel=TRUE, beta=-1.125)
f = render(f)
plot(f)
points(data[,1], data[,2] pch=19)


