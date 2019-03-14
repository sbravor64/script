#!/bin/bash
#Script – UF2 - P2 - Exercici5

sort ~/mail/* | uniq | grep "[0-9A-Za-z_\-\.]\+@.\+\.[a-z]\{2,3\}" > adreces.dat
cat adreces.dat

