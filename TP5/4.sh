#! /bin/bash 

# Demander à l’utilisateur de saisir son prénom,son nom,et sa date de naissance (par exemple en utilisant la commande read ) ; 
# puis lui aﬀicher un message de bienvenue : « Bonjour <prénom> <nom> » suivi de « vous êtes majeur » s’il a au moins 18 ans, ou « vous êtes mineur » sinon.

echo "Prénom: "
read prenom;
echo "Nom: "
read nom;
echo "Date de naissance: "
read date
annee=$(date +%Y)
anneenaissance=$(echo $date | rev | cut -c -4 | rev)
age=$(($annee-$anneenaissance))
if [ $age -ge 18 ]
then 
    echo "Bonjour $prenom $nom vous êtes majeur"
else
    echo "Bonjour $prenom $nom vous êtes mineurs"
fi