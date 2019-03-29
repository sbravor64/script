#!/bin/bash
#Script – UF2 - E2 - Exercici1


pro_user=$(pgrep -u $USER -l)
proceso=$(zenity --title="PROCESSO A FINALIZAR" --text "Deberas elegir el NÚMERO de processo que deseas finalizar" --multiple --list --column=columna $pro_user)

kill -9 $proceso
