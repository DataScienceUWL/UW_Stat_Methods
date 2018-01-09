mean = 20
sd = 2
minx = mean-3.5*sd;
maxx = mean+3.5*sd;
a = minx;
b = qnorm(.5831,mean=mean,sd=sd);
x=seq(minx,maxx,length=200)
y=dnorm(x,mean=mean,sd=sd)
plot(x,y,type="l", lwd=2, col="blue",xlab="x",ylab="density")
x=seq(a,b,length=200)
y=dnorm(x,mean=mean,sd=sd)
polygon(c(a,x,b),c(0,y,0),col="gray")
text(18.99,.08,'0.5831')
mtext('        ^',1,line=0)
mtext('        ?',1,line=1)