#!/bin/bash
#Script – UF2 - E1 - Exercici2

usuario=$(whoami)
var=$(ls -R $HOME/Documents/*)

touch ficheros.txt
touch directorios.txt

f=ficheros.txt
d=directorios.txt

for x in $var
do	
	 if [ -f $x ]
	 then
	  echo $x >> $f
	 fi
	 if [ -d $x ]
	 then
 	  echo $x >> $d
           fi 
done


