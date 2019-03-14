#!/bin/bash
#Script – UF2 - P2 - Exercici10

nomusuari=$(zenity --text "USUARIO QUE QUIERE ENCONTRAR" --entry)

grep -E ^"$nomusuari" /etc/passwd

groups=$(cat /etc/group)


