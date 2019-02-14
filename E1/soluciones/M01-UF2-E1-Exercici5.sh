#!/bin/bash
# M01-UF2-E1-Exercici5
while true
do 
	echo "Escollir una opció, d'entre les següents"
	echo "Prem V - Visualitzar fitxer passwd"
	echo "Prem P - Visualitzar Camp Nom_Usuari amb awk"	
	echo "Prem I - Visualitzar camps Imparells amb cut"
	echo "Prem P - Visualitzar camps Parells amb awk"
	echo "Prem R - Re-enviar dades a fitxer de texte"
	echo "Prem S - Sortir"
	read -p " Introdueix una opció de les anteriors: ==>" opcio
	fitxer=$HOME/bin/dades/Ex5-resultat.txt
	touch $fitxer
	echo "OPCIÓ= $opcio"
case $opcio in
	I) 
		cut  -f 1,3,5,7  -d ":" /etc/passwd
			;;
	P) 	
		awk -F ":" '{ print $2,$4,$6 }'  /etc/passwd
			;;
	V) 
		cat /etc/passwd
			;;
	U)	
		awk -F ":" '{ print $1 }'  /etc/passwd | sort >> $fitxer
			;;
	R)	
		cat /etc/passwd  |  cut  -f 3  -d ":"  | sort >> $fitxer
			;;
	S) 
		echo Sortint
		break
		;;
	*) echo "Escull una de les opcions oferides"
		;;
esac
done
exit 0
