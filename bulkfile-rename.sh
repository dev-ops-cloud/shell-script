#!/bin/bash

echo "pallavi 123.sh" > myfile.txt
echo "pallavi 345.sh" >> myfile.txt
echo "pallavi 567.sh" >> myfile.txt
echo "pallavi 789.sh" >> myfile.txt

${var/Pattern/Replacement}

for file in pallavi-*_sh
do
    mv -i "${file}" "${file/-.-/-@-}"
done

# dir="/c/devops/daws-82s/repo/shell-script/bulkfile-rename.sh"

# timestamp=$(date +%Y%m%d)

# for file in "$dir"/*.txt;
# do
# if [ -f "$myfile" ];then
#    filename=$(basename "$myfile")
#    echo "file is there in directry: $myfile"

#    mv "$myfile" "$dir/${timestamp}_$filename"

#  else

#     echo "file is not found"
#     exit 1

#  fi
#  done

#  echo "Renaming complete."
