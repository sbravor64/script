#!/bin/bash
#Script – UF2 - P2 - Exercici7
# Processant la informació dels Venedors i Oficines dels fitxers repventas.txt i oficines.txt
 
OLD_IFS=$IFS
IFS=$'\n'
ERROR_LEVEL=0
if [ $# -ne 1 ]
then
    echo "manca un argument"
    echo "us: ./venedorOficina.sh numeroOficina"
    ERROR_LEVEL=1
else
    VENEDORS_OFICINA=`grep "^[^:]*:[^:]*:[^:]*:$1:" repventas.txt`
    if [ -n "$VENEDORS_OFICINA" ]
    then 
        for VENEDOR in $VENEDORS_OFICINA
        do
            echo $VENEDOR |cut -f1,2,5 -d: |tr " " "_"| tr [a-z] [A-Z] >> venedorsOficina$1.txt     
        done
    fi
fi
IFS=$OLD_IFS
exit $ERROR_LEVEL



