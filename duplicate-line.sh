#!/bin/bash

echo "1234" > myfile.txt
echo "abcd" >> myfile.txt
echo "1111" >> myfile.txt
echo "1234" >> myfile.txt
echo "5678" >> myfile.txt
echo "1234" >> myfile.txt
echo "1111" >> myfile.txt
echo "abcd" >> myfile.txt

sort myfile.txt | uniq -c

# once we did pull and push then we need type cat myfile.txt