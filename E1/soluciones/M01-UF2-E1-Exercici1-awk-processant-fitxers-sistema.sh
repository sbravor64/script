#!/bin/bash
#UF2-E1-Exercici1.sh
#Treure el contingut de la primera columna (camp) = nom d'usuari 
#del fitxer /etc/passwd ordenat per ordre alfabètic:
Fitx=/$HOME/bin/dades/fitxer-resultat.txt
echo  '*********** Awk ***********' >  $Fitx
awk -F':' '{ print $1 }' /etc/passwd | sort | uniq >>  $Fitx
echo  '********** Cut ***********' >> $Fitx 
cat /etc/passwd | cut -f 1 -d ":" >>  $Fitx
