# i. Create a subset of course less than 5 by using [ ] brackets and demonstrate the output.
# Creating the data frame with the given information
course_data <- data.frame(
  course = c(1, 2, 3, 4, 5, 6),
  id = c(11, 12, 13, 14, 15, 16),
  class = c(1, 2, 1, 2, 1, 2),
  marks = c(56, 75, 48, 69, 84, 53)
)
# Displaying the data frame
print("Course Data Frame:")
print(course_data)
# Subset using []
subset_course_less_than_5 <- course_data[course_data$course < 5, ]
# Display the subset
print("Subset of Course less than 5 using [] brackets:")
print(subset_course_less_than_5)
# ii. Create a subset where the course column is less than 4 or the class equals to 1 by using
# subset() function and demonstrate the output.
# Subset using subset()
subset_course_class_condition <- subset(course_data, course < 4 | class == 1)
# Display the subset
print("Subset where course < 4 or class == 1 using subset():")
print(subset_course_class_condition) 
# iii. Write a script to create a dataset named data1 in R containing following text.
# Text: 2, 3, 4, 5, 6.7, 7, 8.1, 9
# Create the dataset as text
data1 <- c("2", "3", "4", "5", "6.7", "7", "8.1", "9")
# View the dataset
print(data1)
