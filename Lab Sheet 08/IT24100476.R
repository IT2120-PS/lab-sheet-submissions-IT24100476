

# 1
setwd("C:\\Users\\USER\\Desktop\\IT24100476")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
attach(data)

# Calculate population mean
pop_mean <- mean(Weight.kg.)
cat("Population Mean:", pop_mean, "\n")

# Calculate population standard deviation
pop_sd <- sd(Weight.kg.)
cat("Population Standard Deviation:", pop_sd, "\n")


# 2

s_means <- c()
s_sds <- c()

for (i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  
  # Calculate mean and standard deviation for the current sample
  current_mean <- mean(s)
  current_sd <- sd(s)
  
  s_means <- c(s_means, current_mean)
  s_sds <- c(s_sds, current_sd)
}

print("Sample Means:")
print(s_means)
print("Sample Standard Deviations:")
print(s_sds)


# 3

# Mean of the sample means
mean_of_sample_means <- mean(s_means)
cat("Mean of the 25 sample means:", mean_of_sample_means, "\n")

# Standard deviation of the sample means 
sd_of_sample_means <- sd(s_means)
cat("Standard Deviation of the 25 sample means:", sd_of_sample_means, "\n")

cat("\nRelationship between Population and Sample Means:\n")
cat("Population Mean (", pop_mean, ") is close to the Mean of Sample Means (", mean_of_sample_means, ")\n")

cat("\nRelationship between Population Standard Deviation and Standard Error:\n")
theoretical_se <- pop_sd / sqrt(6)
cat("Theoretical Standard Error (Population SD / sqrt(n)):", theoretical_se, "\n")
cat("The Standard Deviation of Sample Means (", sd_of_sample_means, ") is close to the Theoretical Standard Error.\n")