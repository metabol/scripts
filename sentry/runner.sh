#!/bin/bash
# Recursively apply command to a list of targets
filename="target.txt"
cmd ="hostname"
user="root@"
while read -r target
do
    echo "Applying command $cmd to $target"
    ssh -t $user$target $cmd
done < "$filename"
