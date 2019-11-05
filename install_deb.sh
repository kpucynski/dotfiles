#!/bin/bash

# it should be done in Ansible

sudo apt remove nano
sudo apt purge apport

sudo apt install pandoc vim mc gnome-tweaks diodon

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

sudo add-apt-repository ppa:linuxuprising/shutter
sudo apt-get update && sudo apt-get install shutter

sudo apt install virtualenv
sudo apt install lastpass-cli

sudo apt-get install network-manager-l2tp network-manager-l2tp-gnome

sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

sudo add-apt-repository ppa:solaar-unifying/ppa
sudo apt-get install -y solaar
