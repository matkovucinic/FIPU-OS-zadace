#!/bin/bash

direktorij=$1

if [ "$#"  -ne 1 ]; then
   echo "Proslijedite samo jedan argument"
   exit 1
fi


function zip_html(){

  local dir="$1"
  local naziv_zipa="svi_zapisi.zip"

  if [ -d "$dir" ]; then
  
    zip -r  "$naziv_zipa" "$dir"/*

  else
    echo "Direktorij ne postoji"
    exit 1
  fi
}

zip_html "$direktorij"


