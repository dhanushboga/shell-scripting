#!/bin/bash


read -p "enter the number : " num

echo "The Multiplication table is below :"
for i in {1..10}
do
     multiply=$(($num*$i))
     echo $num 'X' $i = $multiply
done