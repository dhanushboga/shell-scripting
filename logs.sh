#!/bin/bash


LOG_FOLDER="/var/log/shell_script_logs"
LOG_FILE=$(echo $0|cut -d '.' -f1)
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIME_STAMP.log"

USER_ID=$(id -u)
R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'


if [ $USER_ID -ne 0 ]
then
  echo "error :: please run this script under superuser access"
  exit 1
fi

VALIDATE(){
  if [ $? -ne 0 ]
  then
    echo -e "$2..........$R FAILURE $N"
  else
    echo -e "$2..........$G Success $N"
fi
}

echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

dnf list installed mysql &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then
  dnf install mysql -y
  VALIDATE $? "Installing MYSQL"
else
  echo -e "MYSQL is already.......$Y installed $N"
fi

dnf list installed git &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then
  dnf install git -y &>>$LOG_FILE_NAME
  VALIDATE $? "Installing GIT"
else
  echo -e "GIT is already.........$Y installed $N"
fi