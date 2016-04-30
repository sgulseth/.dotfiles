#!/bin/sh

rm -f ~/.zshrc ~/.tmux.conf ~/.vimrc

ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc

cd ~/.dotfiles/
git submodule init 
git submodule update
vim +PluginInstall all
