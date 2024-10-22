# Which R commands will Mr. John use to enter these values? Demonstrate the output.
# Create a data frame with the given records
employee_data <- data.frame(
  sr_number = 1:10,
  name = c("Vivek", "Karan", "James", "Soham", "Renu", "Farah", "Hetal", "Mary",
           "Ganesh", "Krish")
)
print("Employee Dataset:")
print(employee_data)
salary <- c(21000, 55000, 67000, 50000, 54000, 40000, 30000, 70000, 20000, 15000)
employee_data$salary <- salary
# Display the dataset
print("Employee Dataset:")
print(employee_data)

# Now Mr. John wants to add the salaries of 5 new employees in the existing table, which commands he will use to join datasets with new values in R. Demonstrate the output.
# Create a data frame with the salaries of 5 new employees
new_employees <- data.frame(
  sr_number = 11:15,
  name = c("Amit", "Neha", "Rahul", "Sara", "Rohit"),
  salary = c(60000, 45000, 58000, 52000, 48000)
)
# Join the new salaries with the existing dataset
combined_data <- rbind(employee_data, new_employees)
# Display the combined dataset
print("Combined Employee Dataset:")
print(combined_data)