#!/bin/bash

echo "am learning aws course with Devops" > myfile.txt

sed 's/ /\n/g' myfile.txt | sort | uniq | awk '{print length, $0}' | sort -nr | head -n 1
