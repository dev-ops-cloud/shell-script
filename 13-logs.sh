#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
LOGS_FOLDER="/var/log/shell script-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESRAMP.log"


VALIDATE(){
     if [ $1 -ne 0 ] 
     then 
        echo -e "$2 ....$R FAILURE"
        exit 1
      else
        echo -e "$2 ...$G SUCCESS"
     fi
}  

echo "Script started executed at: $TIMESTAMP" &>>$LOG_FILE

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute this script "
    exit 1 #other than 0
 fi

 dnf list installed mysql &>>$LOG_FILE

 if [ $? -ne 0 ]
 then
     dnf install mysql -y &>>$LOG_FILE
     VALIDATE $? "Installing MySQL"
else
          echo -e "MySQL already.... $Y INSTALLED"
       
    fi


 dnf list installed git &>>$LOG_FILE

 if [ $? -ne 0 ]
 then
    dnf install git -y &>>$LOG_FILE
    VALIDATE  $? "Installing Git"
else
    echo -e "Git is already ... $Y Installed"

  fi  
