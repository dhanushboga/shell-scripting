#!/bin/bash

FILE_DIR="/Users/Bogad/devops/*.txt"
TIME_STAMP=$(date +%Y-%m-%d)


for file in $FILE_DIR
do
       echo "File Exists : $file"
       mv $file $FILE_DIR/$TIME_STAMP_$file
done
   echo "renaming completed"