#!/bin/bash

rev file.txt > reversed_file.txt

string="Hello World"
reversed_string=$(echo "$string" | rev)
echo "$reversed_string"
