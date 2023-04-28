The way to get started is to quit talking and begin doingThe way to get started is to quit talking and begin doing#!/bin/bash
#check if the given user is locked?
read -p "Enter the username:" user
grep -w ^$user /etc/shadow >/dev/null 2>&1
if [ $? -eq 0 ]
then
 echo "User found.... checking if $user locked.."
grep -w ^$user /etc/shadow|cut -f2 -d:|grep ^! >/dev/null 2>&1
if [ $? -eq 0 ]
then
 echo "user is locked"
else
 echo "user $user is not locked...."
fi #inner if closed
else
 echo "user $user not found"
fi #outter if closed
#end
