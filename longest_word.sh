#!/bin/bash

echo "enter the file Name :"
read file

file_content=$(cat $file)

echo "The file content is $file_content"

for word in $file_content
do
 
 echo $word

count_of_words=$(echo $file_content | wc -w)

echo "the Total number of words is $count_of_words"

done