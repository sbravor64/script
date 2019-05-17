#!/bin/bash

ip="192.168.10.165"
usuario=$(zenity --entry --text="NOMBRE DE USUARIO")
password=$(zenity --password)
base=$(zenity --entry --text="NOMBRE DE LA BASE DE DATOS")
consulta=`(PGPASSWORD=$password psql -h $ip -U $usuario -d $base -c "\d") 2>&1`
nomBase=`(PGPASSWORD=$password psql -h $ip -U $usuario -d $base -c "\l") 2>&1`

if [ $? != 2 ];then
	echo "$consulta" | cut -d" " -f4 | sed '3d' | sed '/^$/d' | zenity --text-info --title "Lista de tablas de la base de datos $base"

else
	zenity --width=250 --height=50 --info --title "ERROR!!!" --text="No has escrito correctamente el password o usuario"

fi

#bucle para ver todas las tablas de todas las base de datos


echo "Lista de las base de datos"
for file in $(echo "$nomBase" | cut -d" " -f2 | sed '3d'  | sed '/^$/d' | sed '$d' | grep -v "template")
do
	consultas=`(PGPASSWORD=$password psql -h $ip -U $usuario -d $file -c "\d") 2>&1`
	echo "------------------------"
	echo "tablas de $file:"
	echo "$consultas" | cut -d" " -f4 | sed '3d' | sed '/^$/d'
done


#bucle para ver todas las tablas de todas las base de datos en zenity

listatablas=$(for file in $(echo "$nomBase" | cut -d" " -f2 | sed '3d'  | sed '/^$/d' | sed '$d' | grep -v "template")
do
	consultas=`(PGPASSWORD=$password psql -h $ip -U $usuario -d $file -c "\d") 2>&1`
	echo "------------------------"
	echo "tablas de $file:"
	echo "$consultas" | cut -d" " -f4 | sed '3d' | sed '/^$/d'
done)

echo "$listatablas" | zenity --text-info --title "Lista de tablas de la base de datos $base"

echo "$listatablas" >> fichero.txt

#bucle para ver todas las tablas de todas las base de datos en HTML

nomBases=$(echo "$nomBase" | cut -d" " -f2 | sed '3d'  | sed '/^$/d' | sed '$d' | grep -v "template")
listaTablas=$(echo "$consultas" | cut -d" " -f4 | sed '3d' | sed '/^$/d')



echo "<!DOCTYPE html>" >> prueba.html
echo "<html>" >> prueba.html
echo "<head>" >> prueba.html
echo "<title>Page Title</title>" >> prueba.html
echo "</head>" >> prueba.html
echo "<body>" >> prueba.html

echo "<table border="1" >" >> prueba.html
for fileh in $nomBases
 do 
	  echo "<tr>" >> prueba.html
	    echo "<td>$fileh</td>" >> prueba.html

	lista=`(PGPASSWORD=$password psql -h $ip -U $usuario -d $fileh -c "\d") 2>&1`
	listablas=$(echo "$lista" | cut -d" " -f4 | sed '3d' | sed '/^$/d')

	    echo "<td>$listablas</td>" >> prueba.html
	  echo "</tr>" >> prueba.html
 done
echo "</table>" >> prueba.html
echo "</body>" >> prueba.html
echo "</html>" >> prueba.html

