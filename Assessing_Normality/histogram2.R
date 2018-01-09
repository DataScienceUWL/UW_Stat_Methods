hist(fd,main="female systolic blood pressure",xlab="mmHg",prob=TRUE)
curve(dnorm(x, mean=mean(fd), sd=sd(fd)),col="darkblue", lwd=2, add=TRUE)