#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then 
   echo "$NUMBER IS GREATER THAN 100"
else
    echo "$NUMBER IS NOT GREATERTHAN 100"
fi