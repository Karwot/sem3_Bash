#!/bin/bash

input=0
file=list.txt

while [ $input != "koniec" ] 
do
echo "jaka operacje chcesz wykonac? dodaj/wypisz/koniec"
read input


if [ $input == "dodaj" ]
then
	echo "Podaj imie: "
	read name
	echo "Podaj nazwisko: "
	read lastName
	echo "Podaj numer: "
	read number
	echo "$name $lastName $number" >> list.txt
fi

if [ $input == "wypisz" ]
then
	echo "Podaj imie osoby, ktorej numer chcesz wyswietlic"
	read nameToPrint
	echo "Podaj nazwisko osoby, ktorej numer chcesz wyswietlic"
	read lastNameToPrint

	while read line 
	do
		firstNameInFile=$(echo $line | awk {'print $1'})
		lastNameInFile=$(echo $line | awk {'print $2'})
		
		if [ "$firstNameInFile" == "$nameToPrint" ]; 
		then
			if [ "$lastNameInFile" == "$lastNameToPrint" ]; 
			then
				echo -n "$nameToPrint $lastNameToPrint: "
				echo $line | awk {'print $3'}
			fi
		fi
		 
	done < $file
fi

done
