# Create a subset of course less than 3 by using [ ] brackets and demonstrate the output.
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
subset_course_less_than_3 <- course_data [ course_data$course < 3, ]
# Display the subset
print("Subset of Course less than 3 using [] brackets:")
print(subset_course_less_than_3)

# Create a subset where the course column is less than 3 or the class equals to 2 by using subset() function and demonstrate the output.
# Subset using subset()
subset_course_class_condition <- subset(course_data, course < 3 | class == 2)
# Display the subset
print("Subset where course < 3 or class == 2 using subset():")
print(subset_course_class_condition)
