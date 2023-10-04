#!/bin/bash

# This Bash script takes 4 command-line arguments, calculates the sum of the first three numbers,
# and then executes another script named subtractMachine.sh with the sum and the fourth argument.

# Usage: ./threeAmigos.sh <num1> <num2> <num3> <num4>

# Example Invocation:
#   ./threeAmigos.sh 5 10 15 2

# Check if exactly 4 command-line arguments are provided
if [ $# -ne 4 ]; then
	  echo "Usage: ./threeAmigos.sh <num1> <num2> <num3> <num4>"
	    exit 1
fi

# Assign command-line arguments to variables
num1="$1"
num2="$2"
num3="$3"
num4="$4"

# 1. Sum the first three numbers.
sum=$((num1 + num2 + num3))
echo "Sum of $num1, $num2, and $num3 is: $sum"

# 2. Execute the subtractMachine.sh script with the sum and the fourth argument.
echo "Executing subtractMachine.sh with arguments $sum and $num4..."
./subtractMachine.sh "$sum" "$num4"






