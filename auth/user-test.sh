#!/bin/bash
#This program validates if user is current logged in user
#It can be extended as a simple validation script

read -p "Username: " username

if [[ $username = $USER ]] ; then
 echo "Welcome $username"
else
 echo "Error: Unknown user $username!"
fi

