#Write the script to sort the values contained in the following vector in ascending order and descending order: (23, 45, 10, 34, 89, 20, 67, 99). Demonstrate the output.
# Define the vector
vector <- c(23, 45, 10, 34, 89, 20, 67, 99)
# Sort in ascending order
ascending_order <- sort(vector)
# Sort in descending order
descending_order <- sort(vector, decreasing = TRUE)
# Display the results
ascending_order
descending_order

#Name and explain the operators used to form data subsets in R.
V <- c(1,2,3,4,5,6)
subset(V, V<4)
# Sample Output
# [1] 1 2 3
# [ ] brackets can also be used to create subset of the data
Name <- c("N1","N2","N3","N4")
Marks <- c(50, 40 , 35, 20)
Df= data.frame(Name, Marks)
Df [Df$Marks < 40,] 