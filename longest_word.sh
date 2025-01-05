#!/bin/bash

echo "enter the file Name :"
read file

file_content=$(cat $file)

echo "The file content is $file_content"

count_of_words=$(echo $file_content | wc -w)

echo "the Total number of words is $count_of_words"