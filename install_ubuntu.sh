#!/bin/bash
set -e

here="$(pwd)"

# Install dotfiles

for file in "${here}"/dotfiles/common/* "${here}"/dotfiles/ubuntu/*; do
  name="$(basename "$file" .md)"
  dotname=".${name}"

  if [ -e "${HOME}"/${dotname} ] && [ ! -L "${HOME}"/${dotname} ]; then
    echo "Backing up ${dotname}"
    mv "${HOME}"/${dotname} "${HOME}"/${dotname}.orig
  fi
 
  echo "Installing ${dotname}"
  ln -sfnv ${file#$HOME/} "${HOME}/${dotname}"
done

# Install bin

mkdir ${HOME}/bin || true

for file in "$here"/bin/*; do
  name="$(basename "$file" .md)"

  if [ -e "${HOME}"/bin/${name} ] && [ ! -L "${HOME}"/bin/${name} ]; then
    echo "Backing up ${name}"
    mv "${HOME}"/bin/${name} "${HOME}"/bin/${name}.orig
  fi

  echo "Installing ${name}"
  ln -sfnv ../${file#$HOME/} "${HOME}/bin/${name}"
done

