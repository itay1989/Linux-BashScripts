#!/bin/bash

# Ask for user input
read -p "Enter your initial investment amount: " initial
read -p "Enter your daily ROI percentage (e.g., 1 for 1%): " roi_percent

# Convert ROI to decimal
roi=$(echo "scale=5; $roi_percent / 100" | bc)

# Function to calculate compound interest
calculate_value() {
  days=$1
  echo "scale=2; $initial * (1 + $roi)^$days" | bc -l
}

# Days to report
for day in 50 60 90 100 120 150 200
do
  value=$(calculate_value $day)
  echo "After $day days: \$${value}"
done
