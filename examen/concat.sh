#! /bin/bash
# Ce script concat deux fichiers dans un troisieme

file1="$1"
file2="$2"
file3="$3"
if [ -z $file1 ] || [ -z $file2 ] || [ -z $file3 ]; then
    echo "Error Usage: concat.sh file1 file2 file3"
    exit 1
fi
if [ ! -e $file1 ] || [ ! -r $file1 ]; then
    echo "Error Usage: $file1 doesn't exists or not readable"
    exit 1
fi
if [ ! -e $file2 ] || [ ! -r $file2 ]; then
    echo "Error Usage: $file2 doesn't exists or not readable"
    exit 1
fi
if [ -e $file3 ]; then
    echo "$file3 existe deja, l'ecraser? (y/n)"
    read delete
    if [ $delete != "n" ]; then
        rm $file3
    fi
fi
cat $file1 >>$file3
cat $file2 >>$file3
