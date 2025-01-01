#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
   echo "this requires root user access"
   exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
  then
    dnf install git -y
    if [$? -ne 0 ]
    then
      echo "installing Git.......failure"
      exit 1
    else
      echo "installing Git........success"
    fi
else
   echo "Git is already installed"
fi

dnf list installed mysql

if [ $? -ne 0 ]
   then 
   dnf install mysql -y
   if [ $? -ne 0 ]
   then
      echo "installing mysql-server.......failure"
      exit 1
   else
      echo "installing mysql-server........success"
   fi
else
   echo "mysql-server is already present"
fi