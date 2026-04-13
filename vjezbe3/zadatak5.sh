#!/bin/bash

putanja=$1

if [ "$#" -ne 1 ]; then
    echo "Unesite tocno jedan argument"
    exit 1
fi

if ! [[ -d "$putanja"  && -d "$putanja/.git" ]]; then
    echo "Provjera nije zadovoljena"
    exit 1
fi

if  [[ -d "$putanja"  && -d "$putanja/.git" ]]; then
     touch "$putanja/repozitorij_info.txt"
     git add repozitorij_info.txt
     git commit -m "Dodana treca zadaca"
     git log --oneline
fi


