#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
 echo "error: INSTALLATion cancel"
 exit 1
else
 echo " ALLOW THE INSTALLATION"

fi

yum install mysqlll -y


if [ $? -ne 0 ]
then 
    echo "Installation  of mysql is error"
    exit 1
else
     echo "installation of mysql is success"

fi