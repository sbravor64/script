#!/bin/bash
# Exercici M01-UF2-E1-Ex3
# Amb el bucle while llegim d'un fitxer de texte línia per línia

#Syntax to read file line by line on a Bash Unix & Linux shell
#1.- The syntax is as follows for bash, ksh, zsh, and all other shells
#2.- while read -r line; do COMMAND; done < input.file
#3.- The -r option passed to read command prevents backslash escapes from being interpreted.
#4.- Add IFS= option before read command to prevent leading/trailing whitespace from being trimmed
#5.- while IFS= read -r line; do COMMAND_on $line; done < input.file

fitxer="$HOME/bin/dades/dades-P2-Ex2.txt"

while IFS= read -r linia
do
        # Mostra el contingut del fitxer línia a línia i ho guarda a la variable $linia 
	printf '%s\n' "$linia"
	sleep 1
done <"$fitxer"

fitxer="/etc/passwd"
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
        # display fields using f1, f2,..,f7
        printf 'Username: %s, Shell: %s, Home Dir: %s\n' "$f1" "$f7" "$f6"
done <"$fitxer"
