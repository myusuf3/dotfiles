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
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo "Symlinking files"
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Github/dotfiles/gitignore ~/.gitignore
ln -s ~/Github/dotfiles/githelpers ~/.githelpers

ln -s ~/Github/dotfiles/myusuf3.zsh-theme ~/.oh-my-zsh/themes/

echo "All done."

