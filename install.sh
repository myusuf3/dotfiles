#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm ~/.vim
rm ~/.gvimrc
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.tmux.conf
rm ~/.pip/pip.conf

echo "Symlinking files"
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
ln -s ~/Github/dotfiles/vim ~/.vim
ln -s ~/Github/dotfiles/gvimrc ~/.gvimrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Github/dotfiles/gitignore ~/.gitignore
ln -s ~/Github/dotfiles/tmux ~/.tmux.conf
ln -s ~/Github/dotfiles/default-tmux.json ~/.config/themes/tmux/default.json
ln -s ~/Github/dotfiles/githelpers ~/.githelpers
ln -s ~/Github/dotfiles/hgrc ~/.hgrc
ln -s ~/Github/dotfiles/pip.conf ~/.pip/pip.conf
ln -s ~/Github/dotfiles/myusuf3.zsh-theme ~/.oh-my-zsh/themes/
echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
mv zsh-syntax-highlighting ../
echo "All done."

