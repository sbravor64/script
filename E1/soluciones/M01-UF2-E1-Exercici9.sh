#/bin/bash
#Prova de generació d'un Document html, des de Bash
# Exercici M01-UF2-E1-Ex9

fitx=dades/pagina.html
if [ -f $fitx ]
then
	rm $fitx
fi
	echo "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">"  >> dades/pagina.html
	echo "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">" >> dades/pagina.html
	echo "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /><title>Prova bash i HTML</title></head>" >> dades/pagina.html
	echo "<body bgcolor=\"#D6C3D9\"><P><CENTER><h2><U>Prova bash i HTML</u></h2><hr width=\"500\" color=\"blue\"></CENTER></P><P>" >> dades/pagina.html
	echo "<form><input type=\"text\" width=30><P><input type=\"button\" value=\"Clica\"></form>" >>dades/pagina.html
	echo "</body></html>" >> dades/pagina.html

# Si volem recollir dades enviades per l'usuari via HTTP
#echo $QUERY_STRING
