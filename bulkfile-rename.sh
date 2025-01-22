#!/bin/bash

echo "test 001" > myfile.txt
echo "test 002" >> myfile.txt
echo "test 003" >> myfile.txt
echo "test 004" >> myfile.txt

mv rename.sh

# while read -r myfile
# do
#         mv -v "$myfile" `echo $myfile | awk -F ' ' '{print $2}'`
# done

# ${var/Pattern/Replacement}

# for file in pallavi-*_sh
# do
#     mv -i "${file}" "${file/-.-/-@-}"
# done

# # dir="/c/devops/daws-82s/repo/shell-script/bulkfile-rename.sh"

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
