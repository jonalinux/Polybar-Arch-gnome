#!/bin/bash


get_bluetooth() { 
device_info=$(bluetoothctl info "$device"); 
device_alias=$(echo "$device_info" | grep "Alias" | cut -d ' ' -f 2-);

}

get_bluetooth



if [ -z "$device_alias" ]; then
   echo "%{F#77f2f2f2}"
else  
   echo " %{F#77f2f2f2}$device_alias"       
fi 
 

