#!/bin/bash

echo "enter the file Name :"
read file

file_content=$(cat $file)

echo "The file content is $file_content"