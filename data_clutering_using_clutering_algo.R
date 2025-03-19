# Load necessary library
library(ggplot2)

# Load the dataset
data(iris)

# Remove the species column (we are doing unsupervised learning)
iris_data <- iris[, -5]

# View first few rows
head(iris_data)

# Standardize the data for better clustering
iris_scaled <- scale(iris_data)

# Apply K-Means clustering (K=3 since there are 3 species)
set.seed(42)  # Ensures reproducibility
kmeans_result <- kmeans(iris_scaled, centers = 3, nstart = 25)

# Add cluster labels to the dataset
iris$Cluster <- as.factor(kmeans_result$cluster)

# Visualize the clusters using Sepal.Length and Sepal.Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Cluster)) +
  geom_point(size = 3) +
  labs(title = "K-Means Clustering on Iris Dataset",
       x = "Sepal Length", y = "Sepal Width") +
  theme_minimal()

