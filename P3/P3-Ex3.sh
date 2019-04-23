#!/bin/bash
#Script – UF2 - P3 - Exercici1

file=$(zenity --list \
  --title="VENTANA" \
  --column="INFORMACIÓN DEL NUCLIO DEL SISTEMA" \
    "Unitats de Disc" \
    "Arquitectura de la placa mare" \
    "Hostname"     \
    "Última informació registrada pel kernel (nucli)" \
    "Sortir"	)


if [ "$file" = "Unitats de Disc" ]; then
	dmesg | grep sd | zenity --text-info --title="Unitats de Disc" 2> /dev/null

elif [ "$file" = "Arquitectura de la placa mare" ]; then
	dmesg | grep DMI: | zenity --text-info --title="Unitats de Disc" 2> /dev/null

elif [ "$file" = "Hostname" ]; then
	dmesg | grep hostname | zenity --text-info --title="Unitats de Disc" 2> /dev/null

elif [ "$file" = "Última informació registrada pel kernel (nucli)" ]; then
	dmesg | tail | zenity --text-info --title="Unitats de Disc" 2> /dev/null

elif [ "$file" = "Sortir" ]; then
	exit 0
fi









