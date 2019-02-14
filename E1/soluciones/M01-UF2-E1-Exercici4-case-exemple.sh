#!/bin/bash
#M01-UF2-E1-Exercici4.sh

#2 Exemples de case

#Exemple1
echo -n "Quina fruita t’agrada?"
read FRUIT
#FRUIT="kiwi"
case "$FRUIT" in
   "apple"|"a") echo "Apple pie is quite tasty." ;;
   "sindria"|"s") echo "Les síndries són delicioses i refrescants" ;;
   "banana"|"b") echo "I like banana nut bread." ;;
   "kiwi"|"k") echo "New Zealand is famous for kiwi." ;;
esac

echo '**********************'
#Exemple 2
while true
do
		echo  "Introdueix una opció"
		echo 'Opció H - Visualitzar directoris del Homedirectory de Usuari actualment loguejat' 
		echo 'Opció I - Visualitzar informació del compte de Usuari actualment loguejat'
		echo 'Opció G - Visualitzar els grups de lusuari actualment loguejat'
		echo 'Opció S/F Sortir/Finalitzar'
	
	read OPCIO
	case $OPCIO in
	H)
	  echo $LOGNAME
	  ;;
	I) 
	  id
	  ;;
	G) 
	  groups
	  ;;
	F|S)
	  echo SORTINT
	  break
	  ;;
	*) echo "Disculpa. No he entes la teva opció"
	  ;;
	esac
done
echo 
echo "A reveure. Que vagi be"
