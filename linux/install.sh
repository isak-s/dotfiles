#!/bin/bash

DOTFILES_DIR=~/dotfiles

sudo apt install wmctrl

sudo apt install latexmk

sudo apt-get install texlive-full

ln -sf $DOTFILES_DIR.bash_aliases ~/.bash_aliases
ln -sf $DOTFILES_DIR/linux/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig

echo "Dotfiles have been symlinked. Restart shell!"
