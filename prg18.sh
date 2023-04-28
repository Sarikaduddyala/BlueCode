#!/bin/bash
#using if else condition to check the status of the user(root or ordinary user)
if [ `id -u` -eq 0 ]
then
 echo "the user is root"
else
 echo "is an ordinary user"
fi
#end
 
