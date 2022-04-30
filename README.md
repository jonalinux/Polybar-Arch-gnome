# Polybar-Arch-gnome
Polybar-Arch-gnome

![POLYBAR](https://user-images.githubusercontent.com/103053714/166112607-81fed300-a459-4ba5-8ce5-59d382e4caca.png)

# Install polybar for gnome
1. First install Polybar from https://github.com/polybar/polybar 

## Fonts
2. ll Iosevka fonts necessary for icon https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka
- font-0 = "SF Pro Display:antialias=true:pixelsize=10;2"
- font-1 = "Iosevka Nerd Font:pixelsize=12;3" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka

4. Copy the folder polybar in ~/./config
5. select polybar.desktop


# Modules
- Show user@hostname info / click-left open jgmenu (if you have)
- Packages count pacman
- Update status / click-left: install update (Prerequisites: sudo pacman -S pacman-contrib) 
- Trash info EMPTY - FULL - (VERY FULL from 5GB) /  click-left: open trash 
- Cache home & pacman package [Size of total cache in ~/.cache and pacman package cache]
- GPU nvidia-smi Usage% Temp°C (Prerequisistes: Sudo pacman -S nvidia)
- RAM + SWAP
- CPU used
- Temperature
- SSD usage 
- Redshift on/off / Scroll change temperature (Prerequisistes: Sudo pacman -S redshift)
- Bluetooth info device / click-left: open blueman setting (Prerequisistes: Sudo pacman -S blueman)
- network setting base / Wifi SSID info status / click-left: open Gnome network setting
- Backlight scroll controll brightness (Prerequisistes for scroll see https://wiki.archlinux.org/index.php/Backlight#ACPI)
- Volume Audio scroll controll / click-left: muted (Prerequisistes: pulse audio)
- Keyboard layout with Caps Lock info
- Search click-left: open Nautilus ~/
- DATE-Clock
- Powermenu click-left: poweroff click-right: Reboot
- Show Title window
- Workspace
- Battery
- Firewalld Staus / click-left: open Firewalld setting (Prerequisistes: Sudo pacman -S firewalld) ask password for controll activities evry 3h
- snappergui COUNTER FOLDER ./SNAPSHOTS / click-left: open snappergui (Prerequisistes: Sudo pacman -S snappergui / with snapshots active)



# polybar.desktop
For autostart, open the file with editor and set your username in the Exec=/home/[USER]/.config/polybar/launch.sh, put in /home/.config/autostart and /usr/share/applications 

# Polybar
GitHub polybar for docs and download https://github.com/polybar/polybar


