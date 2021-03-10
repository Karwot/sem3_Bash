#!/bin/bash

function find()
{
sign=$1
found=0

for((i=0 ; i <  ${#arr[@]}; i++))
do
	if [[ "${arr[$i]}" == "$sign" ]]
	then
		found=$((found+1))
	fi
done

if [ $found -eq 1 ]
then
	echo znaleziono
else
	echo nie znaleziono
fi

}

arr=(a b c d e f g h i j k l)
echo -n arr=
echo  "${arr[@]}"

echo "f:"
find f

echo "z:"
find z