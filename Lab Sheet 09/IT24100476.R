setwd("C:\\Users\\USER\\Desktop\\IT24100476")
getwd()

#Q1.1
bake <- rnorm(25, mean = 45, sd = 2)
bake

#Q1.2
z <- (mean(bake)-46) / ( 2/ sqrt(25))
pval <- pnorm(z)
c(z_stat = z, p_value = pval)
