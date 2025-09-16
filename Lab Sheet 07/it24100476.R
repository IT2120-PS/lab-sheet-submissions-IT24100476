#Exercise
setwd("C:\\Users\\USER\\Desktop\\IT24100476")
getwd()
#Q1
punif(25, min=0, max=40,lower.tail=TRUE)-punif(10, min=0, max=40, lower.tail=TRUE)

#Q2
pexp(2, rate=1/3, lower.tail=TRUE)

#Q3
#i)
pnorm(130, mean=100, sd=15, lower.tail=FALSE)

#ii)
qnorm(0.95, mean=100, sd=15, lower.tail=TRUE)