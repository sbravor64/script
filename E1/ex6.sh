#!/bin/bash
#Script – UF2 - E1 - Exercici6

# Estructura del fitxer de dades, que li subministrarem al script per a que les processi:
# jornada:jugador:equip_jugador:num_gols:equip_golejat
clear
if [ $# = 1 ]
then
    if [ -f $1 ]
    then
    for EQUIPO in `cat $1 | cut -f3 -d ":" | sort -u`
    do
        SUMGOLES=0
        for GOLES in `cat "$1" | grep ^.*:.*:$EQUIPO: |cut -f4 -d ":"`
        do
        let SUMGOLES=$SUMGOLES+$GOLES
        done
        echo "$EQUIPO --> $SUMGOLES gols."
    done
    else
    echo "$1 no es fitxer."
    fi
else
    echo "Número de paràmetres incorrecte."
fi






