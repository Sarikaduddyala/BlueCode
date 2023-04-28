#!/bin/bash
#checking the biggest number among three numbers
read -p "Enter the first number" num1
read -p "Enter the second number" num2
read -p "Enter the third number" num3
#Test which  number is big
if [ $num1 -gt $num2 -a  $num1 -gt $num3 ] 
then
  echo "$num1 is big"
elif [ $num2 -gt $num3 ]
then
  echo "$num2 is bigger"
elif [[ $num3 -gt $num2 ]]
then
 echo "$num3 is big"
fi
