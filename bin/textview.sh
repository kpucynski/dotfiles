#!/bin/bash

filename="$1"

if [ ! -f "$filename" ] ; then
    echo $filename not found.
    exit 1
fi

extension="${filename##*.}"

case "$extension" in
    md|markdown|textile|html|rst|docbook|mediawiki|wiki|latex)
        ;;
    *)
        echo Unknow format.
        exit 1
esac

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

pandoc -s -t man $filename | man -l -
