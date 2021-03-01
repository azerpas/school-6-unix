#! /bin/bash

echo "Entrez votre calcul: ";
read a ope b;
calcul(){
    case $ope in
        "+")
            echo a+b;;
        "-")
            echo a-b;;
        "*")
            echo $(($a*$b));;
        "/")
            echo a/b;;
        *)
            echo "Entrez un opérande valide";;
    esac
}
calcul