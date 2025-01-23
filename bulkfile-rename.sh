#!/bin/bash

dir="/home/ec2-user/shell-script"

timestamp=$(date +%Y%m%d)

for file in "$dir"/*.png;
do 
 if [ -f "$file" ]; then
 
  filename=$(basename "$file")
  echo "file is there in directory: $file"

  mv "$file" "$dir/${timestamp}_$filename"

  else
       echo "file is not found"
       exit 1
 fi
 done

 echo "renaming complete."   
