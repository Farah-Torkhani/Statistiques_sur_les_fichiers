#!/bin/bash

TOTALNUM=`ls -R | wc -l`
FILENUM=`find . -type f | wc -l`
DIRNUM=`find . -mindepth 1  -maxdepth 1 -type d | wc -l `
FILE_FREQ=$(expr $FILENUM / $TOTALNUM )
FILE_PERC=$(expr $FILE_FREQ \* 100 )

echo "$FILE_PERC % fichiers "
DIR_FREQ=$(expr $DIRNUM / $TOTALNUM )
DIR_PERC=$(expr DIR_FREQ \* 100 )
if [ $DIRNUM -gt 0  ]; then 
	echo "$DIR_PERC % directories " 
else 
	echo "no folders in here";
fi


