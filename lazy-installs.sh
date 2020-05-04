#!/bin/bash
 
sudo apt update -y && sudo apt upgrade -y
sudo apt install google-chrome-stable chrome-gnome-shell remmina steam-installer lutris -y
sudo apt install gnome-tweaks qbittorrent -y
sudo apt install virtualbox virtualbox-dkms virtualbox-ext-pack virtualbox-guest-additions-iso -y
sudo apt install vlc lollypop -y

echo ------------------------------------------------------------------
echo ---------- Essential Installed Successfully!! --------------------
echo ------------------------------------------------------------------

#Ulauncher
rm /tmp/ulauncher*.deb

wget https://github.com/Ulauncher/Ulauncher/releases/download/5.7.5/ulauncher_5.7.5_all.deb -O /tmp/ulauncher_5.7.5_all.deb
sudo dpkg -i /tmp/ulauncher_5.7.5_all.deb
sudo apt install -f y

rm /tmp/ulauncher_5.7.5_all.deb

sudo apt update -y

echo ------------------------------------------------------------------
echo ---------- --Ulauncher Installed Successfully!! ------------------
echo ------------------------------------------------------------------

#Teamviewer

rm /tmp/teamviewer_amd64.deb 

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O /tmp/teamviewer_amd64.deb
sudo dpkg -i /tmp/teamviewer_amd64.deb 
sudo apt --fix-broken install -y

rm /tmp/teamviewer_amd64.deb 

echo ------------------------------------------------------------------
echo -------------Teamviewer Installed Successfully!! -----------------
echo ------------------------------------------------------------------

#flameshot
rm /tmp/flameshot_0.6.0_bionic_x86_64.deb

wget https://github.com/lupoDharkael/flameshot/releases/download/v0.6.0/flameshot_0.6.0_bionic_x86_64.deb /tmp/flameshot_0.6.0_bionic_x86_64.deb
sudo dpkg -i /tmp/flameshot_0.6.0_bionic_x86_64.deb
sudo apt install -f y

rm /tmp/flameshot_0.6.0_bionic_x86_64.deb

sudo apt update -y

echo ------------------------------------------------------------------
echo -------------Flameshot Installed Successfully!!-------------------
echo ------------------------------------------------------------------

exit
