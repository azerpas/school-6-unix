#! /bin/bash

echo "Saisissez une valeur";
read val;
result=1
for ((i = 0; i < val; i++))
do 
    let result=$val*$result
done
echo "$val^$val";
echo $result;
