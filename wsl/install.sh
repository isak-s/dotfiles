#!/bin/bash

DOTFILES_DIR=~/dotfiles

ln -sf $DOTFILES_DIR/wsl/.profile ~/.profile
ln -sf $DOTFILES_DIR/.bash_aliases ~/.bash_aliases
ln -sf $DOTFILES_DIR/wsl/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig

echo "Dotfiles have been symlinked. Restart shell!"
