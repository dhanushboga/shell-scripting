#!/bin/bash
echo "enter the lower limit :"
read lower
echo "enter the upper limit : "
read upper

for i in {$lower..$upper}
do
  echo $i
done