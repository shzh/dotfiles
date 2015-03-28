#!/bin/bash
# Set up zsh if not already exists

# Set up symbolic links
DOTFILESPATH=$( cd $(dirname $0)/.. ; pwd -P )
DOTFILES=(vimrc zshrc gitconfig tmux.conf)

for dotfile in "${DOTFILES[@]}" ; do
  if [ -L ~/.$dotfile ] ; then
    rm -fv ~/.$dotfile
  elif [ -e ~/.$dotfile ] ; then
    mv -fv ~/.$dotfile ~/.$dotfile.bak
  fi
  ln -s $DOTFILESPATH/$dotfile ~/.$dotfile
done

