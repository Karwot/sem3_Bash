#!/bin/bash

for name in * 
do

	lastLetter="$(echo $name | tail -c 2)"

	if [[ "$lastLetter" == "c" ]] 
	then
		gcc $name &>/dev/null
		if [[ $? -eq 0 ]] 
		then
			./a.out
			echo ""
		else
			echo "Blad kompilacji pliku $name"
		fi
	fi
done