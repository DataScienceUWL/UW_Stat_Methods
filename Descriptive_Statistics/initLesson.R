# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

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

data(HealthExam)