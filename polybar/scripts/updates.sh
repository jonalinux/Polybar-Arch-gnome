#!/usr/bin/env bash



get_total_updates() { UPDATES=$(checkupdates 2>/dev/null | wc -l); }

while true; do
    get_total_updates

  

    # when there are updates available
    # every 10 seconds another check for updates is done
    while (( UPDATES > 0 )); do
        if (( UPDATES == 1 )); then
            echo "%{F#5DC0FE}累%{F#F2f2f2} $UPDATES"
        elif (( UPDATES > 1 )); then
            echo "%{F#5DC0FE}累%{F#F2f2f2} $UPDATES"
        else
            echo "%{F#00ff6a} %{F#f2f2f2}"
        fi
        sleep 10
        get_total_updates
    done

    # when no updates are available, use a longer loop, this saves on CPU
    # and network uptime, only checking once every 30 min for new updates
    while (( UPDATES == 0 )); do
        echo "%{F#00ff6a} %{F#f2f2f2}"
        sleep 300
        get_total_updates
    done
done
