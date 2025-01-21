#!/bin/bash

input_file1="name age"
input_file2="pallavi 20"

n_cols=$(head -1 "$input_file" | wc -w)
for i in $(seq 1 "$n_cols"); do
    echo $(cut -d ' ' -f "$i" "$input_file")
done