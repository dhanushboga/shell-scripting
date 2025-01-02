#!/bin/bash

USER_ID=$(id -u)
R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'

if [ $USER_ID -ne 0 ]
then
  echo "error :: please run this script under superuser access"
  exit 1;
fi

VALIDATE(){
if [ $1 -ne 0 ]
  then
    echo -e "$2..........$R FAILURE $N"
  else
    echo -e "$2..........$G Success $N"
fi
}

dnf list installed mysql

if [ $? -ne 0 ]
then
  dnf install mysqll -y
  VALIDATE $? "installing MYSQL"
else
  echo -e "MYSQL is already.......$Y installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then
  dnf install git -y
  VALIDATE $? "installing GIT"
else
  echo -e "GIT is already.........$Y installed"
fi