#!/bin/bash -x
#Create a new uuid for a vbox disk
echo
a=" ### "
echo $a.Open the .vbox file in a text editor.$a

echo $a.replace the UUID found in Machine uuid=$a

echo $a.Replace the UUID found in HardDisk uuid=.$a
echo $a.Replace the Image uuid= towards the end.$a
echo

if [[ ! -f $1 ]] 
then
 echo "Usage: ./vbox-uuid.sh [/path/to/file.vbox]"
 echo "Example: ./vbox-uuid.sh /home/user/hdd.vbox"
else
  VBoxManage internalcommands sethduuid $1 | sed 's/UUID changed to: //' -
  
fi
