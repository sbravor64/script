#!/bin/bash
#Script – UF2 - P1 - Exercici2

mkdir $HOME/bin/dades/{copiafitxers1,copiafitxers2}

cd $HOME/bin/dades/copiafitxers1

wget http://www.lapalanca.cat/oldweb/2000/9sep/pagines/pag{1..22}.htm

cd $HOME/bin/dades/copiafitxers2

for x in {1..22}
do
  wget http://www.lapalanca.cat/oldweb/2000/9sep/pagines/pag$x.htm
done


