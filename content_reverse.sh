#!/bin/bash

file=long_file.txt

rev_content=$(cat $file | tac | rev )

echo $rev_content






