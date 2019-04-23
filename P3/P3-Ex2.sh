#!/bin/bash

# Ejercicio 2
clear

read -p "Pon el nombre del modulo que quieres buscar : " modulo
lsmod | grep $modulo

if [ $? == 0 ]; then
        echo "Existe $modulo"
else
        echo "No existe $modulo"
fi
ruta=/home/usuario/joaquin/dades/moduls.txt
echo $ruta

lsmod > $ruta

variable=$(cat $ruta | grep $modulo)

if [ $? -eq 0 ]; then
        zenity --info --width 600 --height 100 --text "Modul $modulo trobat al fitxer $ruta"
else
        zenity --info --width 600 --height 100 --text "Modul $modulo no trobat al fitxer $ruta"

fi









