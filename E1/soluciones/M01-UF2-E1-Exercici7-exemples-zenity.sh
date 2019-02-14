#!/bin/bash
#Exemples amb zenity
# Exercici M01-UF2-E1-Exercici8

echo "Notificaciò: Introdueix el teu Nom d'usuari   NOM"
NOM=`zenity --entry`
echo $NOM

echo "zenity --question"
VAR0=`zenity --question --width="300" height="125"`
echo "Valor de la variable $VAR0"

echo "zenity --calendar"
VAR6=`zenity --calendar --width="500" height="50"`
echo "Valor de la variable $VAR6"


echo "zenity --text-info --editable"
VAR1=`zenity --text-info --editable --width="300" height="125"`
echo "Valor del Text editable $VAR1"
#echo "Caixa de Text editable: $VAR1"
sleep 1

echo "Notification"
VAR4=`zenity --notification`;
echo "Notificaciò:   $VAR4"
sleep 1

echo "Password"
VAR5=`zenity --password`;
echo "Password:   $VAR5"
sleep 1

echo "Progress"
VAR2=`zenity --progress --pulsate`;echo "Barra de progrés:   $VAR2"

sleep 1

echo "Warning"
VAR3=`zenity --warning`;echo "Warning:   $VAR3"

sleep 1
echo " --list - Llista d'elements  Seleccionables"
du -hs * | sort -nr | head -n10 | zenity --list --title "Llista de Fitxers" --multiple --text "Primers 10 fitxers " --column "Fitxers" --width="500" --height="400"
Res=$(du -hs * | sort -nr | head -n10 | zenity --list --title "Llista de Fitxers" --text "Primers 10 fitxers " --multiple --column "Fitxers" --width="500" --height="400" 2> /dev/null)
#Visualitzem el nom del Fitxer escollit
echo "el nom del Fitxer escollit: $Res"

sleep 1
echo "File-Selection"
Fitx=`zenity --file-selection 2> /dev/null`;echo $Fitx;echo $Fitx  | zenity --list --title "Fitxer(s) Seleccionats" --text "Fitxersseleccionats" --column "Fitxers" --width="700" --height="200" 2> /dev/null  

Select=`zenity --list --checklist --column  "Buy"  --column  "Item"  TRUE  Apples  TRUE Oranges FALSE Pears FALSE Toothpaste`
echo $Select | zenity --text-info
echo $Select | zenity --list --title "Llista de la Compra" --text "Elements de la compra" --multiple --column "Compres" --width="500" --height="400"

