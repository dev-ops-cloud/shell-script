#!/bin/bash

FILE_NAME="/home/devops/daws-82s/repo/shell-script/18-count-word.sh"
Number_of_Lines= $( WC --lines < $FILE_NAME )
Number_of_words= $( wc --word < $FILE_NAME ) 

echo "I am learning Devops with AWS Course"
echo "First we finished linux commands"
echo "we started connecting database, backend and frontend servers"
echo "we completed linux project"
echo "we completed shell-script expense project too"