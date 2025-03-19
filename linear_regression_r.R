# Create a relationship between height and weight

# Values of height in cm
z <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# Values of weight in kg
y <- c(63, 81, 66, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function (Linear Regression Model)
relation <- lm(y ~ z)
print(relation)

# Get the summary of the model
print(summary(relation))

# Predict the weight for a person with height 170 cm
a <- data.frame(z = 170)
result <- predict(relation, a)
print(result)

# Visualize the regression line
png(file = "linearregression.png")  # Save plot as an image

# Plot scatter plot
plot(z, y, col = "blue", 
     main = "Height & Weight Regression", 
     cex = 1.3, pch = 16, 
     xlab = "Height in cm", ylab = "Weight in kg")

# Add the regression line 
abline(relation, col = "red")

# Save the output
dev.off()
