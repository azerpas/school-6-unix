#! /bin/bash
# Ce script archive un répertoire
while (true); do
    # printf "\nNom du répertoire à sauvegarder : "
    # read mydir
    mydir="$1"
    if [ -z $mydir ]; then
        printf "\nAjoutez un parametre representant le chemin absolu apres la commande"
        exit
    fi
    if [ ! -d $mydir ]; then
        printf "\n$mydir n’existe pas"
    else
        archive=$(basename $mydir)
        echo $archive
        cd $mydir
        echo "Compressing..."
        tar -cvf $archive.tar .
        if [ -e $archive.tar ]; then
            printf "\nArchive de $mydir a été créée avec succès\n"
            exit
        else
            printf "\nEchec de création d’archive de $mydir \n"
        fi
    fi
done
