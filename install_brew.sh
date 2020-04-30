#!/bin/sh

brew update
brew upgrade

brew install \
    bash \
    bash-completion \
    bat \
    cmake \
    dep \
    git \
    git-delta \
    golang \
    htop \
    jq \
    lastpass-cli \
    macvim \
    midnight-commander \
    mtr \
    python \
    tfswitch

brew cask install \
    mactex-no-gui \
    meld \
    vagrant
