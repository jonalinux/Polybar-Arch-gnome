#!/bin/bash

get_trash() { 
TRASH=$(du -a $HOME/.local/share/Trash/files/* | wc -l ); }

get_trash


if (("$TRASH" > 200000 )); then
    echo "%{F#fc1732}%{F#f2f2f2}Very Full %{F#77f2f2f2}$TRASH"
   elif (("$TRASH" > 0)); then
   echo "%{F#FF8B42} %{F#f2f2f2}Full %{F#77f2f2f2}$TRASH"
else  
   echo "%{F#5DC0FE}%{F#f2f2f2} %{F#77f2f2f2}Empty"      
fi 


