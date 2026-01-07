#Schreiben Sie ein Script, das mit Traps arbeitet. 
#Nach dem Starten soll immer ein eigenes Prompt angezeigt werden, das alle Eingaben entgegennimmt, aber nicht ans System weiterleitet. 
#Wenn der Benutzer „stop" oder „Stop" eingibt, soll das Programm beendet werden. 
#Wird Strg + c oder Strg + z oder Strg + \ eingegeben, wird das Programm nicht beendet, es wird lediglich eine Meldung ausgegeben.

#!/bin/bash

trap 'echo "Strg+C (SIGINT) recognized - program continue running."' SIGINT
trap 'echo "Strg+Z (SIGTSTP) recognized - programm continue running."' SIGTSTP
trap 'echo "Strg+\\ (SIGQUIT) recognized - program continue running."' SIGQUIT

echo "own mini-shell-program started."
echo "stop with 'stop' or 'Stop'."

while true; do
  read -p "cool> " input

  input=$(echo "$input")

  case "$input" in
    stop|Stop)
        exit 0
        ;;

    *)
      ;;

  esac
done
