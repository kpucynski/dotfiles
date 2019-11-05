#!/bin/bash

puuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")

gsettings list-recursively org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$puuid/
