# Polybar-Arch-gnome
Polybar-Arch-gnome

![Screenshot from 2022-04-28 18-58-10](https://user-images.githubusercontent.com/103053714/165817245-0391f8ab-546c-471b-aacb-9cc1d5ae463f.png)

![Screenshot from 2022-04-28 18-23-30](https://user-images.githubusercontent.com/103053714/165816974-2cf8f10e-921a-42f4-9b99-6a7858e15857.png)

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
- snapper-gui


# polybar.desktop
For autostart, open the file with editor and set your username in the Exec=/home/[USER]/.config/polybar/launch.sh, put in /home/.config/autostart and /usr/share/applications 

# Polybar
GitHub polybar for docs and download https://github.com/polybar/polybar


