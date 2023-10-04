#!/bin/bash
# Description: This Bash script takes 2 command-line arguments, subtracts the smaller from the larger,
# and counts down from the difference to 1, printing each count to stdout.

# Usage: ./subtractMachine.sh <number1> <number2>

# Example Invocation:
#   ./subtractMachine.sh 10 5

# Check if exactly 2 command-line arguments are provided
if [ $# -ne 2 ]; then
	  echo "Usage: ./subtractMachine.sh <number1> <number2>"
	    exit 1
fi

# Assign command-line arguments to variables
number1="$1"
number2="$2"

# Determine the larger and smaller numbers
if [ "$number1" -gt "$number2" ]; then
	  larger="$number1"
	    smaller="$number2"
    else
	      larger="$number2"
	        smaller="$number1"
fi

# 1. Subtract the smaller number from the larger and print out the difference to stdout.
difference=$((larger - smaller))
echo "Difference between $larger and $smaller is: $difference"

# 2. Count down from the difference to 1 and print each count to stdout.
echo "Counting down from $difference to 1:"
for ((i = difference; i >= 1; i--)); do
	  echo "$i"
  done

