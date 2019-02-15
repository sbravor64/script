#!/bin/bash
#Script – UF2 - P2 - Exercici1

echo "Llistat de tots els arxius que tinguin una "o", o una "p" o una "o" i "p" formant part del seu nom."
ls /$HOME | grep -e [op]

echo 'Llistat de tots els arxius que no comencen per "pro".'
ls /$HOME | grep -e ^[^pro]

echo 'Llistat de tots els arxius que no comencen per "a" ni per "t".'
ls /$HOME | grep ^[^at]


echo 'Llistat de tots els arxius que comencen per "a", ó "b", ó "c", ó "tes".'
ls /$HOME | grep -e ^[abc] -e ^"tes"




