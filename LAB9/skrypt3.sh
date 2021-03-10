#!/bin/bash

current=$PWD
destination=~/SO/LAB8/

cd $destination

for file in *
do
newName=$(echo $file | awk {'print tolower($0)'})
	if [ $newName != $file ] 
	then
		echo "nazwa przed zmiana:  $file"
		mv $file $newName
		echo "nazwa po zmianie: $newName"
	fi
done


cd $current

#for file in ~/SO/LAB9/*
#do

#echo $file

#done
