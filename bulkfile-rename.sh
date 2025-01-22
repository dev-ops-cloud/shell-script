#!/bin/bash

echo "123.sh" > myfile.txt
echo "abc.sh" >> myfile.txt
echo "456.sh" >> myfile.txt
echo "xyz.sh" >> myfile.txt

dir="/c/devops/daws-82s/repo/shell-script/bulkfile-rename.sh"

timestamp=$(date +%Y%m%d)

for file in "$dir"/*.txt;
do
if [ -f "$myfile" ];then
   filename=$(basename "$myfile")
   echo "file is there in directry: $myfile"

   mv "$myfile" "$dir/${timestamp}_$filename"

 else

    echo "file is not found"
    exit 1

 fi
 done

 echo "Renaming complete."
