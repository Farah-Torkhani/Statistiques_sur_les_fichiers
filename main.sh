#!/bin/bash
source projet.sh
if [ $# -gt 0 ]; then

while getopts vhT:t:n:N:d:m:s: options; do
        case $options in
                h)help;;
                T)taille_occupee_totale;;
               	t)taille_occupee_cachees;;
               	n)fichiers;;
               	N)nb_fichiers_nvides;;
                d)nb_f_type;;
                s)nb_vides;;
		v)auteur;;
                ?)echo "can't find $OPTARG in the list";;
        esac
done
else
echo -e "you need to insert at least one argument"
show_usage
fi

