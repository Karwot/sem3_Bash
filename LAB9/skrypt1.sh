#!/bin/bash
file=numbers.txt

sum=0
n=0

while read line
do
echo $line

if [ $n -eq 0 ]
then
	max=$line
	min=$line
else
	if [ $line -gt $max ]
	then
		max=$line
	fi
	if [ $line -lt $min ]
	then
		min=$line
	fi

fi

sum=$((sum+$line))


n=$((n+1))
done < $file

echo suma: $sum max: $max min: $min
