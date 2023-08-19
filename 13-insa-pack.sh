#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
VALIDATE(){
    if [ $1 -ne 0]
    then 
    echo -e "installing....$R failure $N"
    exit
    else
    echo -e"installing ....$G success $N"
    fi
    
}
if [ $USERID -ne 0 ]
then 
    echo -e "$R ERROR: please run with root access $N"
    exit 1
fi

for i in $@
do 
yum list installed $i &>>$LOGFILE
if [ $? -ne 0 ]
then
  echo "$i is not instaaled lets install"
  yum install $i -y &>>$LOGFILE
  VALIDATE $? "$i"
else
   echo -e "$Y $i is already installed $N"

   fi
 done

