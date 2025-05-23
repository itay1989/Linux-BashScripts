#!/bin/bash

# Ask for initial investment
read -p "Enter your initial investment for today: " investment

# Ask for desired ROI in percentage
read -p "Enter your desired ROI for today (in %): " roi_percent

# Convert ROI percentage to decimal
roi_decimal=$(echo "scale=4; $roi_percent / 100" | bc)

# Calculate profit
profit=$(echo "scale=2; $investment * $roi_decimal" | bc)

# Calculate total return
total=$(echo "scale=2; $investment + $profit" | bc)

# Output results
echo "To achieve a ${roi_percent}% ROI:"
echo "➤ You need to make \$${profit} profit."
echo "➤ Your total return should be \$${total}."

