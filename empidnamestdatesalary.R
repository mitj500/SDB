# Step i: Create a data frame from the given vectors
emp_id <- c(1:5)
emp_name <- c("Rick", "Dan", "Michelle", "Ryan", "Gary")
start_date <- as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27"))
salary <- c(60000, 45000, 75000, 84000, 20000)
# Create the data frame
employee_data <- data.frame(emp_id, emp_name, start_date, salary)
# Step ii: Display structure and summary of the data frame
str(employee_data)
summary(employee_data)
# Step iii: Extract the emp_name and salary columns
employee_data[ , c("emp_name", "salary")]
# Step iv: Extract employee details whose salary is less than or equal to 60000
employee_data[ employee_data$salary <= 60000, ]