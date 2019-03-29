#!/bin/bash
#Script – UF2 - E2 - Exercici2


pro_user=$(ps -ef | cut -d " " -f 1 | sort | uniq)
proceso=$(zenity --title="usuarios" --text "Deberas elegir el USUARIO del cual deseas ver sus processos" --multiple --list --column=columna $pro_user)

ps -ef | grep -e ^"$proceso"


