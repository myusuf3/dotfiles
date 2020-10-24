#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.zshrc
rm ~/.gitconfig
rm ~/.gitignore


echo "Install zsh tools"
brew install zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/

echo "Symlinking files"
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Github/dotfiles/gitignore ~/.gitignore

echo "All done."

