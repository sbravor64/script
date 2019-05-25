#!/bin/bash
#EJERCICIO 3 - EXAMEN UF2 - SCRIPTS - ANDRÉS BRAVO

oldIFS=$IFS
IFS=$'|'

#PRIMEROS PLATOS
llistaPrimersPlats=$(for i in $(cat primers-plats.txt)
do
	echo "$i"
done)

primerPlato=$(echo "$llistaPrimersPlats" | zenity --list --title "Llista de Primers Plats" --column="Primers Plats" --column="€" --print-column=ALL)

#SEGUNDOS PLATOS

llistaSegonsPlats=$(for i in $(cat segons-plats.txt)
do
	echo "$i"
done)

segundoPlato=$(echo "$llistaSegonsPlats" | zenity --list --title "Llista de Segons Plats" --column="Segons Plats" --column="€" --print-column=ALL)

#POSTRES

llistaPostres=$(for i in $(cat postres.txt | tr -d "'")
do
	echo "$i"
done)

postre=$(echo "$llistaPostres" | zenity --list --title "Llista de Segons Plats" --column="Segons Plats" --column="€" --print-column=ALL)

#MENU

echo -e "$primerPlato\n$segundoPlato\n$postre" > menu.txt

cat menu.txt | cut -d"|" -f2 > num€.txt

#SUMO EL TOTAL DE €
sum=0
while read total
do
	sum=$((sum+total))
done < num€.txt

echo "Total|$sum" >> menu.txt

menu=$(cat menu.txt | sed 's/ //g' | sed 's/|/ /g')

menuZenity=$(cat menu.txt | sed 's/ //g' | sed 's/|/ ---> /g' | sed "s|$| euros|g")
echo $menuZenity | zenity --text-info --title "LISTA DE PEDIDOS"

#HTML MENU PEDIDO POR EL CLIENTE
echo $menu > menu_html_xml.txt
echo "<!DOCTYPE html>" >> prueba.html
echo "<html>" >> prueba.html
echo "<head>" >> prueba.html
echo "<title>Menu Cliente</title>" >> prueba.html
echo "</head>" >> prueba.html
echo "<body>" >> prueba.html
echo "<h1>MENU DEL CLIENTE</h1>" >> prueba.html
echo "<table border="1" >" >> prueba.html
echo "<tr>" >> prueba.html
echo "<th>Plato</th>" >> prueba.html
echo "<th>Precio</th>" >> prueba.html
echo "</tr>" >> prueba.html
while read i
 do 
	nomPlat=$(echo $i | cut -d" " -f1)
	euro=$(echo $i | cut -d" " -f2)
	echo "<tr>" >> prueba.html
	echo "<td>$nomPlat</td>" >> prueba.html
	echo "<td>$euro</td>" >> prueba.html
	echo "</tr>" >> prueba.html

 done < menu_html_xml.txt
echo "</table>" >> prueba.html
echo "</body>" >> prueba.html
echo "</html>" >> prueba.html

#XML
echo '<?xml version="1.0" encoding="UTF-8"?>' >> prueba.xml
echo "<!---MENU RESTAURANTE-->" >> prueba.xml
echo "<menu>" >> prueba.xml
echo "<platos>" >> prueba.xml

count=1
while read i
 do 
	nomPlat=$(echo $i | cut -d" " -f1)
	euro=$(echo $i | cut -d" " -f2)

	if [ $count == 1 ]
	then
		echo "<primerplato>" >> prueba.xml
			echo "<nom>$nomPlat</nom>" >> prueba.xml
			echo "<precio>$euro</precio>" >> prueba.xml
		echo "</primerplato>" >> prueba.xml

	elif [ $count == 2 ]
	then
		echo "<segundoplato>" >> prueba.xml
			echo "<nom>$nomPlat</nom>" >> prueba.xml
			echo "<precio>$euro</precio>" >> prueba.xml
		echo "</segundoplato>" >> prueba.xml

	elif [ $count == 3 ]
	then
		echo "<postre>" >> prueba.xml
			echo "<nom>$nomPlat</nom>" >> prueba.xml
			echo "<precio>$euro</precio>" >> prueba.xml
		echo "</postre>" >> prueba.xml
	
	elif [ $count == 4 ]
	then
		echo "<total>" >> prueba.xml
			echo "<precio>$euro</precio>" >> prueba.xml
		echo "</total>" >> prueba.xml
	fi

	count=$(($count+1))

 done < menu_html_xml.txt
echo "</platos>" >> prueba.xml
echo "</menu>" >> prueba.xml


#HTML MENU COMPLETO
IFS=$' '
echo $menu > menu_html_xml.txt
echo "<!DOCTYPE html>" >> prueba_2.html
echo "<html>" >> prueba_2.html
echo "<head>" >> prueba_2.html
echo "<title>MENU</title>" >> prueba_2.html
echo "</head>" >> prueba_2.html
echo "<body>" >> prueba_2.html
echo "<h1>MENU DEL RESTAURANTE</h1>" >> prueba_2.html
echo "<table border="1">" >> prueba_2.html
echo "<tr>" >> prueba_2.html
echo "<th>Primers Plats</th>" >> prueba_2.html
echo "<th>Precio</th>" >> prueba_2.html
echo "</tr>" >> prueba_2.html
while read i
 do 
	nomPlat=$(echo $i | cut -d"|" -f1)
	euro=$(echo $i | cut -d"|" -f2)
	echo "<tr>" >> prueba_2.html
	echo "<td width="200">$nomPlat</td>" >> prueba_2.html
	echo "<td width="200">$euro</td>" >> prueba_2.html
	echo "</tr>" >> prueba_2.html

 done <<< $(cat primers-plats.txt | sed '/^$/d')

echo "<table border="1">" >> prueba_2.html
echo "<tr>" >> prueba_2.html
echo "<th>Segons Plats</th>" >> prueba_2.html
echo "<th>Precio</th>" >> prueba_2.html
echo "</tr>" >> prueba_2.html

while read i
 do 
	nomPlat=$(echo $i | cut -d"|" -f1)
	euro=$(echo $i | cut -d"|" -f2)
	echo "<tr>" >> prueba_2.html
	echo "<td width="200">$nomPlat</td>" >> prueba_2.html
	echo "<td width="200">$euro</td>" >> prueba_2.html
	echo "</tr>" >> prueba_2.html

 done <<< $(cat segons-plats.txt | sed '/^$/d')

echo "<table border="1">" >> prueba_2.html
echo "<tr>" >> prueba_2.html
echo "<th>Postres</th>" >> prueba_2.html
echo "<th>Precio</th>" >> prueba_2.html
echo "</tr>" >> prueba_2.html

while read i
 do 
	nomPlat=$(echo $i | cut -d"|" -f1)
	euro=$(echo $i | cut -d"|" -f2)
	echo "<tr>" >> prueba_2.html
	echo "<td width="200">$nomPlat</td>" >> prueba_2.html
	echo "<td width="200">$euro</td>" >> prueba_2.html
	echo "</tr>" >> prueba_2.html

 done <<< $(cat postres.txt | sed '/^$/d')

echo "</table>" >> prueba_2.html
echo "</body>" >> prueba_2.html
echo "</html>" >> prueba_2.html

#BORRO ARCHIVOS TEMPORALES
rm menu.txt num€.txt menu_html_xml.txt


