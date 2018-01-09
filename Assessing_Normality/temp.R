- Class: cmd_question
Output: The str() command returns the structure of almost any R object.  Apply it to HealthExam to get an overview of what is contained in that dataframe.
CorrectAnswer: str(HealthExam)
AnswerTests: omnitest(correctExpr='str(HealthExam)')
Hint: Type str(HealthExam).

- Class: cmd_question
Output: The summary() command will try to find summary statistics for vectors and dataframes.  Apply it to HealthExam now.
CorrectAnswer: summary(HealthExam)
AnswerTests: omnitest(correctExpr='summary(HealthExam)')
Hint: Type summary(HealthExam)

- Class: text
Output: Notice how summary attempts to return appropriate each information for different types of variables.  For factors (categorical variables) it counts the number of observations with each level.  For numerical data it computes numerical statistics.

- Class: text
Output: Let's create a new dataframe for just the females in the dataset.

- Class: text
Output: For instance, to extract all the cases from the dataframe df for which the factor Color is "purple" we could type dfpurple <- df[df$Color=="purple",].  This creates a new, smaller dataframe, dfpurple, with only the cases that have Color=="purple".

- Class: cmd_question
Output: Now we want to extract all the data for females from the HealthExam dataframe.  Extract those cases in HealthExam for which Sex=="F".  Assign the result to hf. (Note the two equal signs used for conditional expressions ==)
CorrectAnswer: hf <- HealthExam[HealthExam$Sex=="F",]
AnswerTests: omnitest(correctExpr='HealthExam[HealthExam$Sex=="F",]')
Hint: Type HealthExam[HealthExam$Sex=="F",] and do not forget the comma.

- Class: cmd_question
Output: Apply summary() to your dataframe for females, hf, to get summary statistics for just the females.
CorrectAnswer: summary(hf)
AnswerTests: omnitest(correctExpr='summary(hf)')
Hint: Type summary(hf)

- Class: text
Output: For the rest of this lesson we'll focus on just the cholesterol levels of the 40 females.

- Class: cmd_question
Output: Extract the cholesterol levels of the females from hf and assign it to the new variable chol.  Remember df$name gives you a vector containing the variable name from the dataframe df.
CorrectAnswer: chol <- hf$Cholesterol
AnswerTests: omnitest(correctExpr='chol <- hf$Cholesterol')
Hint: don't forget to assign your result to the variable chol using <-.  The vector you want is hf$Cholesterol.

- Class: cmd_question
Output: Apply summary() to chol to get a numerical summary of the female cholesterol data.
CorrectAnswer: summary(chol)
AnswerTests: omnitest(correctExpr='summary(chol)')
Hint: Type summary(chol).

- Class: mult_question
Output: Notice that the mean cholesterol level is significantly higher than the median cholesterol level.  This is an indication that the cholesterol distribution is 
AnswerChoices: symmetric;skewed right;skewed left
CorrectAnswer: skewed right
AnswerTests: omnitest(correctVal= 'right')
Hint: When the mean is larger than the median this is evidence of some larger observations at the high end of the scale, so the data is skewed right.

- Class: cmd_question
Output: Notice that you get the min and max, the three quartiles, and the mean, but the standard deviation is nowhere to be found.  Apply sd() to chol to get the standard deviation of the female cholesterol levels.
CorrectAnswer: sd(chol)
AnswerTests: omnitest(correctExpr='sd(chol)')
Hint: Type sd(chol)

- Class: cmd_question
Output: To get the sample variance you could square the sample standard deviation of simply use the var() command.  Apply var() to chol here.
CorrectAnswer: var(chol)
AnswerTests: omnitest(correctExpr='var(chol)')
Hint: Type var(chol)

- Class: cmd_question
Output: The quantile() command returns the min and max and the three quartiles by default.  Apply quantile() to chol now to get the quartiles.
CorrectAnswer: quantile(chol)
AnswerTests: omnitest(correctExpr='quantile(chol)')
Hint: Type quantile(chol) to get this numerical summary.

- Class: cmd_question
Output: quantile() can also be used to estimate other percentiles.  quantile(x,p) estimates 100*p percentile in the vector x.  Find the 90th percentile (p=.9) of female cholesterol levels.
CorrectAnswer: quantile(chol,.9)
AnswerTests: omnitest(correctExpr='quantile(chol,.9)')
Hint: Type quantile(chol,.9).

- Class: text
Output: Many R commands, including quantile() accept vectors as inputs.  If we wanted the 10th, 50th, and 90th percentiles of female cholesterol level we could type quantile(chol, c(.1,.5,.9)).

- Class: cmd_question
Output: Many R commands, including quantile() accept vectors as inputs.  If we wanted the 10th, 50th, and 90th percentiles of female cholesterol level we could type quantile(chol, c(.1,.5,.9)).  Try it now.
CorrectAnswer: quantile(chol, c(.1,.5,.9))
AnswerTests: omnitest(correctExpr='quantile(chol, c(.1,.5,.9))')
Hint: Type, or cut and paste, quantile(chol, c(.1,.5,.9))


