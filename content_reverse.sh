#!/bin/bash

reverse_content_file="\home\ec2-user\reverse-file"

file=long_file.txt

file_content=$(cat $file)
echo "The file content is : $file_content"

rev_content=$(echo $file_content | tac )

echo "The reverse content is : $rev_content"




