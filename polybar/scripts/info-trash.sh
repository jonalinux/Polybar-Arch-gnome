#!/bin/bash

get_trash() { 
CHECK=$(du -a $HOME/.local/share/Trash/files/ | wc -l );
TRASH=$(expr "$CHECK" - 1); 
SIZE=$(du -sh $HOME/.local/share/Trash/files | awk '{ printf $1}');
EFFECTIVE_SIZE=$(du -s $HOME/.local/share/Trash/files | awk '{ printf $1}');
LIMIT=$(printf 5000000);
 }

get_trash


if (("$EFFECTIVE_SIZE" > "$LIMIT" )); then
    echo "%{F#ff5770}%{F#f2f2f2}Very Full %{F#77f2f2f2}$SIZE"
   elif (("$TRASH" > 0)); then
   echo "%{F#FF8B42} %{F#f2f2f2}Full %{F#77f2f2f2}$SIZE"
else  
   echo "%{F#5DC0FE}%{F#f2f2f2}Empty %{F#77f2f2f2}"      
fi 


