par(mfrow=c(2,2))
mask <- HealthExam$AgeGroup=="18 to 35" | HealthExam$AgeGroup=="36 to 64"
group <- factor(HealthExam[mask,"AgeGroup"])
chol <- HealthExam[mask,"Cholesterol"]
choldata <- data.frame( AgeGroup = group, Cholesterol = chol)
chol.young <- choldata$Cholesterol[choldata$AgeGroup=="18 to 35"]
chol.mid <- choldata$Cholesterol[choldata$AgeGroup=="36 to 64"]
hist(chol.young, main="Age 18 to 35",xlab="mm/dL")
hist(chol.mid, main="Age 36 to 65",xlab="mm/dL")
qqnorm(chol.young)
qqnorm(chol.mid)
par(mfrow=c(1,1))