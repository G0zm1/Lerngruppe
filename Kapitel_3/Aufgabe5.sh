#Schreiben Sie ein Shell-Script, das die ersten n Files eines Ordners löscht. 
#Das Verzeichnis und die Anzahl der zu löschenden Dateien sollen als Parameter beim Aufrufen angegeben werden.

#!/bin/bash

if [ $# -eq 0 ]; then
  echo "please enter path and number of files as parameter."
  echo "for example: ~/path/to/file 2"
  exit 2
fi

path="$1"
number="$2"

if [ -d "$path" ]; then

  ls -1 "$path" | head -n "$number" | while read file; do
    rm "$path/$file"

  echo " "$file" was deleted."

else
  echo " "$path" dont exist."
  exit 2

fi
