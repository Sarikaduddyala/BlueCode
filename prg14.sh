#!/bin/bash
read -p "Enter first value:" num1
read -p "Enter second value:" num2
read -p "Enter third value:" num3
#Script to check the biggest number among three
if [[ $num1 -gt $num2 ]]&&[[ $num1 -gt $num3 ]]
then
 echo "$num1 is big"
else
if [[ $num2 -gt $num3 ]]
then
 echo "$num2 is big"
else
 echo "$num3 is big"
fi
fi
#end
