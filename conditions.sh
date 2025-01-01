#!/bin/bash

echo "enter the number : " $number
read number

#number=$1

if [ $number -gt 1000 ]
then
  echo "the $number is greater than 1000"
else
  echo "the $number is less than 1000"
fi
