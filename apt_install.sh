#!/bin/bash

# TODO edit /etc/resolv.conf for DNS resolution before running this command
#systemctl stop systemd-resolved.service && systemctl disable systemd-resolved.service
cd

# General Apps
sudo apt install yt-dlp gelemental imagemagick gnome-tweaks

# Install Discord
# sudo apt install discord

# Android SDK & friends
#sudo apt install adb android-sdk android-sdk-build-tools android-sdk-common

# Wireshark & traffic stuff
# Try out GUI for Nmap (nmapsi4)
# # Install Discord
# sudo apt install discord

sudo apt install -y wireshark wireshark-doc termshark tshark tcpspy

# Sys Admin tools
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update
sudo apt install fastfetch tree xclip apache2
sudo apt install -y curl htop net-tools mlocate nmap elfutils ranger sshpass

# Firewall & Security stuffs
#sudo apt install firewalld checksec

# Development tools
sudo apt install -y nasm mc arduino cmake dnsenum bsdgames

# install Vim & Friends
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim fzf
sudo apt install -y vim ripgrep tmux gopls npm cargo

#Install Virtualbox
sudo apt install -y virtualbox

# Audio stuff
sudo apt install -y audacity pulseaudio

#GEF-GDB
sudo apt install gdb
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

# Install Javascript stuff
# sudo apt install npm
# sudo npm install json ; #  nativefier collects errors if json npm is not installed
# sudo npm install -g nativefier ; # Runs website as desktop application
# nativefier "https://wiki.archlinux.org/" --name "arch_Wiki" ; Builds chromium "App" of the Arch Wiki for easy access of linux documentation

# install Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# 6502 Development / Emulator
#sudo apt install cc65 fceux

# CAN communitation software
#sudo apt-get install -y libsdl2-dev libsdl2-image-dev can-utils

# SDR software
#sudo apt install -y rtl-sdr cubicsdr gnuradio gnuradio-dev

# rtl28xxu setup for cheap sdr dongle
#echo 'blacklist dvb_usb_rtl28xxu' | sudo tee – append /etc/modprobe.d/blacklist-dvb_usb_rtl28xxu.conf

# Hardware Monitoring
sudo apt install -y lm-sensors i7z hardinfo psensor

# Bettercap dependencies
#sudo apt install -y build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev

# Python stuff
sudo apt install -y python3.11 python3.11-venv python-is-python3 bpython python3-pip python3-flask
# Pip doesn't like installing through root FYI
#pip3 install pwntools sympy scapy oathtool
export PATH=$PATH:$HOME/.local/bin

# python tools helpful outside python
sudo apt install gettext uncrustify

# Circuitpython build tools
sudo add-apt-repository ppa:pybricks/ppa

# Install git tools
sudo apt install -y git gh

# Docker (check /root/.docker/config.json for privesc)
sudo apt install -y docker.io docker-doc

# Terminal stuff
sudo apt install kitty timg fish

# Zsh stuff... maybe better shell? still don't know yet.
sudo apt install zsh zsh-doc zsh-autosuggestions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Needs permissions for monitoring software
# sudo apt install -y auditd snoopy

# Ngrok setup
# curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
# | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
# && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
# | sudo tee /etc/apt/sources.list.d/ngrok.list \
# && sudo apt update \
# && sudo apt install ngrokcd ~/Downloads

# Doom Emacs setup
#sudo apt install emacs
#emacs &
#git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
#~/.config/emacs/bin/doom install

# Spacevim setup
## Should not be root when this is excecuted
# sudo curl -sLf https://spacevim.org/install.sh | bash
# curl -sLf https://spacevim.org/install.sh | bash -s -- --uninstall # To uninstall Spacevim

# Starship setup
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Install colorscripts for the terminal art
mkdir ~/Git/
cd ~/Git/
git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts
sudo make install
# sudo make uninstall # To uninstall
# zsh completion
# sudo cp completions/_colorscript /usr/share/zsh/site-functions
# Fish completion
# sudo cp completions/colorscript.fish /usr/share/fish/vendor_completions.d

# Install my repos

# Install Ghidra
#cd ~/Git
#git clone https://github.com/NationalSecurityAgency/ghidra.github
#gradle -I gradle/support/fetchDependencies.gradle
#gradle buildGhidra

# Install Radare2
#git clone https://github.com/radareorg/radare2
#radare2/sys/install.sh
# Run 'make CS_COMMIT_ARCHIVE=1' to download capstone with wget/curl instead of git

# Install Blender & Davinci Resolve
sudo apt install blender
# Davinci Dependants
# sudo apt install libssl3 ocl-icd-opencl-dev fakeroot xorriso
# Install Resolve From "https://www.blackmagicdesign.com/products/davinciresolve/"
# Extract to ~/bin/

# Fun programs for fun scripts
sudo apt install cowsay cmatrix lolcat
