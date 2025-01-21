#!/bin/bash

if [ $# -gt 2 ]
then
  echo"System error">&2
exit 1

if [[ $# -eq 2 && -e "$2" && -r "$2" ]]
then 
while read -a line; do
    for ((i=0; i < "${#line[@]}"; i++)); do
        a[$i]="${a[$i]} ${line[$i]}"
    done
done < $2

for ((i=0; i < ${#a[@]}; i++)); do
    echo ${a[i]}
done


fi