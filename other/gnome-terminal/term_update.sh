#!/bin/bash

puuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")
gsettings set \
org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$puuid/ \
    word-char-exceptions '@ms "-=&#:/.?@+~_%;"'

echo ==========================
echo -e "\e[1;39mWarning!\e[0m"
echo -e "This will permanently overwrite colors in selected profile - there is no undo."
echo -e "Consider creating a new profile before installing Selenized."
echo ==========================
echo "You have 10 seconds for Ctrl+c..."
sleep 10

. selenized

profile_path="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$puuid/"

# set color palette
gsettings set $profile_path palette "$PALETTE"

# set foreground, background and highlight color
gsettings set $profile_path bold-color "$BOLD"
gsettings set $profile_path background-color "$BACKGROUND"
gsettings set $profile_path foreground-color "$FOREGROUND"

# make sure the profile is set to not use theme colors
gsettings set $profile_path use-theme-colors "false"

# set highlighted color to be different from foreground color
gsettings set $profile_path bold-color-same-as-fg "false"

gsettings set $profile_path visible-name "Selenized"
