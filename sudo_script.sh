#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
   echo "Error : Please run this script under super user access"
fi
