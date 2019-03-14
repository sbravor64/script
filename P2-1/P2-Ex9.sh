#!/bin/bash
#Script – UF2 - P2 - Exercici7

#Exemple Redireccionaments de comandes:
#1) -------------------------------------
cat `find /etc/pas* -type f` | grep -in "piferrer"
#2) -------------------------------------
find /etc/pas* -type f -exec grep  "^kim" {} \;




