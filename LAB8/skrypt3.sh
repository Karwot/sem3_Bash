#!/bin/bash

echo "Wpisz cyfre"
read a
i=0
while [ $i -le $a ] && [ $a -lt 10 ]
do

case $i in
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
((i=i+1))
done