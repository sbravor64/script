#!/bin/bash

primersplats=primers-plats.txt
file=`cat $primersplats`

PrimersPlats=$(for i in $file
do
		echo "$i"
done)

echo "$PrimersPlats" | zenity --list --title "Llista de Primers Plats"
