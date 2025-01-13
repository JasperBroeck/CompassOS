#!/usr/bin/env bash

echo "    /######                                                                   /######   /######  "
echo "   /##__  ##                                                                 /##__  ## /##__  ## "
echo "  | ##  \__/  /######  /######/####   /######   /######   /#######  /#######| ##  \ ##| ##  \__/ "
echo "  | ##       /##__  ##| ##_  ##_  ## /##__  ## |____  ## /##_____/ /##_____/| ##  | ##|  ######  "
echo "  | ##      | ##  \ ##| ## \ ## \ ##| ##  \ ##  /#######|  ###### |  ###### | ##  | ## \____  ## "
echo "  | ##    ##| ##  | ##| ## | ## | ##| ##  | ## /##__  ## \____  ## \____  ##| ##  | ## /##  \ ## "
echo "  |  ######/|  ######/| ## | ## | ##| #######/|  ####### /#######/ /#######/|  ######/|  ######/ "
echo "   \______/  \______/ |__/ |__/ |__/| ##____/  \_______/|_______/ |_______/  \______/  \______/  "
echo "                                    | ##                                                         "
echo "                                    | ##                                                         "
echo "                                    |__/                                                         "
echo "                                                                                                 "
echo "  An OS made for creative open-sourcers. (Also for casual gamers or devs) " 

sleep 3
clear

echo " ################################# "
echo " ### Debloating your system... ### "
echo " ################################# "
echo ""
sleep 0.5
sudo pacman -Rns vim dolphin vim --noconfirm

clear

echo " ########################################## "
echo " ### Setting up the AUR and multilib... ### "
echo " ########################################## "
echo ""
sleep 0.5
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

cd ..
sudo cp -r pacman.conf /etc/pacman.conf

sudo pacman -Syu

clear

echo " ########################################## "
echo " ### Bloating your system completely... ### "
echo " ########################################## "
echo ""
sleep 0.5
paru -S  freecad musescore btop steam kdenlive visual-studio-code-bin tahoma2d gdm gnome-text-editor gnome-disk-utility gdm hyprland hyprpaper waybar wofi firefox nautilus nano git wget curl dpkg discord minecraft-launcher balena-etcher github-desktop spotify obsidian kitty hyprshot

clear

echo " ################################# "
echo " ### Setting up the configs... ### "
echo " ################################# "
echo ""
sleep 0.5
cd config
sudo cp -r hypr/ ~/.config/hypr/
sudo cp -r waybar/ ~/.config/waybar/
sudo cp -r wofi/ ~/.config/wofi/
sudo cp -r wallpaper.jpg ~/wallpaper.jpg

clear

echo " ###################################### "
echo " ### Starting up display manager... ### "
echo " ###################################### "
echo ""
sleep 0.5
sudo systemctl enable gdm
sudo systemctl start gdm --now

clear

echo " ################################### "
echo " ### Rebooting and finalizing... ### "
echo " ################################### "

sleep 2

sudo reboot -h now
