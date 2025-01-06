#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | tac \n)

echo $rev_content






