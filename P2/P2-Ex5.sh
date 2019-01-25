#!/bin/bash
#Script – UF2 - P1 - Exercici5
cpos=0
for nums in $*
do
	if [ $# -gt 2 ] && [ $# -lt 9 ]
	then
	    let cpos=$cpos+$nums
	fi    
done

echo "La suma total es: $cpos"







