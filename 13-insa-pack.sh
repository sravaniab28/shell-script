#!/bin/bash

USERID=$(id -u)
R="\e[31m"
N="\e[0m"


if [ $USERID -ne 0 ]
then 
    echo -e "$R ERROR: please run with root access $N"
    exit 1
fi

