# Define rainfall data (example values)
rainfall <-c(799,1174,865,1334.6,635.4,413.5,6855,9986,784.2,985,862.8,1071)

# Converting into a time series 
rainfall.timeseries <- ts(rainfall, start=c(2023,1), frequency=12)

# Print time series
print(rainfall.timeseries)

# Visualize the time series
png(file="rainfall.png")  # Save the plot as an image file

# Plot the time series
plot(rainfall.timeseries)

# Save the file
dev.off()

