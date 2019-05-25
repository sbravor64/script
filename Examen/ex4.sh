#!/bin/bash

cat primers-plats.txt | sed 's/|/ /' > primers-plats-tmp.txt
p=$(zenity --list --title "Llista de Primers Plats" --column="Primers Plats" --column="€" --print-column=ALL $(tr , \\n < primers-plats-tmp.txt))

echo $p

cat segons-plats.txt | sed 's/|/ /' > segons-plats-tmp.txt
s=$(zenity --list --title "Llista de Segons Plats" --column="Segons Plats" --column="€" --print-column=ALL $(tr , \\n < segons-plats-tmp.txt))

echo $s

post=$(zenity --list --title "Llista de Segons Plats" --column="Segons Plats" --column="€" --print-column=ALL $(tr "," \\n < postres-tmp.txt))

echo $post




