#!/bin/bash
# M01-UF2-E1-Exercici4
#Menu amb echos i amb zenity per a poder obrir diferents tipus de fitxers i programes

fitx=$(zenity --width=360 --height=320 --list --title "Favourites" --text "Open..." --column Fitxer "Dades" "TutorialBashPDF" "Softcatala" "FSM")

case $fitx in
	 "Dades") 
			xdg-open `nemo /media/kimint/dades`
			;;
	 "TutorialBashPDF")
			xdg-open $HOME/fp/M01/UF2/bash-resources/tutorials-PDFs/guia-shell.pdf 
			;;
	"Softcatala") 
			xdg-open http://www.softcatala.org/
			;;
	"FSM")
			xdg-open http://www.freesoftwaremagazine.com/
			;;
	*) 
			echo "Ai va la Hostia Patxi!!!"
			exit 1
			;;
esac
    exit 0
