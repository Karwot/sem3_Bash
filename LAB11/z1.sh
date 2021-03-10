#!/bin/bash

function maxValue()
{
	if [ $1 -gt $2 ]
	then
		echo $1 
	else
		echo $2
	fi
}

result=$(maxValue 7 8)
echo $result

