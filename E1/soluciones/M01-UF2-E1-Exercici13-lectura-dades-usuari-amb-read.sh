#!/bin/bash
#Lectura de dades de l'usuari
# M01-UF2-E1-Exercici13

#Llegir dades d'una variable
read nom_var
echo $nom_var

#Llegir dades d'una variable (prompt)
read -p "Entri les seves dades" nom2_var
echo $nom2_var

#read -n
#This -n option allows the user to enter only the specific length of characters.
#It wont allow you to enter more than the given number.After reaching the length 
#you have given it automatically ends the reading mode.You again no need to press the Enter key.

echo -n "Introdueixi el seu genere i prèmer [ENTER]: "
read -n 1 genere; echo

#Llegir dades de 4 caracters d'una variable (prompt)
read -n 4 -p "Entri les seves dades"  echo $REPLY
echo $REPLY

#Llegint dades amb 3 segons de temps per a l'usuari
echo -n "Hurry up and type something! > "
if read -t 3 response; then
    echo "Great, you made it in time!"
else
    echo "Sorry, you are too slow!"
fi

#read -s
#This option -s means secret or secure whatever is used to read the sensitive data.Generally when you type entering the data it appears in the terminal.
#But with this option the text won’t appear in terminal . But the characters are read. We can use all the options specified above.
#This is mainly used to read the passwords from the keyboard.

#Sol·licitant un password
read  -s -p "Entra el teu password:"
echo $REPLY

# EXERCICI
#Press any key to continue
#
#  Waiting for the user to press any key
#    -n 1: one character is enough
#    -s  : suppress echoing the key that was pressed
#    -p  : What should be prompted
#
#
read -n 1 -s -p "Press una sola tecla per a continuar"
echo "Continuing..."

#Reading lines from a here document
#Similarly, lines can be read with read and a while loop to iterate over the lines of a here document:

while read line; do
  echo "line = $line"
done << EOF
first line
second line
third line
EOF


#Zenity - Demanant dades amb zenity
usu=$(zenity --entry --text 'Si us plau introdueixi el seu nom dusuari:') || exit 1
