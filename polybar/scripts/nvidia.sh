#!/usr/bin/env bash



get_gpu(){ 
TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits );
GPU=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits );
}
get_gpu

if (("$TEMP" > 75)); then
   echo "%{F#00ff6a}GPU%{F#f2f2f2} $GPU% %{F#FF8B42}$TEMP°C "
   elif (("$TEMP" > 65)); then
   echo "%{F#00ff6a}GPU%{F#f2f2f2} $GPU% %{F#77f2f2f2}$TEMP°C %{F#ffae00}"
else  
   echo "%{F#00ff6a}GPU%{F#f2f2f2} $GPU% %{F#77f2f2f2}$TEMP°C"       
fi 
