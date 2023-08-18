#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=&0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)
VALIDATE(){

if [ $1 -ne 0 ]
 then 
    echo "$2.......failure"
    exit 1
else
     echo "$2 ........success"
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



