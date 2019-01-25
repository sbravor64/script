#!/bin/bash
#Script – UF2 - P2 - Exercici2

usuario=$(whoami)
ls /home/$usuario/** > dades.txt
read archivo
arc_enc=$(grep $archivo dades.txt)

if [ `grep $archivo dades.txt`  ]
   then	
     echo "Se ha encontrado el fichero: $archivo, en la ruta: $arc_enc"
   else
     echo "No se ha encontrado el archivo: $archivo"
fi

echo "Nom de l'usuari actual al sistema: $usuario"
echo "Nom de l'arxiu escollit: $archivo"
echo "Numero de vegades  que s'ha trobat arxius amb el mateix nom"



