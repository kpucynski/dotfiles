#!/bin/bash

while IFS= read -r -d '' file
do
  echo $file
  
  # fix header
  if [ ! "$(head -1 $file)" == "---" ]; then
  	sed -i '1s,^,---\n,' $file;
  fi;
  
  # fix trailing spaces
  sed -i 's/[ \t]\+$//' $file;
  
  # fix comments
  sed -i 's/^\([[:space:]]*\)#\([[:alpha:]]\)/\1# \2/g' $file

done < <(find $1 \( -name "*.yml" -o -name "*.yaml" \) -print0)
