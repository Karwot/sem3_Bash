#!/bin/bash

isint() {
	if [[ $((input)) != $input ]] 
	then 
		return 1;
	else
		return 0;
	fi
}

sum=0
i=0
input=0
while [ $input != "koniec" ] 
do
read input
if(isint -eq 1)
then

sum=$((sum+$input))
i=$((i+1))
else
echo not a number
fi


done

echo "scale=2;$sum/$i" | bc