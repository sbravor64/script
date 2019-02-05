#!/bin/bash
#Script – UF2 - E1 - Exercici4

echo  "Introdueix una opció"
echo 'Opció H - Visualitzar directoris del Home de l’Usuari actualment loguejat' 
echo 'Opció I - Visualitzar informació del compte de Usuari actualment loguejat'
echo 'Opció G - Visualitzar els grups de l’usuari actualment loguejat'
echo 'Opció S/F Sortir/Finalitzar'

while true
do
	read OPCIO
	if [ $OPCIO = "H" ]
	then
		ls -d $HOME/*/
	elif [ $OPCIO = "I" ]
	then
		id
	elif [ $OPCIO = "G" ]
	then
		usuario=$(whoami)
		groups $usuario
	elif [ $OPCIO = "S" ] || [ $OPCIO = "F" ]
	then
		break
	fi
done




