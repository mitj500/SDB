# Create an employee vector with 10 employee names
employee <- c("John", "Alice", "Bob", "Eve", "James", "Lucy", "David", "Sara", "Tom", "Emma")

# Create a salary vector with 10 corresponding salaries
salary <- c(50000, 60000, 55000, 62000, 58000, 49000, 53000, 61000, 57000, 59000)

# Create a data frame EMP from the two vectors
EMP <- data.frame(Employee_Name = employee, Salary = salary)

# Print the EMP data frame
print(EMP)