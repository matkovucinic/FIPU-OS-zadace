#!/bin/bash

niz=$1

if [ "$#" -ne 1 ]; then
     echo "Proslijedite točno 1 argument"
      exit 1
fi

if [ "$niz"  -lt 1 ] || [ "$niz" -gt 10 ]; then
     echo "Broj nije u rasponu od 1 - 10 "
     exit 1
fi

if [ "$niz"  -ge 1 ] && [ "$niz" -le 10 ]; then
     touch brojevi.txt

     for (( i=1; i<=niz; i++)); do
         echo "$i" >> brojevi.txt
     done
fi


