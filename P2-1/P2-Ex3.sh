#!/bin/bash
#Script – UF2 - P2 - Exercici3

show_menus() {
echo "A) El nostre Script buscarà només números de telèfons fixes i els mostrarà per pantalla."
echo "B) El nostre Script buscarà només números de telèfons mòbils i els mostrarà per pantalla."
echo "C) El nostre Script buscarà números de telèfons fixes i mòbils i els mostrarà per pantalla."
echo "D) SALIR / EXIT"
}

show_menus

while true
do
        read OPCIO
        if [ $OPCIO = "A" ] || [ $OPCIO = "a" ]
        then
		cat dades/* | grep -e '^9[0-9]\{8\}'

		echo "---------"
		sleep 2s
		show_menus
        elif [ $OPCIO = "B" ] || [ $OPCIO = "b" ]
        then
		cat dades/* | grep -e '^6[0-9]\{8\}'
		echo "---------"
		sleep 2s
		show_menus
        elif [ $OPCIO = "C" ] || [ $OPCIO = "c" ]
        then
		cat dades/* | grep -e '^6[0-9]\{8\}' -e '^9[0-9]\{8\}'
		echo "---------"
		sleep 2s
		show_menus
	elif [ $OPCIO = "d" ] || [ $OPCIO = "D" ]
        then
		break
        fi
done











