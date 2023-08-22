#!/bin/bash

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE tmpfs)
DISK_USAGE_THRESHOLD=1
message=""

#IFS= means internal feild seperator is space.
while IFS= read line
do  
  USAGE=$(echo $line awk '{print $6}'| cut -d % -f1
  partition=$(echo $line | awk '{print $1}')
  if [ $usage -gt $DISK_USAGE_THRESHOLD ];
  then
     messages+="HIGH DISK USAGE ON $partition: $usage"
 fi
done <<<$DISK_USAGE
echo "messages:$messages