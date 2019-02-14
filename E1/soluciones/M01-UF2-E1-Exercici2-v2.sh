#!/bin/bash
# Exercici M01-UF2-E1-Exercici2-v2
# Volem que el script 

#Variable que conté la ruta i el nom del fitxer de texte de sortida a on guardarem les dades
Fitx1=$HOME/bin/dades/fitxers-sel.txt
Fitx2=$HOME/bin/dades/dirs-sel.txt
touch $Fitx1
touch $Fitx2
echo 'FITXERS TROBATS' > $Fitx1
echo 'DIRECTORIS EXPLORATS' > $Fitx2

desti="/media/kimint/dades/fp/M01/UF2/bash-resources/tutorials-PDFs"
#Guardem el llistat a una variable
llistat=`ls -R $desti`
echo $desti >> $Fitx2
echo '*************************************'
echo "LLISTAT QUE TREU l'ordre ls = $llistat"
echo '*************************************'
aux=""
compt=0
cd $desti
for sel in $llistat
 do		
#Controlem que es tracti d'un fitxer o d'un directori
#echo "Cada elelment: $sel" 
desti=`echo $desti | sed -e 's/[| ;:%*\!.,\[]//g' -e 's/\]//g' -e "s/'//g"`
#sel=`echo $sel | sed -e 's/ //g'`
#Detectarem el cas de subdirectoris ==> Variable comptador valdrà més de 1
if [ $compt -le 1 ]
  then
  #Detectem si és fitxer
	if [ -f $sel ] 
	 then
			echo "Fitxer: $sel"
			echo $sel >> $Fitx1
	elif  [ -d $sel ]  #Detectem si és directori
	 then
			echo "DIRECTORI: $sel"
			echo $sel >> $Fitx2
	else
	    aux=`echo $sel | sed -e 's/://g'`
		echo "RUTA polida sense els 2 Punts= $aux" 
		llistat=$aux
		let compt=$compt+1
		echo $compt
	 fi
  else
		echo $sel
		#file $llistat/$sel
		echo $sel >> $Fitx1
  fi
 done
 echo '*************************************'
 cat $Fitx1
 echo '*************************************'
 cat $Fitx2
	 
