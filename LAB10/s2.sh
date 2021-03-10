#!/bin/bash

mkdir -p "pliki_na_b"

for name in *
do
	echo $name
	firstletter="$(echo $name | head -c 1)"
	if [ $firstletter = "b" ]
	then		
		mv $name pliki_na_b/ 
	fi
done

