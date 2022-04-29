# Polybar-Arch-gnome
Polybar-Arch-gnome

![Screenshot from 2022-04-28 23-58-48](https://user-images.githubusercontent.com/103053714/165861160-a85aefc5-f746-4a04-ac07-2ff723ad218c.png)
![Screenshot from 2022-04-28 23-52-57](https://user-images.githubusercontent.com/103053714/165860696-bcf5715b-3c5f-4948-88d1-6df047519f8a.png)
![Screenshot from 2022-04-29 10-31-16](https://user-images.githubusercontent.com/103053714/165919743-d6449ca4-fe8a-428e-adb8-6ed11a504d13.png)
![Screenshot from 2022-04-29 01-16-48](https://user-images.githubusercontent.com/103053714/165867435-50d964c7-b4b4-4452-9f59-455dbc383b13.png)


# Fonts 
- font-0 = "SF Pro Display:antialias=true:pixelsize=10;2"
- font-1 = "Iosevka Nerd Font:pixelsize=12;3" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka


# Modules
- info-kernel 
- Packages count pacman
- Update status / click-left: install update (Prerequisites pacman-contrib) 
- Trash info EMPTY - FULL - (VERY FULL from 5GB) /  click-left: open trash 
- GPU nvidia-smi Usage% Temp°C
- RAM + SWAP
- CPU used
- Temperature
- SSD usage 
- Redshift on/off / Scroll change temperature
- Bluetooth info device / click-left: open blueman setting
- network setting base / Wifi SSID info status / click-left: open Gnome network setting
- Backlight scroll controll brightness
- Volume Audio scroll controll / click-left: muted
- Keyboard layout with Caps Lock info
- Search click-left: open Nautilus ~/
- DATE-Clock
- Powermenu click-left: poweroff click-right: Reboot
- Show user@hostname info
- Show Title window
- Workspace
- Battery
- Firewalld Staus / click-left: open Firewalld setting
- snappergui COUNTER FOLDER ./SNAPSHOTS / click-left: open snappergui


# polybar.desktop
For autostart, open the file with editor and set your username in the Exec=/home/[USER]/.config/polybar/launch.sh, put in /home/.config/autostart and /usr/share/applications 

# Polybar
GitHub polybar for docs and download https://github.com/polybar/polybar


