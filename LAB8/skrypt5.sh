#!/bin/bash

echo "Wpisz cyfre"
read a

for (( j=0; j<=a; j++ ))
do
case $j in
0) echo -e "zero " ;;
1) echo -e "one " ;;
2) echo -e "two " ;;
3) echo -e "three " ;;
4) echo -e "four " ;;
5) echo -e "five " ;;
6) echo -e "six " ;;
7) echo -e "seven " ;;
8) echo -e "eight " ;;
9) echo -e "nine " ;;
esac

done