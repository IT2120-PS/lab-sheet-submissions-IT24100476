setwd("C:\\Users\\it24100476\\Desktop\\IT24100476")
# Problem 1
# Parameters
n <- 50    
p <- 0.85  

#i
cat("X follows a Binomial distribution: X ~ Binomial(50, 0.85)\n")
#ii
prob_at_least_47 <- 1 - pbinom(46, n, p)  # P(X >= 47)
cat("Probability that at least 47 students passed the test: ", prob_at_least_47, "\n")

#problem 2
lambda <- 12
#i
cat("Random variable X represents the number of customer calls per hour.\n")
#ii
cat("X follows a Poisson distribution: X ~ Poisson(12)\n")
#iii
prob_exactly_15 <- dpois(15, lambda)  
cat("Probability that exactly 15 calls are received in an hour: ", prob_exactly_15, "\n")