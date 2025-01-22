#!/bin/bash

file.txt= " AWS with DevOps"

grep -E ".{$(wc -w < file.txt)}" file.txt