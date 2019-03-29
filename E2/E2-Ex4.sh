#!/bin/bash
#Script – UF2 - E2 - Exercici4

selec=$(zenity --width=360 --height=320 --list --title "Favourites" --text "Open..." --column Fitxer-URL "CarpetaDades" "TutorialBashPDF" "Softcatala" "FSM")

ruta_treball=$HOME/dades
ruta_pdfs=$HOME/pdfs


case $selec in
    "CarpetaDades")
      xdg-open $ruta_treball 2>/dev/null
	echo " "
	echo "Procesos del programa:"
	ps -ef | grep "dades" | sed '/grep/d' | cut -d" " -f2
            ;;
    "TutorialBashPDF")
	xdg-open $ruta_pdfs/test.pdf 2>/dev/null
	echo " "
	echo "Procesos del programa:"
	ps -ef | grep "test.pdf" | sed '/grep/d' | cut -d" " -f2
            ;;
    "Softcatala")
	xdg-open "http://www.softcatala.org"
	echo " "
	echo "Procesos del programa:"
	ps -ef | grep "softcatala" | sed '/grep/d' | cut -d" " -f2

            ;;
    "FSM")
	xdg-open "http://www.freesoftwaremagazine.com"
	echo " "
	echo "Procesos del programa:"
	ps -ef | grep "freesoftwaremagazine" | sed '/grep/d' | cut -d" " -f2
            ;;
    *) 
	echo "Ai va la hostia Patxi!!!"
            ;;
esac
    exit 0



