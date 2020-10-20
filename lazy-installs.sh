#!/bin/bash
 
echo ------------------------------------------------------------------
echo ------------------- Adding Repositories --------------------------
echo ------------------------------------------------------------------ 

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update -y && sudo apt upgrade -y
sudo apt install google-chrome-stable chrome-gnome-shell remmina steam-installer lutris chromium-browser gnome-tweaks deluge vlc flameshot virtualbox
virtualbox-dkms virtualbox-ext-pack virtualbox-guest-additions-iso refind spotify-client htop neofetch libglib2.0-dev audacity kdenlive libgtkglext1 lib32z1 
gstreamer1.0-libav exfat-fuse exfat-utils-y

echo ------------------------------------------------------------------
echo ---------- Essentials Installed Successfully ---------------------
echo ------------------------------------------------------------------

#Ulauncher
rm /tmp/ulauncher*.deb

wget https://github.com/Ulauncher/Ulauncher/releases/download/5.7.5/ulauncher_5.7.5_all.deb -O /tmp/ulauncher_5.7.5_all.deb
sudo dpkg -i /tmp/ulauncher_5.7.5_all.deb
sudo apt install -f y

rm /tmp/ulauncher_5.7.5_all.deb

echo ------------------------------------------------------------------
echo ------------ Ulauncher Installed Successfully --------------------
echo ------------------------------------------------------------------

#Teamviewer

rm /tmp/teamviewer_amd64.deb 

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O /tmp/teamviewer_amd64.deb
sudo dpkg -i /tmp/teamviewer_amd64.deb 
sudo apt --fix-broken install -y

rm /tmp/teamviewer_amd64.deb 

echo ------------------------------------------------------------------
echo ------------- Teamviewer Installed Successfully ------------------
echo ------------------------------------------------------------------

https://download.anydesk.com/linux/anydesk_6.0.1-1_amd64.deb

#AnyDesk

rm /tmp/anydesk_6.0.1-1_amd64.deb

wget https://download.anydesk.com/linux/anydesk_6.0.1-1_amd64.deb -O /tmp/anydesk_6.0.1-1_amd64.deb
sudo dpkg -i /tmp/anydesk_6.0.1-1_amd64.deb

rm /tmp/anydesk_6.0.1-1_amd64.deb

echo ------------------------------------------------------------------
echo ---------------- AnyDesk Installed Successfully ------------------
echo ------------------------------------------------------------------

#Cross Over

rm /tmp/crossover_20.0.0-1.deb

wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_20.0.0-1.deb -O /tmp/crossover_20.0.0-1.deb
sudo dpkg -i /tmp/crossover_20.0.0-1.deb

rm /tmp/crossover_20.0.0-1.deb

echo ------------------------------------------------------------------
echo ----------------- CrossOver Installed Successfully ---------------
echo ------------------------------------------------------------------




#Komorebi

rm /tmp/komorebi-2.1-64-bit.deb

wget https://github.com/cheesecakeufo/komorebi/releases/download/v2.1/komorebi-2.1-64-bit.deb -O /tmp/komorebi-2.1-64-bit.deb
sudo dpkg -i /tmp/komorebi-2.1-64-bit.deb

rm /tmp/komorebi-2.1-64-bit.deb

echo ------------------------------------------------------------------
echo ----------------- Komorebi Installed Successfully ---------------
echo ------------------------------------------------------------------

sudo apt autoremove -y
exit
