#!/bin/bash

get_trash() { 
CHECK=$(du -a $HOME/.local/share/Trash/files/ | wc -l );
TRASH=$(expr "$CHECK" - 1); 
SIZE=$(du -sh $HOME/.local/share/Trash/files | awk '{ printf $1}');
EFFECTIVE_SIZE=$(du -s $HOME/.local/share/Trash/files | awk '{ printf $1}');
ALLERT=$(printf 5000000);
 }

get_trash


if (("$EFFECTIVE_SIZE" > "$ALLERT" )); then
    echo "%{F#ff5770} %{F#f2f2f2}Very Full %{F#77f2f2f2}$SIZE""B"
   elif (("$TRASH" > 0)); then
   echo "%{F#FF8B42} %{F#f2f2f2}Full %{F#77f2f2f2}$SIZE""B"
else  
   echo " %{F#44f2f2f2} %{F#77f2f2f2}Empty"      
fi 

clean_trash(){
TRASHSIZE=$( du -s ~/.local/share/Trash/files/ | awk '{ printf $1}' );
LIMIT_TRASH=$(printf 8000000);
}

clean_trash
if (("$TRASHSIZE" > "$LIMIT_TRASH")); then
rm -rf $HOME/.local/share/Trash/files/*
fi

