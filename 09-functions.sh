#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"



VALIDATE(){

if [ $1 -ne 0 ]
 then 
    echo "$2.......$R failure $N"
    exit 1
else
     echo "$2 ........$G success $N"
fi
}

if [ $USERID -ne 0 ]
then
     echo "error: INSTALLATion cancel"
 exit 1
else
 echo " ALLOW THE INSTALLATION"

fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "installation of mysql"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "installation of postfix"



