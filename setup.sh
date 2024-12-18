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

if [ ! -d ~/.antigen ]; then
    git clone https://github.com/zsh-users/antigen.git ~/.antigen
fi

mkdir -p ~/.vim
mkdir -p ~/.config/{,pgcli}

ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/tmuxinator ~/.tmuxinator
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/psql/psqlrc ~/.psqlrc
ln -s ~/.dotfiles/vim/vimrc_neocomplcache ~/.vim/.vimrc_neocomplcache
ln -s ~/.dotfiles/nvim ~/.config/nvim

rm ~/.config/pgcli/config && ln -s ~/.dotfiles/pgcli/config ~/.config/pgcli/config

cd ~/.dotfiles/
git submodule init
git submodule update
vim +PluginInstall all

if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! [ -x "$(command -v ccat)" ]; then
        brew install ccat
    fi

    if ! [ -x "$(command -v kube_ps1)" ]; then
        brew install kube-ps1
    fi

    if ! [ -x "$(command -v kubetail)" ]; then
        brew tap johanhaleby/kubetail && brew install kubetail
    fi

    if ! [ -x "$(command -v dive)" ]; then
        brew install dive
    fi

    if ! [ -x "$(command -v rg)" ]; then
        brew install rg
    fi

    if ! [ -x "$(command -v fd)" ]; then
        brew install fd
    fi
fi
