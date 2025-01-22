#!/bin/bash

dir="/c/devops/daws-82s"

timestamp=$(date +%Y%m%d)

for file in "$dir"/*.txt;
do
if [ -f "$file" ];then
   filename=$(basename "$file")
   echo "file is there in directry: $file"

   mv "$file" "$dir/${timestamp}_$filename"

 else

    echo "file is not found"
    exit 1

 fi
 done

 echo "Renaming complete."
