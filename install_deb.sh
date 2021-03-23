#!/bin/bash
set -e

# it should be done in Ansible

sudo apt remove nano
sudo apt purge apport

sudo apt install pandoc vim mc gnome-tweaks diodon meld

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

#sudo add-apt-repository ppa:linuxuprising/shutter
sudo add-apt-repository ppa:phoerious/keepassxc

sudo apt install \
  bat \
  git \
  git-delta \
  gnome-clocks \
  deepin-screenshot \
  virtualenv \
  keepassxc \
  lastpass-cli \
  network-manager-l2tp network-manager-l2tp-gnome \
  texlive-full

sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

sudo add-apt-repository ppa:libratbag-piper/piper-libratbag-git
sudo apt-get install -y piper

sudo add-apt-repository ppa:solaar-unifying/ppa
sudo apt-get install -y solaar

sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $(whoami)

# unicode fonts
sudo apt-get install ttf-ancient-fonts fonts-noto fonts-symbola

# Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "stable" channel to your APT sources:
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing

curl -Lskf https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz | tar -zxvC ~/bin kubeval
