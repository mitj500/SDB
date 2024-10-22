# Create five sample numeric vectors from this data.
# Create a data frame for the given sales data
sales_data <- data.frame(
  product = c("bread", "milk", "cola cans", "chocolate bars", "detergent"),
  monday = c(12, 21, 10, 6, 5),
  tuesday = c(3, 27, 1, 7, 8),
  wednesday = c(5, 18, 33, 4, 12),
  thursday = c(11, 20, 6, 13, 20),
  friday = c(9, 15, 12, 12, 23)
)
# Display the sales data table
print("Sales Data Table:")
print(sales_data)
# Create five sample numeric vectors
sample_vector1 <- sales_data[sample(1:nrow(sales_data)), "monday"]
sample_vector2 <- sales_data[sample(1:nrow(sales_data)), "tuesday"]
sample_vector3 <- sales_data[sample(1:nrow(sales_data)), "wednesday"]
sample_vector4 <- sales_data[sample(1:nrow(sales_data)), "thursday"]
sample_vector5 <- sales_data[sample(1:nrow(sales_data)), "friday"]
# Display the sample vectors
print("Sample Numeric Vectors:")
print(sample_vector1)
print(sample_vector2)
print(sample_vector3)
print(sample_vector4)
print(sample_vector5)