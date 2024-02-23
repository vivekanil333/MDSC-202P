# Generate a random square matrix
set.seed(123)  # Set seed for reproducibility
n <- 5  # Size of the square matrix
A <- matrix(rnorm(n^2), nrow = n)

# Calculate eigenvalues and eigenvectors
eigen_result <- eigen(A)

# Print eigenvalues
cat("Eigenvalues:\n")
print(eigen_result$values)

# Print eigenvectors
cat("\nEigenvectors:\n")
print(eigen_result$vectors)

# Normalize eigenvalues
normalized_eigenvalues <- eigen_result$values / sum(eigen_result$values)

# Print normalized eigenvalues
cat("Normalized Eigenvalues:\n")
print(normalized_eigenvalues)