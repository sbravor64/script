#!/bin/bash
#Script – UF2 - P3 - Exercici1

rm -f dades/modules.description

version=$(uname -r)

if [ -d /lib/modules/$version/kernel ];
then
	echo "Sí, sí existe."
	sleep 1
	ls -R /lib/modules/$version/kernel/ | grep -E ".ko" | zenity --text-info --title="mòduls del kernel" 2> /dev/null
	ls -R /lib/modules/$version/kernel/ | grep -E ".ko" >> dades/modules.description


else
	echo "No, no existe"
fi






