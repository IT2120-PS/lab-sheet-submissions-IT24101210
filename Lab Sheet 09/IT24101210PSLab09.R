#Q1
setwd("C:\\Users\\LENOVO\\Desktop\\IT24101210(1)")
getwd()

# i
set.seed(123)
sample_data <- rnorm(25, mean = 45, sd = 2)
print(sample_data)

# ii. Hypothesis Test
t_test_result <- t.test(sample_data, mu = 46, alternative = "less")

# Print results
print(t_test_result)