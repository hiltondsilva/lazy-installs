#!/bin/bash
 
sudo apt update -y && sudo apt upgrade -y
sudo apt install git google-chrome-stable chrome-gnome-shell remmina steam-installer lutris -y
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
echo ---------- Ulauncher Installed Successfully!! --------------------
echo ------------------------------------------------------------------

#Teamviewer

rm /tmp/teamviewer_i386.deb

wget https://download.teamviewer.com/download/teamviewer_i386.deb -O /tmp/teamviewer_i386.deb
sudo apt install -y libjpeg62:i386
sudo dpkg -i /tmp/teamviewer_i386.deb
sudo apt-get install -f -y

rm /tmp/teamviewer_i386.deb

sudo apt-get -f install

echo ------------------------------------------------------------------
echo ---------------Teamviewer Installed Successfully!! ---------------
echo ------------------------------------------------------------------

exit
