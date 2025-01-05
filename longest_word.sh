#!/bin/bash

while -r read $file;
do
Longest_word=$(echo $file | wc -l)
echo "the Longest word in the file is :" $Longest_word"
done >>> long_file.txt