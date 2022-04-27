#!/usr/bin/env bash

get_firewall() { STATUS=$( firewall-cmd --state ); }

get_firewall

if [ "$STATUS" = "running"  ]; then

     echo ""     
    
else  
     echo ""    
fi 


