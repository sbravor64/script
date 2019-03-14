#!/bin/bash
#Script – UF2 - E2 - Exercici1


pgrep -u $USER -l
proceso=$(zenity --title="PROCESSO A FINALIZAR" --text "Ingrese el processo que desea finalizar" --entry)

kill -9 $proceso


