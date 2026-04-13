#!/bin/bash

rd="screenshots"
broj_zapisa=1

for zapis in "$rd"/*; do
      nd=$(basename "$zapis")
      prefix="screenshots_${broj_zapisa}_${nd}"
      mv "$zapis" "$rd/$prefix"
      echo "$prefix"
      ((broj_zapisa++))

done
