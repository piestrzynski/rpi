#!/bin/bash

#
#Script: Skrypt do wykonywania kopii karty microsd do obrazu IMG bez archiwum
#Desc:
# Argumenty:1 - sciezka do zasobu /dev/x, 2 - kat docelowy zrzutu /katalog/, 3 - nazwa obrazu twoja nazwa
#
#

if [ -d $2 ]

then 
 echo "Katalog docelowy istnieje"
 echo "Rozpoczynam proces tworzenia obrazu .img - To moze potrwac dluzsza chwile(!) ... \n ... \n ... \n"
else 
   echo "Brak docelowego katalogu, nastapi jego utworzenie z 750."
   mkdir $2
   chmod 750 $2
fi


a=$1
b=$2
c="kopia-img"

#tar -cf -  $a|bzip2 > $b/$c`date +%Y-%m-%d,%H:%M:%S`.tar.bz2

dd if=$1 of=$2_$c-$3-`date +%d-%m-%Y:%H:%M:%S`.img
#zip -r $b/$c_$3.zip  $1

echo "Skrypt zakonczyl dzialanie.  \n
Upewnij sie czy wszystko jest ok (!)."
