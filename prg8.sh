#!/bin/bash
read -p "Enter the first number" num1
read -p "Enter the second number" num2
#Test if the first number is big
if test $num1 -gt $num2
then
  echo "Given number $num1 is bigger than $num2"
fi
#test if the first number is small
if test $num1 -lt $num2
then
 echo "Given number $num2 is bigger than $num1"
fi

#Test for equal
if test $num1 -eq $num2
then
  echo "Given numbers are equal to each other"
fi

#end

