#!/bin/bash

get_trash() { 
TRASH=$(du -a ~/.local/share/Trash/files/* | wc -l ); 

}

get_trash


while true; do


while (( TRASH > 0 )); do
        if (( TRASH  == 1 )); then
            echo "%{F#fc1732}%{F#f2f2f2}$TRASH Files"
       elif (( TRASH  > 1 )); then
            echo "%{F#fc1732}%{F#f2f2f2}$TRASH Files"
        else
          echo "%{F#5DC0FE}%{F#f2f2f2}$TRASH Files"
      fi
      sleep 10
       get_trash
   done
    
    while (( TRASH == 0 )); do
       echo "%{F#5DC0FE}%{F#f2f2f2}$TRASH Files"
       sleep 10
       get_trash
    done
done
