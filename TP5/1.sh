#! /bin/bash

# À chaque seconde, aﬀicher le message « rien à signaler » tant que le fichier /tmp/bye n’existe pas. Lorsque ce fichier est créé, le script doit s’arrêter après avoir aﬀiché le message « fin des opérations ». 

while [!-e /tmp/bye]
do 
    echo "rien à signaler";
    sleep(1000);
done
echo "fin des opérations";
exit