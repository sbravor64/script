#!/bin/bash
#Script – UF2 - E1 - Exercici1

#opción B
cat /etc/passwd | cut -f3 -d ":" >> usuarios.txt
sort usuarios.txt
