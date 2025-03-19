# Load necessary library
library(ggplot2)  # For visualization

# Step 1: Create sample data (Height & Weight)
set.seed(42)  # Ensures reproducibility
data <- data.frame(
  height = c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131),
  weight = c(63, 81, 66, 91, 47, 57, 76, 72, 62, 48)
)

# Step 2: Scale the data (recommended for better clustering)
data_scaled <- scale(data)

# Step 3: Apply K-means clustering with K=2 (two clusters)
kmeans_result <- kmeans(data_scaled, centers = 2, nstart = 25)

# Print cluster assignments
print(kmeans_result$cluster)

# Step 4: Visualize the Clusters
data$cluster <- as.factor(kmeans_result$cluster)  # Convert cluster to factor

ggplot(data, aes(x = height, y = weight, color = cluster)) +
  geom_point(size = 4) +
  labs(title = "K-Means Clustering (Euclidean Distance)", x = "Height (cm)", y = "Weight (kg)") +
  theme_minimal()

