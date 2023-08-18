#!/bin/bash

USERID=$(id -u)
VALIDATE(){

if [ $1 -ne 0 ]
then 
    echo "Installation........SUCCESS"
    exit 1
else
     echo "installation ........FAILURE""

fi
}

if [ $USERID -ne 0 ]
then
 echo "error: INSTALLATion cancel"
 exit 1
else
 echo " ALLOW THE INSTALLATION"

fi

yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?


