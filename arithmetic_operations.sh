#!/bin/bash

operations(){
    
    local num1="$1"
    local num2="$2"
    
    echo "Addition: $(($num1 + $num2))"
    echo "Subtraction: $((num1 - num2))"
    echo "Multiplication: $((num1 * num2))"
    echo "Division: $((num1 / num2))"

}
operations 34 56