#!/bin/bash

c=("bialy" "niebieski" "czerwony" "zolty" "brazowy" "czarny" "zielony" "fioletowy")

for(( i=0;i<${#c[@]};i++))
do 
	rnd[$i]=${c[$RANDOM % ${#c[@]} ]}
	echo "${rnd[$i]}"
done