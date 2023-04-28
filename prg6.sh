#!/bin/bash
#script for the arithmetic operations
#
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
z=$(($num1+$num2))
echo "The addition is: $z"
z=$(($num1-$num2))
echo "The subraction is: $z"
z=$(($num1*$num2))
echo "The multiplication is: $z"
z=$(($num1/$num2))
echo "The division is: $z"
z=$(($num1%$num2))
echo "The modulus is: $z"
#End of the script
