# Q1
setwd("C:\\Users\\it24100476\\Desktop\\IT24100476")

# Use sep="," since the file is CSV format
branch_data <- read.table("Exercise.txt", header=TRUE, sep=",")

# Check structure (important!)
str(branch_data)

# Q3
boxplot(branch_data$Sales_X1,
        main = "Boxplot for Sales",
        outline = TRUE, outpch = 8, horizontal = TRUE)

boxplot(branch_data$Advertising_X2,
        main = "Boxplot for Advertising",
        outline = TRUE, outpch = 8, horizontal = TRUE)

boxplot(branch_data$Years_X3,
        main = "Boxplot for Years",
        outline = TRUE, outpch = 8, horizontal = TRUE)
#Q4
quantile(X2)
IQR(X2)

#Q5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR
  upper <- Q3 + 1.5 * IQR
  return(x[x < lower | x > upper])
}

# Check outliers for Years
find_outliers(branch_data$Years_X3)


