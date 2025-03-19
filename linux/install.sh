#!/bin/bash

DOTFILES_DIR=~/dotfiles

mkdir -p ~/bin

sudo apt update

sudo apt install wmctrl

# Latex stuff

# sudo apt install latexmk

# sudo apt-get install texlive-full

# Install java
# ...

# create symbolic links
ln -sf $DOTFILES_DIR.bash_aliases ~/.bash_aliases
ln -sf $DOTFILES_DIR/linux/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig
ln -sf $DOTFILES_DIR/FunctionApp.jar ~/bin/FunctionApp.jar
ln -sf $DOTFILES_DIR/CalculatorApp.jar ~/bin/CalculatorApp.jar

export PATH="$PATH:$HOME/bin"

echo "Dotfiles have been symlinked. Restart shell!"
