#Schreiben Sie ein Shell-Script mit dem Namen myquestion. 
#Dieses Script hat als Parameter den Text einer Frage, die mit Ja oder Nein beantwortet werden kann.
#Antwortet der Benutzer mit Ja, so liefert das Script den Rückgabewert 0, bei Nein wird 1 geliefert, andernfalls erscheint die Frage noch einmal.

#!/bin/bash

if [ $# -eq 0 ]; then
  echo "please enter a Question as Parameter:"
  echo "for example: ./myquestion.sh 'Frage?'"
  exit 2
fi

frage="$*"

while true; do
  read -p "§frage (Ja|Nein): " answer

  answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

  case "$answer" in
    ja|j)
        exit 0
        ;;

    nein|n)
        exit 1
        ;;

    *)
        echo "only 'ja' and 'nein' is permitted."
        ;;

  esac
done
  
