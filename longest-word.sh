#!/bin/bash

longest=0
Word= $(Aws with DevOps)

len=${#word}
    if (( len > longest ))
    then
        longest=$len
        longword=$word
    fi

echo " printf 'The longest word is %s and its length is %d.\n' "$longword" "$longest" "