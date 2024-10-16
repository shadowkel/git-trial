#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The simple interest is: $interest"
}

# Input values
read -p "Enter principal amount: " principal
read -p "Enter rate of interest (in %): " rate
read -p "Enter time (in years): " time

# Calculate and display simple interest
calculate_simple_interest $principal $rate $time
