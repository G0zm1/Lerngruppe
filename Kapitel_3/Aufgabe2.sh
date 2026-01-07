#Erstellen Sie ein Shell-Script mydelete, das als Parameter eine Liste von Dateien hat.
#Diese Dateien sollen nun gelöscht werden. 
#Das Shell-Script fragt aber für jede Datei, ob sie wirklich gelöscht werden soll. Nur bei der Antwort Ja wird sie gelöscht.
#Hinweis: Sie sollen hier das Shell-Script myquestion aufrufen.

#!/bin/bash

if [ $# -eq 0 ]; then
  echo "please enter the filename(s) as parameter."
  echo "for example: ./mydelete 1.txt"
  exit 2
fi

for file in "$@"; do
  if [ -f "$file" ]; then
    if ./myquestion "delete "$file"? "; then
      rm "$file"

    else
      echo " "$file" was not deleted."
      
    fi

  else 
    echo " "$file" dont exist."

  fi
done
