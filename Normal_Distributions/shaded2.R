mean = 20
sd = 2
minx = mean-3.5*sd;
maxx = mean+3.5*sd;
a = minx;
b = 17;
x=seq(minx,maxx,length=200)
y=dnorm(x,mean=mean,sd=sd)
plot(x,y,type="l", lwd=2, col="blue",xlab="x",ylab="density")
x=seq(a,b,length=200)
y=dnorm(x,mean=mean,sd=sd)
polygon(c(a,x,b),c(0,y,0),col="gray")