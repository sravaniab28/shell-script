#!/bin/bash

USERID=$(id -u)
VALIDATE(){

if [ $1 -ne 0 ]
 then 
    echo "Installation........failure"
    exit 1
else
     echo "installation ........success"
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

VALIDATE $? "installation of mysql"

yum install postfix -y

VALIDATE $? "installation of postfix"



