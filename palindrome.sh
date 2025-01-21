#!/bin/bash

read -p "Enter a string: " 'input_string'
if [[ "$input_string" == "$(rev <<< "$input_string")" ]]; 
then
    echo "$input_string is a palindrome"
else
    echo "$input_string is not a palindrome"
fi