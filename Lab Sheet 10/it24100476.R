setwd("C:\\Users\\USER\\Desktop\\IT24100476")

observed_snacks <- c(120, 95, 85, 100)
prob_snacks <- c(.25, .25, .25, .25)
chisq.test(x=observed_snacks, p=prob_snacks)

