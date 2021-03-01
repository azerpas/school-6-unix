#! /bin/bash

while [!-e /tmp/bye]
do 
    echo "rien à signaler";
    sleep(1000);
done
echo "fin des opérations";
exit