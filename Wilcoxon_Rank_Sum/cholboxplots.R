par(mfrow=c(1,1))
mask <- HealthExam$AgeGroup=="18 to 35" | HealthExam$AgeGroup=="36 to 64"
group <- factor(HealthExam[mask,"AgeGroup"])
chol <- HealthExam[mask,"Cholesterol"]
choldata <- data.frame( AgeGroup = group, Cholesterol = chol)

boxplot(Cholesterol~AgeGroup,data=choldata)
