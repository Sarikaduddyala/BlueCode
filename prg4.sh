#!/bin/bash
#script to create user and set passwd for the same.
read -p "Enter the user name:" name
read -sp "enter the passwd for the user $name :" pass
useradd $name
echo "$name:$pass"|chpasswd
echo -e "\nUser $name created.."
#End of the script
