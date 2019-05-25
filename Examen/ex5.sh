#!/bin/bash

oldIFS=$IFS
IFS=$'|'

#PRIMEROS PLATOS
llistaPrimersPlats=$(for i in $(cat primers-plats.txt)
do
	echo "$i"
done)

primerPlato=$(echo "$llistaPrimersPlats" | zenity --list --title "Llista de Primers Plats" --column="Primers Plats" --column="€" --print-column=ALL)

#SEGUNDOS PLATOS

llistaSegonsPlats=$(for i in $(cat segons-plats.txt)
do
	echo "$i"
done)

segundoPlato=$(echo "$llistaSegonsPlats" | zenity --list --title "Llista de Segons Plats" --column="Segons Plats" --column="€" --print-column=ALL)

#POSTRES

llistaPostres=$(for i in $(cat postres.txt | tr -d "'")
do
	echo "$i"
done)

postre=$(echo "$llistaPostres" | zenity --list --title "Llista de Segons Plats" --column="Segons Plats" --column="€" --print-column=ALL)

#MENU

echo -e "$primerPlato\n$segundoPlato\n$postre" > menu.txt

cat menu.txt | cut -d"|" -f2 > num€.txt

#SUMO EL TOTAL DE €
sum=0
while read total
do
	sum=$((sum+total))
done < num€.txt

echo "Total: " $sum "€" >> menu.txt

cat menu.txt | zenity --text-info --title "LISTA DE PEDIDOS"

#BORRO ARCHIVOS TEMPORALES
rm menu.txt num€.txt


