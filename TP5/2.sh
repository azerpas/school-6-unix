#! /bin/bash

# Vérifier si l’utilisateur courant est administrateur (on considérera que c’est le cas s’il s’agit de root ou s’il fait partie du groupe sudo). Aﬀicher ensuite un message : “You have great power” s’il est administrateur, ou “You shall not pass!” si ce n’est pas le cas.

group=$(groups $USER | grep sudo)
if [ $USER = "root" ] || [ -n group ]
then
echo "you have great powers";
else
echo "you shall not pass";
fi