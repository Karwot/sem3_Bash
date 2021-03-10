#!/bin/bash

echo "" > lista.html

echo "$(find /home -name "*.html" 2>/dev/null)" > lista.txt

i=0

file=lista.txt

declare -a lines

echo "<html><head></head><body style=\"background:#bbb;\"
><div class=\"myList\"><ol>" >> lista.html

while read line 
do
	lines[$i]=$line	
	echo "<li><a href=\"$line\">$line</a></li>" >> lista.html
	i=$(( i + 1 ))
done < "$file"

echo "</ol></div></body></html>" >> lista.html

rm lista.txt