#!/bin/bash -x

# change double-click select characters in gnome-terminal

pid=$(dconf read /org/gnome/terminal/legacy/profiles:/default | tr -d "'")
dconf write /org/gnome/terminal/legacy/profiles:/:$pid/word-char-exceptions  '@ms "-=&#:/.?@+~_%;"'
