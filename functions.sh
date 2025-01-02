#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo "Error :: please run this script under super user access"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
      then
        echo "$2........failure"
    else
        echo "$2........success"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
   then
     dnf install mysql -y
     VALIDATE $? "installing mysql"
   else
     echo "mysql is already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
  dnf install git -y
  VALIDATE $? "installing git"
else
  echo "git is already installed"
fi