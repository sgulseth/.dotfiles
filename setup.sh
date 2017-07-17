#!/bin/bash

if [ -f ~/.zshrc ]; then
    echo "zshrc file exists. Backing up."
    mv ~/.zshrc ~/.zshrc-old
fi

if [ -f ~/.tmux.conf ]; then
    echo "tmux.conf file exists. Backing up."
    mv ~/.tmux.conf ~/.tmux.conf-old
fi

if [ -f ~/.vimrc ]; then
    echo "vimrc file exists. Backing up."
    mv ~/.vimrc ~/.vimrc-old
fi

if [ -f ~/.psqlrc ]; then
    echo "psqlrc file exists. Backing up."
    mv ~/.psqlrc ~/.psqlrc-old
fi

if [ -d ~/.tmuxinator ]; then
    echo "tmuxinator dir exists. Backing up."
    mv ~/.tmuxinator ~/.tmuxinator-old
fi

ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/tmuxinator ~/.tmuxinator
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/psql/psqlrc ~/.psqlrc

cd ~/.dotfiles/
git submodule init
git submodule update
vim +PluginInstall all
