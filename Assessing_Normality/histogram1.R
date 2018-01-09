hist(hm$Height,main="Heights of 40 men",xlab="inches",prob=TRUE)
curve(dnorm(x, mean=mean(hm$Height), sd=sd(hm$Height)),col="darkblue", lwd=2, add=TRUE)