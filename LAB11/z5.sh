#!/bin/bash

r=$(( 1+ $RANDOM % 3))
#echo $r
echo zgadnij liczbe z zakresu od 1 do 3
read input

if [ $input -eq $r ]
then
	echo dobra odpowiedz
	exit 1
else 
	echo zla odpowiedz
	exit 0
fi