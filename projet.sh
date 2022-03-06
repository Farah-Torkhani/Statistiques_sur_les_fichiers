#!/bin/bash
help()
{
cat /home/Lufa/Desktop/mini_projet/help.txt;
}
show_usage()
{
echo "statistic_file: [-h|--help] [-T] [-t] [-n] [-N] [-d] [-m] [-s] chemin.."
}

#function pour le taille occupée totale  en ko/GO/Mo -T

taille_occupee_totale()
{
du -sh $OPTARG;du -mh $OPTARG;du -gh $OPTARG;
}

#function pour le taille occupée par fichier/rep cachées -t
taille_occupee_cachees()
{
find $OPTARG -name ".*" -exec du -gh {} \;
}

#function pour le nb fichiers non vides/lien symboliques -N

nb_fichiers_nvides()
{
find -L $OPTARG  -not -empty | wc -l
}

#function pour le  -n
fichiers()
{
find $OPTARG -size -512K -type f | wc -l ; find $OPTARG -type f -size +15M | wc -l  
}
#-d
nb_f_type()
{
find . -name "*.$OPTARG" | wc -l
}


#-s

nb_vides()
{
find $OPTARG -empty | wc -l
}

auteur()
{
echo 'version 0.0.1 Authors Farah Torkhani & Asma Bouraoui'
}
#analyse()
#{}
