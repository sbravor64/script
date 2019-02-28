#!/bin/bash
#Script – UF2 - P2 - Exercici5

sort ~/mail/* | uniq | grep [@] > adreces.dat
cat adreces.dat
