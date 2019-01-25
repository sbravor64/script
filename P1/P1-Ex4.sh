#!/bin/bash
clear
echo '*****************************************************'
cd $HOME/bin
ls -l > llistat.txt
mv llistat.txt mola.dat
echo "El valor retornat per l\'ultim proces, es: $?"
if [ $? = 0 ]
   then
     echo "Verdader --> La comanda ha funcionat correctament"
   else
     echo "Fals --> La comanda ho ha fet fatal i no s\'ha executat correctament"
fi
echo "Num de procés actual -->" $$
echo "Ha introduït tres paràmetres a aquest Script que són: $1, $2, $3"







