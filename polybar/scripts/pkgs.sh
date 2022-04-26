#!/usr/bin/env bash

get_pkgs() { PKGS=$(pacman -Q | wc -l); }

get_pkgs
echo " $PKGS"


