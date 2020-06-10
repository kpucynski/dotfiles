#!/bin/sh

brew update
brew upgrade

brew install \
    bash \
    bash-completion \
    bat \
    cmake \
    coreutils \
    dep \
    git \
    git-delta \
    gnu-sed \
    golang \
    grep \
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
