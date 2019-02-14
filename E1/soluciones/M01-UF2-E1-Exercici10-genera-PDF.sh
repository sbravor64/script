#/bin/bash
#UF2-E1-Exercici10-genera-PDF.sh
#Prova de generació de Documents PDF, des de Bash

#Creacio de fitxers PDF com a sortida:
#cd $HOME/bin/dades

 #Libreoffice - Funciona
  libreoffice --convert-to "pdf" oficines.txt 
  libreoffice --convert-to "pdf" htmlgen.txt 
  libreoffice --convert-to "pdf" exercici12.odt 
  libreoffice --convert-to "pdf" exercici12.doc 
  
  #Unoconv - Funciona
  unoconv dades-P2-Ex2.txt -o dades-P2-Ex2.pdf
  unoconv dades-P2-Ex2.txt -e PageRange=1-2 -f pdf dades-P2-Ex2.pdf
  unoconv dades-P2-Ex2.txt -e PageRange=1-2 -f pdf 
  unoconv dades-P2-Ex2.txt  -f pdf 
  unoconv dades-P2-Ex2.txt -o dades-P2-Ex2.pdf
  
  #Pandoc de moment no acaba de funcionar
  #pandoc oficinas.txt -o oficinas.pdf
  #! LaTeX Error: File `lmodern.sty' not found.
  
  #Creem fitxer Postcript ps i el reconvertim a PDF
  vim llistat-fitxers.txt -c "hardcopy > example-llistat.ps | q";
  ps2pdf example.ps
  ps2pdf example-llistat.ps 
#Passar de PDF a txt

 
