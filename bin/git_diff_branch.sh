#!/bin/bash

case $# in
    1) MASTER="origin/master"; BRANCH="$1" ;;
    2) MASTER="$1"; BRANCH="$2" ;;
    *) MASTER="origin/master"; BRANCH="origin/`git symbolic-ref --short HEAD`" ;;
esac

git pull; git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative $MASTER..$BRANCH
