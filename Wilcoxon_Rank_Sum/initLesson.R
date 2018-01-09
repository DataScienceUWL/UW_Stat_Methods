# Put initialization code in this file.

if (!require(DS705data)){
  if (!require(devtools)){
    install.packages('devtools')
  }
  library(devtools)
  install_github('DataScienceUWL/DS705data')
}
require(DS705data)
# load the HealthExam data set into memory
data(HealthExam)

ch.young<-HealthExam$Cholesterol[HealthExam$AgeGroup=="18-35"]
ch.mid<-HealthExam$Cholesterol[HealthExam$AgeGroup=="36-65"]

chol <- c(ch.young,ch.mid)
group <- c(rep("Age 18-35",length(ch.young)),rep("Age 36-65",length(ch.mid)))
choldata <- data.frame(chol,group)