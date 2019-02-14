#!/bin/bash
# Exercici M01-UF2-E1-3
# Volem que el script cridi a una funció Suma
# Que calculi la suma aritmètica de 2 números
# La funció suma està desenvolupada de 3 maneres diferents: 
#suma1: amb mecanisme propi del Shell
#suma2: amb let
#suma3: amb expr


function suma1
{
	result1=$[$1 + $2]
	echo "SUMA1 = $result1"
}
function suma2
{
	let result2=$1+$2
	echo "SUMA2 = $result2"
	}

function suma3
{
	result3=`expr $1 + $2`
	echo "SUMA3 = $result3"
}

echo -n "introdueix el primer nombre: " 
read n1
echo -n "introdueix el segon nombre: "
read n2
echo "Números: $n1 $n2"
suma1 $n1 $n2
echo " RESULTAT FUNCIO1= $result1"
suma2 $n1 $n2
echo " RESULTAT FUNCIO2= $result2"
suma3 $n1 $n2
echo " RESULTAT Funcio3= $result3"


