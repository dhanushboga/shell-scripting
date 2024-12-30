#!/bin/bash

echo "it's time to do Arithmetic Operations using functions"

echo "Enter the first Number:" 
read num1
echo "Enter the second Number:" 
read num2

sum(){
    sum=$(($num1+$num2))
    echo "sum of $1 and $2 :" $sum
}

sum $num1 $num2

sub(){
    sub=$(($num1-$num2))
    echo "sub 0f $1 and $2 :" $sub
}

sub $num1 $num2

mul(){
    mul=$(($num1*$num2))
    echo "Mul of $1 and $2 : " $mul
}

mul $num1 $num2

Div(){
    div=$(($num1/$num2))
    echo "Div of $1 and $2 : " $div
}

Div $num1 $num2

mod(){
    mod=$(($1%$2))
    echo "Mod of $1 and $2 : " $mod
}

mod $num1 $num2

echo "wow it's completed the arithmetic operations for $num1 and $num2"