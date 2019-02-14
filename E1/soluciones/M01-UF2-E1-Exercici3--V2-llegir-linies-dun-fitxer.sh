#/bin/bash
#UF2-E1-Exercici3.sh
# Script per a llegir línies d'un fitxer
echo "FITXER 1" 
while read line
do
  echo "line = $line"
done << EOF
Una línia
Una altra línia
Encara una altra línia
I encara una altra línia
EOF

echo "FITXER 2 - Oficinas.dat"
#
# Script per a llegir línies d'un fitxer
 
while read line
do
  echo "line = $line"
done < dades/oficinas.dat
