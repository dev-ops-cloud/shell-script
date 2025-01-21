#!/bin/bash

File1=$(23 44 56 78 88 56)
File2=$(56 66 88 44 23 11)

File=$(file@)

sort $file | uniq -cd