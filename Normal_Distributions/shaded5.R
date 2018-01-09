mean = 0
sd = 1
minx = mean-3.5*sd;
maxx = mean+3.5*sd;
a = minx;
b = qnorm(.1);
x=seq(minx,maxx,length=200)
y=dnorm(x,mean=mean,sd=sd)
plot(x,y,type="l", lwd=2, col="blue",xlab="z",ylab="density")
x=seq(a,b,length=200)
y=dnorm(x,mean=mean,sd=sd)
polygon(c(a,x,b),c(0,y,0),col="gray")
text(-.4,.08,'area = 0.1')
text(-1.5,-.1,'?')
