#!/bin/bash

#
#Script: Skrypt do wygrywania obrazu *.img na karte microsd
#Desc:
# Argumenty:1 - sciezka do obrazu , 2 - docelowa karta microSD
# *** WYMAGANE UPRAWNIENIA SUDO ***
#
echo "Rozpoczynam nagrywanie obrazu $1 IMG na karte microSD: $2 \n Może to potrwać chwilę."
a=$1
b=$2

dd bs=4M if=$1 of=$2


echo "Skrypt zakonczyl dzialanie.  \n
Upewnij sie czy wszystko jest ok (!)."
