#!/bin/bash
#Script – UF2 - E2 - Exercici3
# calculadora, firefox, gedit, chromium


file=$(zenity --list \
  --title="EJERCICIO 3" \
  --column="Aplicaciones" \
    "calculadora" \
    "firefox"     \
    "gedit" \
    "chromium"	)

calcC=$(ps aux | grep "calculator" | sed '/grep/d' | cut -d" " -f2)
firefoxC=$(ps aux | grep "firefox" | sed '/grep/d' | cut -d" " -f2 | head -1)
geditC=$(ps aux | grep "gedit" | sed '/grep/d' | cut -d" " -f2)
chromiumC=$(ps aux | grep "chromium" | sed '/grep/d' | cut -d" " -f2 | head -1)

if [ "$file" = "calculadora" ]; then
	if [ $calcC ]
	then
		for i in $calcC
		do
			echo "Está en ejecución"
			echo "Procedemos a cerrar la aplicación"
			sleep 2
			kill -9 $calcC
		done
	else
		echo "No está ejecutado"
		echo "Procedemos a ejecutarlo"
		sleep 2
		gnome-calculator
	fi	

elif [ "$file" = "firefox" ]; then
	if [ $firefoxC ];
	then
		echo "Está en ejecución"
		echo "Procedemos a cerrar la aplicación"
		sleep 2
		kill -9 $firefoxC
	else
		echo "No está ejecutado"
		echo "Procedemos a ejecutarlo"
		sleep 2
		firefox	
	fi

elif [ "$file" = "gedit" ]; then
	if [ $geditC ];
	then
		echo "Está en ejecución"
		echo "Procedemos a cerrar la aplicación"
		sleep 2
		kill -9 $geditC
	else
		echo "No está ejecutado"
		echo "Procedemos a ejecutarlo"
		sleep 2
		gedit	
	fi

elif [ "$file" = "chromium" ]; then
	if [ $chromiumC ];
	then
		echo "Está en ejecución"
		echo "Procedemos a cerrar la aplicación"
		sleep 2
		kill -9 $chromiumC
	else
		echo "No está ejecutado"
		echo "Procedemos a ejecutarlo"
		sleep 2
		chromium	
	fi

elif [ "$file" = $? ]; then
$file

else
exit 0

fi

