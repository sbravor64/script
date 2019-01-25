#!/bin/bash
#Script – UF2 - P1 - Exercici5
for nums in $*
do
	if [ $# -gt 3 ] && [ $# -lt 9 ]
	then
	    cpos=$cpos$nums;
	fi    
done

echo "La suma total es: $cpos"







