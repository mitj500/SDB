# Create a subset of subjects less than 4 by using subset() function and demonstrate the output.
# Create a sample data frame with the given marks values
data <- data.frame(
  subject = c(1, 2, 3, 4, 5, 6),
  class = c(1, 2, 1, 2, 1, 2),
  marks = c(56, 75, 48, 69, 84, 53)
)
# Display the original data frame
print("Original Data Frame:")
print(data)
# Create a subset where subject is less than 4
subset_data <- subset(data, subject < 4)
# Display the subset data frame
print("Subset Data Frame (subject < 4):")
print(subset_data)

# Create a subset where the subject column is less than 3 and the class equals to 2 by using [ ] brackets and demonstrate the output.
# Create a sample data frame with the given marks values
data <- data.frame(
  subject = c(1, 2, 3, 4, 5, 6),
  class = c(1, 2, 1, 2, 1, 2),
  marks = c(56, 75, 48, 69, 84, 53)
)
# Display the original data frame
print("Original Data Frame:")
print(data)
# Create a subset where subject is less than 3 and class equals to 2
subset_data <- data[data$subject < 3 & data$class == 2, ]
# Display the subset data frame
print("Subset Data Frame (subject < 3 and class == 2):")
print(subset_data) 