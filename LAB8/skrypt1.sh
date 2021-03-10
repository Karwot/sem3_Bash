#!/bin/bash

echo "podaj a"
read a
echo "podaj b"
read b

if [ $a -gt $b ] 
then
echo 'zmienna a jest wieksza'
else
echo 'zmienna b jest wieksza'
fi

