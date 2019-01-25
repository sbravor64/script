#!/bin/bash
#Script – UF2 - P1 - Exercici3


echo "-------------------------------"
echo "valor del primer parámetro: $1"
echo "valor del segundo parámetro: $2"
echo "valor del tercer parámetro: $3"
echo "valor del PID del Script: $$ "
echo "Nombre de parámetros: $* $$"

if [ $? = 0 ]
   then
     echo "0"
   else
     echo "1"
fi






