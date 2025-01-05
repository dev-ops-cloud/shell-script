#!/bin/bash

input_file="$1"

# Get the number of columns in the file
n_cols=$(head -1 "$input_file" | wc -w)

# Transpose the file
for i in $(seq 1 "$n_cols"); do
  cut -d ' ' -f "$i" "$input_file" | tr '\n' ' '
  echo
done