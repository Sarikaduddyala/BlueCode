#!/bin/bash
#script to create user if not exits, username is not null string  and set passwd for the same.
read -p "Enter the user name:" name
if [[ -n $name ]]
then
  grep -w ^$name /etc/passwd>/dev/null
   if [[ $? -eq 0 ]]
   then
    echo "User $name found in the system. Could not create.. Exiting"
   else
    read -sp "enter the passwd for the user $name :" pass
  useradd $name
   echo "$name:$pass"|chpasswd
   echo -e "\nUser $name created.."
  fi
#if End here
else
 echo "Invalid User name.. Try again.."
fi
#outer if endes here
#End of the script
