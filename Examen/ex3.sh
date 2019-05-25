#!/bin/bash

primersplats=primers-plats.txt
file=`cat $primersplats`

PrimersPlats=$(for i in $file
do
		echo "$i" "€" | sed 's/|/ /'
done)

zPrimersPlats=$(echo "$PrimersPlats" | zenity --list --title "Llista de Primers Plats" --column="Primers Plats")


segonsplats=segons-plats.txt
file=`cat $segonsplats`

SegonsPlats=$(for i in $file
do
		echo "$i" "€" | sed 's/|/ /'
done)

zSegonsPlats=$(echo "$SegonsPlats" | zenity --list --title "Llista de Segons Plats" --column="Segons Plats")


postres=postres.txt

Postres=$(while read i
do
		echo "$i" "€" | sed 's/|/ /'
done < $postres)

zPostres=$(echo "$Postres" | zenity --list --title "Llista de Postres" --column="Postres")


echo $zPrimersPlats "|" $zSegonsPlats "|"$zPostres | zenity --width=350 --height=120 --text-info --title "MENU PEDIDO"


