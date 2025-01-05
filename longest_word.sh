#!/bin/bash

file="long_file.txt"
while -r read $file
do
Longest_word=$(echo $file | wc -l)
echo "the Longest word in the file is :" $Longest_word"
done