#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
 echo "error: INSTALLATion cancel"
else
 echo " ALLOW THE INSTALLATION"

fi


yum install git -y
