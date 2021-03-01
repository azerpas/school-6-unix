#! /bin/bash

#Compter pour chaque fichier d’extension .txt présent dans le répertoire courant le nombre de lignes qui ne commencent pas par le caractère #. 
# Supprimer les fichiers qui n’en ont aucune, puis aﬀicher à la fin le nombre de fichiers supprimés et le nombre total de lignes comptées.

nbligne = 0
nbdeletedfiles = 0

for x in `ls *.txt`
do 
    let nb=$(grep -v '^\#.*' x | wc -l)
    let nbligne=$nbligne+$nb
    if [ $nb -eq 0 ]
    then 
        rm $x
        let nbdeletedfiles=$nbdeletedfiles+1
    fi
done
echo "Nombres de dossiers supprimés $nbdeletedfiles"