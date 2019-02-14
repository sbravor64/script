#!/bin/bash
#M01-UF2-E1-Exercici14
# A partir de les dades del fitxer de les Oficines de l'Exercici8
# Generem el fitxer de sortida ofcines.xml

fitxin=dades/oficines-in.dat
fitxout=dades/oficines.xml
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?><oficines empresa=\"MisGases.S.L\">" > $fitxout
#Llegim les diferents files del fitxer, una per una, amb el bucle while read, fins que s'acaba el contingut del fitxer.
# Per a cada fila del fitxer llegim els 6 camps o columnes i n' inserim el valor, enmig de les etuiqy¡tes

while read linia
 do 
	id=`echo $linia | awk -F ":" '{print $1}'`
	echo "<oficina codi="$id">" >> $fitxout
	ciutat=`echo $linia | awk -F ":" '{print $2}'`
	echo "<ciutat>$ciutat</ciutat>" >> $fitxout
	conti=`echo $linia | awk -F ":" '{print $3}'`
	echo "<continent>$conti</continent>" >> $fitxout
	numofice=`echo $linia | awk -F ":" '{print $4}'`
	echo "<num_oficina>$numofice</num_oficina>" >> $fitxout
	factur=`echo $linia | awk -F ":" '{print $5}'`
	echo "<facturacio>$factur</facturacio>" >> $fitxout
	numtreb=`echo $linia | awk -F ":" '{print $6}'`
	echo "<num_treballadors>$numtreb</num_treballadors>" >> $fitxout
	echo "</oficina>" >> $fitxout
 done < $fitxin
 echo "</oficines>" >> $fitxout
 
 #ID_OFICINA:CIUTAT:CONTINENT:NUM_OFICINA:FACTURACIO:NUM_TREBALLADORS
 
#<oficina codi="">
#		<ciutat>  </ciutat>
#		<continent>  </continent>
#		<num_oficina> </num_oficina>
#		<facturacio>   </facturacio>
#		<num_treballadors>  </num_treballadors>
#	</oficina>


