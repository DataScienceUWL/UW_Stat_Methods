# Put initialization code in this file.

# install DS705data if needed
if (!is.element("DS705data",installed.packages()[,1]))
{ install.packages("http://websites.uwlax.edu/jbaggett/DS705/DS705data_1.0.tgz",repos=NULL,type="source")}

# load DS705data
require(DS705data)
data(HealthExam)
wh <- HealthExam$Height[HealthExam$Sex=='F']
