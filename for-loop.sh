#!/bin/bash

LOG_FOLDER="/var/log/module-logs"
LOG_FILE=$(echo $0 | cut -d '.' -f1)
TIME_STAMP=$(date +%Y-%M-%d-%H-%m-%s)
LOG_FILE_NAME=$LOG_FOLDER/$LOG_FILE-$TIME_STAMP.log

USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
      echo "$2........FAILURE"
    else
      echo "$2........SUCCESS"
    fi
}

CHECK_ROOT(){

if [ $USER_ID -ne 0 ]
then
  echo "ERROR::Please run this script under root super access"
fi

}

echo "The Script $0 run at $TIME_STAMP"

CHECK_ROOT

for package in $@
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
      dnf install $package -y
      VALIDATE $? "Installing $package"
    else
      echo "The $package is already installed"
    fi
done