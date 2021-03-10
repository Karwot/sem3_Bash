#!/bin/bash

until [[ -f $fileName ]] 
do
echo Podaj nazwe pliku:
read fileName
done 

for file in * 
do
	if [[ $fileName -nt $file ]]
	then
		mv $file $file-old
	fi
done
