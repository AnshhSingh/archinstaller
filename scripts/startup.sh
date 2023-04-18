#!/usr/bin/env bash
pacmansetup(){
    country=$(curl -4 ifconfig.co/country-iso) #sets the country
    timedatectl set-ntp true
    pacman-key --init
    pacman-key --populate archlinux
    pacman -S --noconfirm archlinux-keyring
    pacman -Sy --noconfirm base-devel git
    sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf
    pacman -S --noconfirm --needed reflector rsync grub
    cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
    echo -ne "
-------------------------------------------------------------------------
                    Setting up $country mirrors for faster downloads
-------------------------------------------------------------------------
"
reflector -a 48 -c $country -f 5 -l 20 --sort rate --save /etc/pacman.d/mirrorlist
mkdir /mnt &>/dev/null # Hiding error message if any

}
ping -c 1 -q google.com >&/dev/null;
if [ $? -eq 1 ]; then
    echo "Internet connection found,moving  forward to installation"
    pacmansetup
else
    echo "please connect to internet using wifi or ethernet first"
    
fi
