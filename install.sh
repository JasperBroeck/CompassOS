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
cd ..
sudo cp -r pacman.conf /etc/pacman.conf

sudo pacman -Syu

clear

echo " ########################################## "
echo " ### Bloating your system completely... ### "
echo " ########################################## "
echo ""
sleep 0.5
paru -S  flatpak freecad musescore btop steam kdenlive visual-studio-code-bin gdm gnome-text-editor gnome-disk-utility gdm hyprland hyprpaper waybar wofi firefox nautilus nano git wget curl dpkg discord minecraft-launcher balena-etcher spotify obsidian kitty hyprshot blueman ttf-font-awesome brightnessctl
flatpak install flathub io.github.shiftey.Desktop

clear

echo " ################################# "
echo " ### Setting up the configs... ### "
echo " ################################# "
echo ""
sleep 0.5
cd config
sudo cp -r hypr/ ~/.config/
sudo cp -r waybar/ ~/.config/
sudo cp -r wofi/ ~/.config/
cd ..
sudo cp -r wallpaper.jpg ~/wallpaper.jpg

clear

echo " ###################################### "
echo " ### Starting up services... ### "
echo " ###################################### "
echo ""
sleep 0.5
sudo systemctl enable gdm
sudo systemctl start gdm
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

clear

echo " ################################### "
echo " ### Rebooting and finalizing... ### "
echo " ################################### "

sleep 2

sudo reboot -h now
