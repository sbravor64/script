#!/bin/bash
#Script – UF2 - E1 - Exercici1

#opción A
awk '{ print $1 }' FS=":" /etc/passwd > usuarios.txt
sort usuarios.txt
