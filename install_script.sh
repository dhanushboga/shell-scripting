#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
   echo "this requires root user access"
   exit 1
fi

