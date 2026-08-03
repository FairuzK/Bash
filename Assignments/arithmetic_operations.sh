#!/usr/bin/env bash
set -euo pipefail

# Prompt user for input
 
read -rp "Enter first number: " num1
read -rp "Enter second number: " num2

# Validate that inputs are numbers (integers or decimals)
re='^-?[0-9]+([.][0-9]+)?$'
if ! [[ $num1 =~ $re ]] || ! [[ $num2 =~ $re ]]; then
  echo "Error: please enter valid numbers." >&2
  exit 1
fi

# Perform arithmetic using bc (supports decimals)
addition=$(echo "$num1 + $num2" | bc)
subtraction=$(echo "$num1 - $num2" | bc)
multiplication=$(echo "$num1 * $num2" | bc)

echo ""
echo "Results:"
echo "$num1 + $num2 = $addition"
echo "$num1 - $num2 = $subtraction"
echo "$num1 × $num2 = $multiplication "

# Handle division by zero
if [[ $(echo "$num2 == 0" | bc) -eq 1 ]]; then
  echo "$num1 ÷ $num2 = Error: division by zero"
else
  division=$(echo "scale=4; $num1 / $num2" | bc) #Line to perform division with 4 decimal places
  # Strip trailing zeros (and a trailing dot, if left bare) for cleaner output.
  division=$(echo "$division" | sed -e 's/0*$//' -e 's/\.$//')
  echo "$num1 ÷ $num2 = $division"
fi