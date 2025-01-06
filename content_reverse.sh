#!/bin/bash

reverse_content_file="\home\ec2-user\reverse-file"

file=long_file.txt

file_content=$(cat $file)
echo "The file content is \n $file_content"

mkdir -p $reverse_content_file

rev_content=$(tac $file_content) &>> $reverse_content_file
echo "The reverse content is \n $rev_content"




