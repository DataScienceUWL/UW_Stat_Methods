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

x.m<- HealthExam$DiasBP[HealthExam$Sex=="M"]
x.f<- HealthExam$DiasBP[HealthExam$Sex=="F"]