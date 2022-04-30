#!/usr/bin/env bash

get_cache_home() { 
CHECK=$( du -sh $HOME/.cache/ | awk '{ printf $1}' );
EFFECTIVE_SIZE=$(du -s $HOME/.cache/  | awk '{ printf $1}');
LIMIT_Cache=$(printf 2000000);

}

get_cache_pkg(){
CHECKPKGSIZE=$( du -sh /var/cache/pacman/pkg/ | awk '{ printf $1}' );
CHECKPKG=$( du -s /var/cache/pacman/pkg/ | awk '{ printf $1}' );
LIMIT_PKG=$(printf 15000000);
}



get_cache_home; get_cache_pkg
if (("$EFFECTIVE_SIZE" > "LIMIT_Cache" )); then
    rm -rf $HOME/.cache/*
  elif  (("$CHECKPKG" > "$LIMIT_PKG" )); then
    echo "%{F#c654ff}Cache ﬘ %{F#77f2f2f2}"$CHECK"B  %{F#FF8B42} %{F#77f2f2f2}$CHECKPKGSIZE"B"%{F#FF8B42} ";
    exec gnome-terminal -- /bin/sh -c "echo cleaning pkg $CHECKPKGSIZE pacman cache; sudo rm -rf /var/cache/pacman/pkg/* ; echo Done - Press enter to exit; read";
else
    echo "%{F#c654ff}Cache ﬘ %{F#77f2f2f2}"$CHECK"B  %{F#FF8B42} %{F#77f2f2f2}$CHECKPKGSIZE"B""
fi
