#!/bin/bash

echo "Name age" > myfile.txt
echo "Pallavi 25" >> myfile.txt
echo "rushika 22" >> myfile.txt
echo "Deepak 30" >> myfile.txt

awk '{ for (i=1; i<=NF; i++) a[i]= (a[i]? a[i] FS $i: $i) } END{ for (i in a) print a[i] }' myfile.txt

# once we did push and pull then we need to use cat myfile.txt
