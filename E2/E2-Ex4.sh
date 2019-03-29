#!/bin/bash
#Script – UF2 - E2 - Exercici4

selec=$(zenity --width=360 --height=320 --list --title "Favourites" --text "Open..." --column Fitxer-URL "CarpetaDades" "TutorialBashPDF" "Softcatala" "FSM")

ruta_treball=$HOME/dades
ruta_pdfs= $HOME/ruta fins al fitxer PDF


case $selec in
    "CarpetaDades") 
      xdg-open $ruta_treball
        Instruccions per a mostrar el PID del programa/procés
            ;;
    "TutorialBashPDF")
       xdg-open  $ruta_pdfs/fitxerpdf-que-vulguis-obrir.pdf 
        Instruccions per a mostrar el PID del programa/procés
            ;;
    "Softcatala") 
       xdg-open  Aquí hi heu d'indicar la URL  www.softcatala.org
        Instruccions per a mostrar el PID del programa/procés
            ;;
    "FSM")
       xdg-open  Aquí hi heu d'indicar la URL  www.freesoftwaremagazine.com
        Instruccions per a mostrar el PID del programa/procés
            ;;
    *) 



