#!/bin/bash
f1=1
f2=1  
n=$1
echo -n "F(n) dla n=$1 wynosi "
   
for (( i=0; i<n; i++ )) 
do	
	f1=$f2 
	f2=$fn 
	fn=$((f1 + f2))
done


echo $fn