#!/usr/bin/env bash
aurhelp() {
    #git clone https://aur.archlinux.org/yay.git
    #makepkg -si --noconfirm
    pacman -S --noconfirm yay-bin
}
bluetooth() {
    pacman -S --noconfirm bluez
    pacman -S --noconfirm bluez-utils
    systemctl enable bluetooth.service
    systemctl start bluetooth.service
}
service() {
    echo -ne "
-------------------------------------------------------------------------
                    Enabling Essential Services
-------------------------------------------------------------------------
"
    systemctl enable cups.service
    echo "  Cups enabled"
    ntpd -qg
    systemctl enable ntpd.service
    echo "  NTP enabled"
    systemctl disable dhcpcd.service
    echo "  DHCP disabled"
    systemctl stop dhcpcd.service
    echo "  DHCP stopped"
    systemctl enable NetworkManager.service
    echo "  NetworkManager enabled"
}
pacman -S --noconfirm archinstall
archinstall
bluetooth
service
