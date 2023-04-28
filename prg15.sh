#!/bin/bash
#script to create user if the string entered is non zero or the user is not available and set passwd for the same.
read -p "Enter the user name:" name
if((! -z $name))||((`grep -w ^$name /etc/passwd>/dev/null`))
then
 echo "User $name found in the system. Could not create.. Exiting"
else
 read -sp "enter the passwd for the user $name :" pass
 useradd $name
 echo "$name:$pass"|chpasswd
 echo -e "\nUser $name created.."
fi
#if End here
#End of the script
