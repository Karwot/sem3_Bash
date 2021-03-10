#!/bin/bash

echo "podaj a"
read a
echo "podaj b"
read b

echo '1...'
if [ $a -gt $b ] 
then
echo 'zmienna a jest wieksza od b'
else
echo 'zmienna a nie jest wieksza od b'
fi

echo '2...'
if [ $a -eq $b ] 
then
echo 'zmienna a jest rowna b'
else
echo 'zmienna a nie jest rowna b '
fi

echo '3...'
if [ $a -lt $b ] 
then
echo 'zmienna a jest mniejsza od b'
else
echo 'zmienna a nie jest mniejsza od b '
fi