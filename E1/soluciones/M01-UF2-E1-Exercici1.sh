#!/bin/bash
# M01-UF2-E1-Exercici1

fitxer=$HOME/bin/dades/Ex1-resultat.txt
touch $fitxer
awk -F ":" '{ print $1 }'  /etc/passwd | sort > $fitxer
cat /etc/passwd  |  cut  -f 3  -d ":"  | sort >> $fitxer
