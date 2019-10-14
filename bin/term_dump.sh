#!/bin/bash -x

# dumps gnome terminal config

pid=$(dconf read /org/gnome/terminal/legacy/profiles:/default | tr -d "'")
dconf dump /org/gnome/terminal/legacy/profiles:/:$pid/
