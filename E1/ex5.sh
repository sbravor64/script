#!/bin/bash
#Script – UF2 - E1 - Exercici4

echo "1 ¿QUIERES COMPROVAR LA EXISTENCIA DEL FICHERO /etc/passwd? | (si o no)"

while true
do
	read OPCIO
	if [ $OPCIO = "si" ] || [ $OPCIO = "SI" ];
	then
		if [ -f /etc/passwd ];
		then
		echo "El fichero /etc/passwd, sí existe."
		break;
		else
		echo "El fichero /etc/passwd, no existe"
		break;
		fi
	elif [ $OPCIO = "no" ] || [ $OPCIO = "NO" ];
	then
		break;
	fi
done

echo "¿QUIERES COMPROVAR LA EXISTENCIA DEL DIRECTORIO ’dades’ | (si o no)?"

while true
do
	read OPCIO
	if [ $OPCIO = "si" ]  || [ $OPCIO = "SI" ];
	then
		if [ -d /$HOME/bin/script/E1/dades ];
		then
		echo "El directorio dades, sí existe."
		break;
		else
		echo "El directorio dades no existe, por lo tanto procedemos a crearlo"
		mkdir dades
		sleep 2
		echo "El directorio dades acaba de ser creado dentro del directorio ’bin’"
		break;
		fi
	elif [ $OPCIO = "no" ] || [ $OPCIO = "NO" ];
	then
		break;
	fi
done

sleep 2s
show_menus() {
echo " "
echo "---------MENÚ---------"
echo "----------------------"
echo  " Introdueix una opció"
echo "----------------------"
echo '1) Visualitzar tot el contingut del fitxer passwd amb l’ordre cat.' 
echo '2) Visualitzar-ne només les columnes senars (imparells)'
echo '3) Visualitzar-ne només les columnes parells.'
echo '4) Igual que 2) però re-enviant les dades a un fitxer de text columnes-senars.txt al directori dades.'
echo '5) Igual que 3) però ordenant alfabèticament la informació, i re-enviant-ho a un fitxer de text de sortida, al directori de dades, anomenat columnes-parells_ordenat.dat'
echo '6) Acabar i sortir.'
}

show_menus

while true
do
	read OPCIO
	case $OPCIO in
	1)
		cat /etc/passwd
		sleep 2s
		show_menus
		;;
	2)
		seq 1 2 30 > hola.txt
		cut -d ":" -f$( seq -s, 1 2 10) /etc/passwd
		sleep 2s
		show_menus
		;;
	3)
		awk -F":" '{print $2,$4,$6,$8}' /etc/passwd
		sleep 2s
		show_menus
		;;
	4)
		echo "Datos enviados al fichero de texto 'columnes-senars.txt'"
		cut -d ":" -f$( seq -s, 1 2 10) /etc/passwd > dades/columnes-senars.txt
		sleep 2s
		show_menus
		;;
	5)
		echo "Datos enviados al fichero de texto 'columnes-parells_ordenat.dat'"
		awk -F":" '{print $2,$4,$6,$8}' /etc/passwd > dades/columnes-parells_ordenat.dat
		sleep 3s
		sort dades/columnes-parells_ordenat.dat
		echo "Datos ordenados"
		sleep 2s
		show_menus
		;;
	6)
		echo "Adeu!!"
		break
		;;
  esac
done




