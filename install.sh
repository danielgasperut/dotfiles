#!/usr/bin/env bash

echo "initializing submodules"
#git submodule init
#git submodule update

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
ln -s ~/Development/dotfiles/vimrc ~/.vimrc
ln -s ~/Development/dotfiles/zshrc ~/.zshrc
ln -s ~/Development/dotfiles/vim ~/.vim
ln -s ~/Development/dotfiles/gvimrc ~/.gvimrc
ln -s ~/Development/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Development/dotfiles/gitignore ~/.gitignore
ln -s ~/Development/dotfiles/tmux ~/.tmux.conf
ln -s ~/Development/dotfiles/githelpers ~/.githelpers
ln -s ~/Development/dotfiles/hgrc ~/.hgrc
ln -s ~/Development/dotfiles/pip.conf ~/.pip/pip.conf
ln -s ~/Development/dotfiles/myusuf3.zsh-theme ~/.oh-my-zsh/themes/
echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."

