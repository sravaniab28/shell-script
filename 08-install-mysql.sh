#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
 echo "$USERID INSTALLATion cancel"
else
 echo "$USERID ALLOW THE INSTALLATION"

fi