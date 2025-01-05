#!/bin/bash

echo=$(var"10 20 30 40 50")
set --$var; unset a
for((i=$#;i>0;i--))
do
echo "printf '%s%s' "${a:+ }" "${!i}""
   a=1
 done
 echo "reverse the numbers"  