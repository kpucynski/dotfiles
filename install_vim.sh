#!/bin/bash
set -e

# install VIM plugins

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || true
vim +PluginInstall +qall

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  sudo apt install build-essential cmake python3-dev
  cd ~/.vim/bundle/YouCompleteMe
  python3 install.py --clang-completer
fi
