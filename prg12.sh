#!/bin/bash
#script to create user if not exist and set passwd for the same.
read -p "Enter the user name:" name
grep -w ^$name /etc/passwd>/dev/null
if [[ $? -eq 0 ]]
then
 echo "User $name found in the system. Could not create.. Exiting"
else
read -sp "enter the passwd for the user $name:" pass
useradd $name
echo "$name:$pass"|chpasswd
echo -e "\nUser $name created.."
fi
#if End here
#end of the script
