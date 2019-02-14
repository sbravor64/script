#!/bin/bash
# Exercici M01-UF2-E1-Exercici8
# Llegeix línia per línia, el contingut del fitxer oficines.txt 
# que es troba al directori dades.
# Aquest fitxer conté la informació de les oficines d'una empresa multinacional.
# Estructura del fitxer:
# ID_OFICINA:CIUTAT:CONTINENT:NUM_OFICINA:FACTURACIO:NUM_TREBALLADORS
# El script cerca: 
# 1) El nom de les ciutats i el continent a on es troben les oficines
# 2) quines són les oficines d’Amèrica (ordenades alfabèticament per nom), i 
# i en calcula el número (=quantes n’hi han) 

  fitx=dades/oficines.txt 
  echo OFICINES > dades/Exercici8.dat
  # 1) 
  awk -F ':' '{ print $2, $3 }' $fitx | zenity --list --title "Recerca" --text "Ciutats i Continents" --column "Llistat" --width="600" --height="300"
  awk -F ':' '{ print $2, $3 }' $fitx >> dades/Exercici8.dat
  # 2) Llistat alfabètic d'oficines d'Amèrica, 
  echo 'Oficines de America' >> dades/Exercici8.dat
  grep America  $fitx | cut -f 2 -d ":" | sort  >> dades/Exercici8.dat
  # En calculem el número d'oficines amb l'ordre wc (word count) 
  num=`grep America  dades/oficines.txt | cut -f 1 -d ":" | wc -w` 
  echo $num | zenity --list --title "Recerca" --text "Nombre d'Oficines" --column "Número" --width="400" --height="200"
  echo "Numero d'Oficines: $num" >> dades/Exercici8.dat  





