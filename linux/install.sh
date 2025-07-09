#!/bin/sh

# makes sure that all relative paths are correct.
# Otherwise the symlinks make pc go boom
path_to_repo_root=$(cd -- "$(dirname -- "$0")/.." && pwd)

packages=$(cat packages.txt)

# User bin directory for user specific binaries
mkdir -p ~/bin

sudo apt update

# If the distro uses apt
if [ -x "$(command -v apt)" ]; then

    for p in $packages; do
        sudo apt install "$p"
    done

else printf "Automatic downloads not configured for this package manager\n";

fi

# create symbolic links. Assumes bash is being used
ln -sf "$path_to_repo_root/.bash_aliases" "$HOME/.bash_aliases"
ln -sf "$path_to_repo_root/linux/.bashrc" "$HOME/.bashrc"
ln -sf "$path_to_repo_root/.gitconfig" "$HOME/.gitconfig"
ln -sf "$path_to_repo_root/FunctionApp.jar" "$HOME/bin/FunctionApp.jar"
ln -sf "$path_to_repo_root/CalculatorApp.jar" "$HOME/bin/CalculatorApp.jar"

echo "Dotfiles have been symlinked. Restart shell!"
