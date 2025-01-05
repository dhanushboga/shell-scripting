#!/bin/bash

echo "Enter the File name"
read file

file_content=$(cat $file)

echo "The file content is $file_content"

for word in $file_content
do
Length_of_each_word=$(echo $word | tr -d " \t\n\r" | wc -m)
echo "Length of $word : $Length_of_each_word"
done

count_of_words=$(echo $file_content | wc -w)
echo "the Total number of words is $count_of_words"
