#!/bin/sh

brew update
brew upgrade

brew install \
  bash \
  bash-completion \
  cmake \
  git \
  htop \
  lastpass-cli \
  macvim \
  midnight-commander \
  python \
  tfswitch

brew cask install mactex-no-gui
